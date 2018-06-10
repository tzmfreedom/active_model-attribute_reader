require 'test_helper'
require 'active_model'

module ActiveModel
  class AttributeReaderTest < MiniTest::Test
    class ModelForAttributeReaderTest
      include ActiveModel::Model
      include ActiveModel::AttributeReader

      attr_reader :readable
      attr_accessor :accessable
    end

    def test_properties_assignment
      data = ModelForAttributeReaderTest.new(readable: 1, accessable: 2)

      assert_equal 1, data.readable
      assert_equal 2, data.accessable
    end
  end
end

