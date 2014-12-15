sun-moon
========

This is a little puzzlescript.

### Contributing ###

In order to edit and test the game, you will need to open the [puzzlescript editor][0] in a browser,
and then copy/paste the contents of `rules.pz` and `world.pz` into that editor. The use of
`.pz` in the file names is purely a convention, meant to distinguish the puzzlescript files
from any other files that might end up in here.

When you are done editing the puzzlescript, make sure to copy/paste the entire game from
the puzzlescript editor back into these two files. `world.pz` should always contain only
the ascii maps. This is for ease of editing in VI later on (where I can do block copy,
instead of having to do line by line copy).

### RULES ###

0. the goal can exist on a tile or in a wall

1. ferrying
   when one agent pushes a block that is another agent, across a space

2. Arranging the level

3. Digging
   ferry into a solid object, puts the character inside a wall in order
   to open the wall

[0]: http://www.puzzlescript.net/editor.html
