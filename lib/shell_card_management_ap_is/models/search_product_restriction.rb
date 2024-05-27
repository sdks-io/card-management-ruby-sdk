# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # SearchProductRestriction Model.
  class SearchProductRestriction < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Array[ProductAllOf0]]
    attr_accessor :products

    # TODO: Write general description for this method
    # @return [Array[ProductGroup]]
    attr_accessor :product_groups

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['products'] = 'Products'
      @_hash['product_groups'] = 'ProductGroups'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        products
        product_groups
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(products = SKIP,
                   product_groups = SKIP)
      @products = products unless products == SKIP
      @product_groups = product_groups unless product_groups == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      products = nil
      unless hash['Products'].nil?
        products = []
        hash['Products'].each do |structure|
          products << (ProductAllOf0.from_hash(structure) if structure)
        end
      end

      products = SKIP unless hash.key?('Products')
      # Parameter is an array, so we need to iterate through it
      product_groups = nil
      unless hash['ProductGroups'].nil?
        product_groups = []
        hash['ProductGroups'].each do |structure|
          product_groups << (ProductGroup.from_hash(structure) if structure)
        end
      end

      product_groups = SKIP unless hash.key?('ProductGroups')

      # Create object from extracted values.
      SearchProductRestriction.new(products,
                                   product_groups)
    end
  end
end
