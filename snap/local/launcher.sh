#!/bin/sh

WAYLAND_OPTS=""

if [ -n "$WAYLAND_DISPLAY" ] && [ -z "$DISABLE_WAYLAND" ]; then
  WAYLAND_OPTS="--enable-features=UseOzonePlatform --ozone-platform-hint=auto"
fi

exec "$SNAP/opt/Mattermost/mattermost-desktop" --no-sandbox --disable-seccomp-filter-sandbox --disable-features=GlobalShortcutsPortal $WAYLAND_OPTS "$@"
