# Periodic Element

Represent an element from the periodic table of elements.

[![lua][lua badge]][lua website]
![Git][git badge]
![GitHub][github badge]

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

## Elements

This package contains instantiated `Element` objects in `elements.*` submodules
organized by their family for each periodic element. For instance, there's an
`elements.alkali_metal` submodule that contains `Element` objects for the alkali
metals. So in most cases it shouldn't be necessary to have to create a new object
for pre-existing elements. As of writing this, this package contains elements up
to Oganesson. Some of these element's, particularly more recently discoverd ones,
properties have yet to be fully quantified and are subject to change and possibly
being out of date in this package if they're not updated to reflect new/updated
discoveries. If that's the case feel free to submit an [issue][issues].

## Molecule & ElementArray Collections

This package also exports a `Molecule` and `ElementArray` class that provide
specialized collections for `Element` objects.

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

## License

This package uses the [MIT](./LICENSE.txt) license and is free to be used for whatever.

[issues]: https://github.com/SnapperGee/periodic-element/issues "periodic-element issues"
[lua badge]: https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white "lua"
[lua website]: https://www.lua.org/manual/5.1/ "lua"
[git badge]: https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white "Git"
[github badge]: https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white "GitHub"
