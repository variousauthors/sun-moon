#!/bin/bash
if [ $# -eq 0 ]; then
  LEVELS=levels/**/*.pz
else
  LEVELS=$*
fi
mkdir -p build
sed -s '$G' rules.pz world.pz $LEVELS > build/game.pz
