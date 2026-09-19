// Release builds keep these assertions live: this executable is a build gate.
#undef NDEBUG

#include "../attached_magpie_surface_geometry.h"

#include <cassert>
#include <iostream>

namespace {

using fushi::attached_magpie_surface_geometry::Mapping;
using fushi::attached_magpie_surface_geometry::ClipRectTo;
using fushi::attached_magpie_surface_geometry::MapSourceRectToDestination;
using fushi::attached_magpie_surface_geometry::ResolveVisibleBody;
using NormalizedRect = fushi::attached_text_layout::NormalizedRect;

bool SameRect(const RECT &left, const RECT &right) {
  return left.left == right.left && left.top == right.top &&
         left.right == right.right && left.bottom == right.bottom;
}

Mapping IdentityMapping() {
  const RECT client{100, 200, 1100, 1000};
  return Mapping{client, client, client, client};
}

void ExpectBody(const Mapping &mapping, const NormalizedRect &body,
                const RECT &expected) {
  RECT actual{};
  assert(ResolveVisibleBody(mapping, body, &actual));
  assert(SameRect(actual, expected));
}

void ExpectRejected(const Mapping &mapping, const NormalizedRect &body) {
  RECT actual{7, 8, 9, 10};
  assert(!ResolveVisibleBody(mapping, body, &actual));
  assert(SameRect(actual, RECT{7, 8, 9, 10}));
}

}  // namespace

int main() {
  ExpectBody(IdentityMapping(), NormalizedRect{0.1, 0.25, 0.4, 0.5},
             RECT{200, 400, 600, 800});

  const Mapping cropped{
      RECT{0, 0, 1000, 1000},
      RECT{100, 100, 900, 900},
      RECT{200, 100, 1800, 1700},
      RECT{400, 300, 1600, 1500},
  };
  // The source body is mapped through the cropped source viewport and then
  // clipped to DestRect; it is not stretched from the complete client.
  ExpectBody(cropped, NormalizedRect{0.0, 0.0, 0.2, 0.2},
             RECT{400, 300, 550, 450});
  ExpectBody(cropped, NormalizedRect{0.05, 0.05, 0.2, 0.2},
             RECT{400, 300, 625, 525});

  // Runtime clusters are built in source-body pixels, then transformed and
  // clipped by the same mapping as the body itself.
  RECT mapped_cluster{};
  assert(MapSourceRectToDestination(cropped, RECT{0, 0, 200, 200},
                                    &mapped_cluster));
  assert(SameRect(mapped_cluster, RECT{250, 150, 550, 450}));
  RECT clipped_cluster{};
  assert(ClipRectTo(mapped_cluster, cropped.destination_viewport_screen,
                    &clipped_cluster));
  assert(SameRect(clipped_cluster, RECT{400, 300, 550, 450}));
  assert(!MapSourceRectToDestination(cropped, RECT{-1, 0, 200, 200},
                                     &mapped_cluster));

  // A negative-origin source monitor and unequal x/y scaling must preserve
  // both axes independently; presentation pixels do not use the source DPI.
  const Mapping anisotropic{
      RECT{-1200, -300, -200, 500}, RECT{-1100, -200, -300, 400},
      RECT{0, 0, 1920, 1080}, RECT{100, 50, 1700, 950}};
  assert(MapSourceRectToDestination(anisotropic,
                                    RECT{-1000, 0, -800, 100}, &mapped_cluster));
  assert(SameRect(mapped_cluster, RECT{300, 350, 700, 500}));

  // A body wholly outside SrcRect cannot produce a catch surface.
  ExpectRejected(cropped, NormalizedRect{0.0, 0.0, 0.05, 0.05});

  Mapping source_outside = cropped;
  source_outside.source_viewport_screen = RECT{-1, 100, 900, 900};
  ExpectRejected(source_outside, NormalizedRect{0.1, 0.1, 0.2, 0.2});

  Mapping destination_outside = cropped;
  destination_outside.destination_viewport_screen = RECT{400, 300, 1801, 1500};
  ExpectRejected(destination_outside, NormalizedRect{0.1, 0.1, 0.2, 0.2});

  Mapping degenerate = cropped;
  degenerate.source_viewport_screen = RECT{100, 100, 100, 900};
  ExpectRejected(degenerate, NormalizedRect{0.1, 0.1, 0.2, 0.2});
  ExpectRejected(cropped, NormalizedRect{0.0, 0.0, 0.0, 0.2});

  std::cout << "attached Magpie surface geometry passed\n";
  return 0;
}
