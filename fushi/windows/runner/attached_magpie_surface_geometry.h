#ifndef RUNNER_ATTACHED_MAGPIE_SURFACE_GEOMETRY_H_
#define RUNNER_ATTACHED_MAGPIE_SURFACE_GEOMETRY_H_

#include <windows.h>

#include <algorithm>
#include <cmath>
#include <limits>

#include "attached_text_layout.h"

// Magpie publishes a source viewport and its presentation viewport in screen
// pixels.  Attached profiles remain normalized to the complete source client;
// this helper maps one such normalized body into the visible presentation and
// clips it to the destination viewport.
namespace fushi::attached_magpie_surface_geometry {

struct Mapping {
  RECT source_client_screen{};
  RECT source_viewport_screen{};
  RECT presentation_client_screen{};
  RECT destination_viewport_screen{};
};

inline bool RectHasArea(const RECT &rect) {
  return rect.right > rect.left && rect.bottom > rect.top;
}

inline bool RectContainedIn(const RECT &inner, const RECT &outer) {
  return inner.left >= outer.left && inner.top >= outer.top &&
         inner.right <= outer.right && inner.bottom <= outer.bottom;
}

inline bool IsMappingValid(const Mapping &mapping) {
  return RectHasArea(mapping.source_client_screen) &&
         RectHasArea(mapping.source_viewport_screen) &&
         RectHasArea(mapping.presentation_client_screen) &&
         RectHasArea(mapping.destination_viewport_screen) &&
         RectContainedIn(mapping.source_viewport_screen,
                         mapping.source_client_screen) &&
         RectContainedIn(mapping.destination_viewport_screen,
                         mapping.presentation_client_screen);
}

inline bool RoundToLong(double value, LONG *rounded) {
  if (rounded == nullptr || !std::isfinite(value) ||
      value < static_cast<double>(std::numeric_limits<LONG>::min()) ||
      value > static_cast<double>(std::numeric_limits<LONG>::max())) {
    return false;
  }
  *rounded = static_cast<LONG>(std::llround(value));
  return true;
}

inline bool ResolveSourceBodyRect(
    const RECT &source_client,
    const fushi::attached_text_layout::NormalizedRect &normalized_body,
    RECT *source_body_screen) {
  if (source_body_screen == nullptr || !RectHasArea(source_client) ||
      !fushi::attached_text_layout::IsNormalizedRectValid(normalized_body)) {
    return false;
  }
  const RECT body =
      fushi::attached_text_layout::ResolveBodyRect(source_client,
                                                   normalized_body);
  if (!RectHasArea(body) || !RectContainedIn(body, source_client))
    return false;
  *source_body_screen = body;
  return true;
}

inline bool MapSourceRectToDestination(const Mapping &mapping,
                                       const RECT &source_rect,
                                       RECT *destination_rect) {
  if (destination_rect == nullptr || !IsMappingValid(mapping) ||
      !RectHasArea(source_rect) ||
      !RectContainedIn(source_rect, mapping.source_client_screen)) {
    return false;
  }

  const double viewport_width = static_cast<double>(
      mapping.source_viewport_screen.right -
      mapping.source_viewport_screen.left);
  const double viewport_height = static_cast<double>(
      mapping.source_viewport_screen.bottom -
      mapping.source_viewport_screen.top);
  const double destination_width = static_cast<double>(
      mapping.destination_viewport_screen.right -
      mapping.destination_viewport_screen.left);
  const double destination_height = static_cast<double>(
      mapping.destination_viewport_screen.bottom -
      mapping.destination_viewport_screen.top);
  const auto map_x = [&](double value) {
    return static_cast<double>(mapping.destination_viewport_screen.left) +
           (value - static_cast<double>(mapping.source_viewport_screen.left)) *
               destination_width / viewport_width;
  };
  const auto map_y = [&](double value) {
    return static_cast<double>(mapping.destination_viewport_screen.top) +
           (value - static_cast<double>(mapping.source_viewport_screen.top)) *
               destination_height / viewport_height;
  };

  RECT mapped{};
  if (!RoundToLong(map_x(static_cast<double>(source_rect.left)),
                   &mapped.left) ||
      !RoundToLong(map_y(static_cast<double>(source_rect.top)),
                   &mapped.top) ||
      !RoundToLong(map_x(static_cast<double>(source_rect.right)),
                   &mapped.right) ||
      !RoundToLong(map_y(static_cast<double>(source_rect.bottom)),
                   &mapped.bottom) ||
      !RectHasArea(mapped)) {
    return false;
  }
  *destination_rect = mapped;
  return true;
}

inline bool ClipRectTo(const RECT &rect, const RECT &clip, RECT *clipped) {
  if (clipped == nullptr || !RectHasArea(rect) || !RectHasArea(clip))
    return false;
  const RECT result{std::max(rect.left, clip.left),
                    std::max(rect.top, clip.top),
                    std::min(rect.right, clip.right),
                    std::min(rect.bottom, clip.bottom)};
  if (!RectHasArea(result))
    return false;
  *clipped = result;
  return true;
}

inline bool ResolveVisibleBody(
    const Mapping &mapping,
    const fushi::attached_text_layout::NormalizedRect &normalized_body,
    RECT *visible_body_screen) {
  if (visible_body_screen == nullptr ||
      !IsMappingValid(mapping) ||
      !fushi::attached_text_layout::IsNormalizedRectValid(normalized_body)) {
    return false;
  }

  RECT source_body{};
  if (!ResolveSourceBodyRect(mapping.source_client_screen, normalized_body,
                             &source_body)) {
    return false;
  }
  RECT mapped{};
  if (!MapSourceRectToDestination(mapping, source_body, &mapped) ||
      !ClipRectTo(mapped, mapping.destination_viewport_screen, &mapped)) {
    return false;
  }
  *visible_body_screen = mapped;
  return true;
}

}  // namespace fushi::attached_magpie_surface_geometry

#endif  // RUNNER_ATTACHED_MAGPIE_SURFACE_GEOMETRY_H_
