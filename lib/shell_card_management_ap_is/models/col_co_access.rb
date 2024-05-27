# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # ColCoAccess Model.
  class ColCoAccess < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Collecting company ID.
    # @return [String]
    attr_accessor :col_co_id

    # Collecting company code.
    # @return [String]
    attr_accessor :col_co_code

    # Collecting company’s Country name. ex: United Kingdom
    # @return [String]
    attr_accessor :col_co_country_name

    # Issuing Country Number.
    #  ex: 032 - Czech Republic
    # @return [String]
    attr_accessor :issuing_country_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_country_name'] = 'ColCoCountryName'
      @_hash['issuing_country_number'] = 'IssuingCountryNumber'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        col_co_id
        col_co_code
        col_co_country_name
        issuing_country_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        col_co_id
        col_co_code
        col_co_country_name
        issuing_country_number
      ]
    end

    def initialize(col_co_id = SKIP,
                   col_co_code = SKIP,
                   col_co_country_name = SKIP,
                   issuing_country_number = SKIP)
      @col_co_id = col_co_id unless col_co_id == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_country_name = col_co_country_name unless col_co_country_name == SKIP
      @issuing_country_number = issuing_country_number unless issuing_country_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_country_name =
        hash.key?('ColCoCountryName') ? hash['ColCoCountryName'] : SKIP
      issuing_country_number =
        hash.key?('IssuingCountryNumber') ? hash['IssuingCountryNumber'] : SKIP

      # Create object from extracted values.
      ColCoAccess.new(col_co_id,
                      col_co_code,
                      col_co_country_name,
                      issuing_country_number)
    end
  end
end
