# Periodic Element

Represent an element from the periodic table of elements.

[![lua][lua badge]][lua website]
![Git][git badge]
![GitHub][github badge]

## Installation & Usage

This lua module can be installed as a [lua rock][lua rock]:

```bash
luarocks install periodic-element
```

Once installed as a dependency it can be imported and used:

```lua
local elements = require("periodic-element.elements")

local carbon = elements("C")
-- elements[6], elements(6), elements("carbon") would also work exactly the same

print(carbon)

--[[
Element{name="Carbon", symbol="C", number=6, mass=12.011, group=14, period=2, block='p', oxidation_states={-4, +2, +4}, electron_configuration="[He]2s²2p²"}
]]
```

## Elements Module Object/Table

This will most likely be one of the main and most used module objects of this
module. It contains the `Elements` module object which can be used to get an
`Element` object via its atomic number, symbol, or name making it very easy and
convenient to use `Element` objects.

Reference the [example above](#installation--usage) for how it can be used.

## Element

This lua package makes it possible to programmatically represent a periodic
element. It's built around the `Element` class module table that contains the
properties an element on the periodic table of element has. This includes:

- name
- symbol
- number
- mass
- group
- family
- period
- block
- oxidation states
- and electron configuration

This is the type of object returned by the exported `Elements` object. Cases of
this class being used external to this module will probably not be too common,
but an example of its usage is:

```lua
local Element = require("periodic-element.element")
local ElectronConfiguration = require("periodic-element.element.electron_configuration")
local SubshellOccupancy = require("periodic-element.element.subshell_occupancy")

local hydrogen_subshell_occupancy = SubshellOccupancy:new{
    n = 1,
    l = "s",
    electron_count = 1
}

local hydrogen_electron_configuration = ElectronConfiguration:new{
    subshell_occupancy = { hydrogen_subshell_occupancy }
}

local hydrogen = Element:new{
    name = "Hydrogen",
    symbol = "H",
    number = 1,
    mass = 1.008,
    group = 1,
    period = 1,
    block = "s",
    oxidation_states = {-1, 1},
    electron_configuration = hydrogen_electron_configuration
}
```

It should be noted that this class performs numerous validations on its
constructor arguments to make sure a "valid" (according to this lua module)
element is created. If any of these validations fail an exception is thrown. For
instance a `number` property must be between `1` and `118`, a `name` can't be
blank, a `symbol` can only be 1-2 characters, and a block can only be one of
`'s'`, `'p'`, `'d'`, or `'f'` characters or `nil`.

## Elements Module

This package contains instantiated `Element` objects in `elements.*` submodules
organized by their family for each periodic element. For instance, there's an
`elements.alkali_metal` submodule that contains `Element` objects for the alkali
metals. So in most cases it shouldn't be necessary to have to create a new object
for pre-existing elements. As of writing this, this package contains elements up
to Oganesson. Some of these element's, particularly more recently discoverd ones,
properties have yet to be fully quantified and are subject to change and possibly
being out of date in this package if they're not updated to reflect new/updated
discoveries. If that's the case feel free to submit an [issue][issues].

## Molecule & ElementSet Collections

This package also exports a `Molecule` and `ElementSet` class that provide
specialized collections for `Element` objects. The `Elements` module
object/table is actually an instance of an `ElementSet` that contains an
`Element` object for every periodic element.

An `ElementSet` will throw an exception if its attempted to be instantiated with
`Element` objects that have conflicting properties. For instance if an element
with atomic number `1` and symbol `'H'` is added to the set then an element with
atomic number `6` and symbol `'H'` is attempted to be added, then it will throw. Attempting to add a duplicate `Element` will not throw.

## Immutability

This package attempts to make things as immutable as possible so if you're
getting any errors, be sure to check the error messages and that you're not
attempting to mutate an immutable object.

## Non Standard Conventions

There are conventions regarding element classification that can sometimes vary.
For instance whether to consider elements in group 12 (Zn, Cd, Hg, Cn)
transition metals or post-transition metals. This package attempts to conform to
whichever convention is most accurate. If you feel that it does it incorrectly
in some regard, feel free to open an [issue][issues].

## Misc. Package Info

This lua module was written and intended for lua 5.1. It doesn't have any
external dependencies and doesn't use many non standard features so it will most
likely work with other later versions, but no guaranties are made to its
reliability when used with versions other than lua 5.1.

This package uses the rockspec 3.1 format.

## License

This package uses the [MIT](./LICENSE.txt) license and is free to be used for whatever.

[lua rock]: https://luarocks.org/modules/snap/periodic-element "periodic-element lua rock"
[issues]: https://github.com/SnapperGee/periodic-element/issues "periodic-element issues"
[lua badge]: https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white "lua"
[lua website]: https://www.lua.org/manual/5.1/ "lua"
[git badge]: https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white "Git"
[github badge]: https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white "GitHub"
