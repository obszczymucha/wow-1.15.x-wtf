# Overview
We'll be writing a script that will re-create a profile configuration for a
given character, based off an existing profile for another given base
character.

Directory-based functionality is implemented already. We will focus on creating
a new script (possibly lua or Rust) that will perform the remaining changes.

The remaining requirement is to make sure that all *.lua files in a given
directory contain exact copies of configuration entries based off a given base
character in that file, for a new character. For example, if an example.lua
file contains the following code and base character Obszczymucha, new charcter
Tachikoma:
```lua
["profileKeys"] = {
["Obszczymucha - Spineshatter"] = "DefaultObszczymucha",
},
```
then the expected change would be:
```lua
["profileKeys"] = {
["Obszczymucha - Spineshatter"] = "DefaultObszczymucha",
["Tachikoma - Spineshatter"] = "DefaultTachikoma",
},
```

Note that the structure of the lua files must still conform to valid lua syntax.
Also, there might be other changes in one file.

# Steps
1. Read new-char.sh to understand the structure of the main script.
2. Implement a lua script that will read each file and iterate through all keys
   and values. It will then serialize the file into a separate file (without
   changes).
3. Then write another lua script that will validate the contents of both files
   by comparing all keys with pairs() and anything else that is necessary.
4. Test this on a few files until the serialization works.
5. We will then add cloning of the entries by loading a file into lua and
   iterating through the keys. If it finds a key which contains base character
   name, it should clone it with the name replaced. The same applies for values.

For the purpose of this activity we'll use:
 - account name: 808531110#1
 - realm name: Spineshatter
 - base character name: Obszczymucha
 - new charcter name: Tachikoma
