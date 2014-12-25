#!/bin/bash
if [ $# -eq 0 ]; then
  LEVELS=levels/**/*.pz
else
  LEVELS=$*
fi
mkdir -p build
cat rules.pz world.pz $LEVELS > build/game.pz
