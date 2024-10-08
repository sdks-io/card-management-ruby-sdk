# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # PurchaseCategories Model.
  class PurchaseCategories < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Purchase category Id
    # @return [Integer]
    attr_accessor :id

    # Purchase category code
    # Example: 0,1, 2 etc.
    # Full list below:
    # 0 - All Fuels (without VP) and Lubricants
    # 1 - Fuel Save only
    # 2 - Fuel Save and Lubricants
    # 3 - No Restrictions
    # 4 - VP and Fuel Save
    # 5 - Diesel ONLY
    # 6 - Diesel and Lubricants
    # 7 - VP and Lubricants
    # 8 - VP and Fuel Save and Lubricants
    # @return [String]
    attr_accessor :code

    # Purchase category name 
    # Example: Fuel Save Only
    # Full list below:
    # 0 - All Fuels (without VP) and Lubricants
    # 1 - Fuel Save only
    # 2 - Fuel Save and Lubricants
    # 3 - No Restrictions
    # 4 - VP and Fuel Save
    # 5 - Diesel ONLY
    # 6 - Diesel and Lubricants
    # 7 - VP and Lubricants
    # 8 - VP and Fuel Save and Lubricants
    # @return [String]
    attr_accessor :name

    # If True then PurchaseCategory can be used while submitting new order cards
    # requests.
    # If false this PurchaseCategory will not be used for Ordering Cards.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_visible

    # List of Default product groups
    # @return [String]
    attr_accessor :product_groups

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'Id'
      @_hash['code'] = 'Code'
      @_hash['name'] = 'Name'
      @_hash['is_visible'] = 'IsVisible'
      @_hash['product_groups'] = 'ProductGroups'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        code
        name
        is_visible
        product_groups
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = SKIP, code = SKIP, name = SKIP, is_visible = SKIP,
                   product_groups = SKIP)
      @id = id unless id == SKIP
      @code = code unless code == SKIP
      @name = name unless name == SKIP
      @is_visible = is_visible unless is_visible == SKIP
      @product_groups = product_groups unless product_groups == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('Id') ? hash['Id'] : SKIP
      code = hash.key?('Code') ? hash['Code'] : SKIP
      name = hash.key?('Name') ? hash['Name'] : SKIP
      is_visible = hash.key?('IsVisible') ? hash['IsVisible'] : SKIP
      product_groups = hash.key?('ProductGroups') ? hash['ProductGroups'] : SKIP

      # Create object from extracted values.
      PurchaseCategories.new(id,
                             code,
                             name,
                             is_visible,
                             product_groups)
    end
  end
end
