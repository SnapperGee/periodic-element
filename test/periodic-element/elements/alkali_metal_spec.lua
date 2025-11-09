local alkali_metals = require("periodic-element.elements.alkali_metal")

describe("alkali_metals", function ()
    it("length should return 6", function ()
        local alkali_metals_length = alkali_metals:length()
        local message = "Expected alkali_metals:length() to return  6, but got size: " .. tostring(alkali_metals_length)
        assert.are.equal(6, alkali_metals_length, message)
    end)

    it("should return non nil when when accessed via index 3", function ()
        local lithium = alkali_metals[3]
        local message = "alkali_metals[3] returned nil"
        assert.is_not_nil(lithium, message)
    end)
end)
