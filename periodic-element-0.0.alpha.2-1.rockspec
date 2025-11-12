rockspec_format = "3.1"
package = "periodic-element"
version = "0.0.alpha.2-1"
source = {
    url = "git+https://github.com/SnapperGee/periodic-element",
    tag = "0.0.alpha.2-1"
}
description = {
    summary = "Represent an element from the periodic table of elements.",
    detailed = [[
        The lua periodic-element module provides a class to programmatically
        represent an element object from the periodic table of elements. As of
        writing this, all periodic elements have instantiated objects this
        module exports so having to create one shouldn't be needed.

        The Elements object is most likely going to be one of the main and most
        used objects exported by this module. It's capable of using an element's
        atomic number, symbol, or name to return an Element object.

        This package also provides a Molecule and ElementSet class which offers
        specialized collections for Element objects.

        This module employs an immutable by default architecture so all objects
        it exports and created from its classes are immutable (or intended to be
        as immutable as possible).
    ]],
    homepage = "https://github.com/SnapperGee/periodic-element",
    issues_url = "https://github.com/SnapperGee/periodic-element/issues",
    maintainer = "Snapper Gee <XxSnapperGeexX@gmail.com>",
    license = "MIT",
    labels = {"chemistry", "periodic", "element", "periodic-table", "periodic-table-of-elements", "periodic-element"},
}
test_dependencies = {
    "busted ~> 2.2",
    "luacov ~> 0.16"
}
dependencies = {
    "lua ~> 5.1",
    "argparse ~> 0.7"
}
