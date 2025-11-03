rockspec_format = "3.0"
package = "periodic-element"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/SnapperGee/periodic-element",
   tag = "1.0.0-1"
}
description = {
   summary = "Represent an element from the periodic table of elements.",
   detailed = [[
        The lua periodic-element module provides a class to programmatically
        represent an element object from the periodic table of elements. As of
        writing this, all periodic elements have instantiated objects this
        module exports so having to create one shouldn't be needed.

        This package also provides a `molecule` class which offers a specialized
        collection for element objects.

        This package employs an immutable by default architecture so all objects
        and objects created from its classes are immutable.
    ]],
   homepage = "https://github.com/SnapperGee/periodic-element",
   issues_url = "https://github.com/SnapperGee/periodic-element/issues",
   maintainer = "Snapper Gee <XxSnapperGeexX@gmail.com>",
   license = "MIT",
   labels = {"chemistry", "periodic", "element", "periodic-table", "periodic-table-of-elements", "periodic-element"},
}
dependencies = {
   "lua ~> 5.1"
}
