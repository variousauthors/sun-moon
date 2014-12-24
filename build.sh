#!/bin/bash
if [ $# -eq 0 ]; then
  LEVELS=levels/**/*.pz
else
  LEVELS=$*
fi
cat rules.pz world.pz $LEVELS > build/game.pz
