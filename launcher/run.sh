#!/bin/sh
# Launch Horizon launcher with persistent homes next to the binary.
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
BIN="$DIR/target/release/horizon-launcher"
if [ ! -x "$BIN" ]; then
  BIN="$DIR/horizon-launcher"
fi
BASE="$DIR/.horizon-data"
export HORIZON_LAUNCHER_HOME="${HORIZON_LAUNCHER_HOME:-$BASE/launcher}"
export HORIZON_HOME="${HORIZON_HOME:-$BASE/game}"
mkdir -p "$HORIZON_LAUNCHER_HOME" "$HORIZON_HOME"
export XDG_DATA_HOME="$HORIZON_LAUNCHER_HOME/data"
export XDG_CONFIG_HOME="$HORIZON_LAUNCHER_HOME/config"
export HORIZON_LAUNCHER_NO_SELF_UPDATE="${HORIZON_LAUNCHER_NO_SELF_UPDATE:-1}"
unset HORIZON_NO_AUDIO
exec "$BIN" "$@"
