# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # NetworkRestriction Model.
  class NetworkRestriction < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ISO 3166-1 Numeric-3 code of the country where the network restriction is
    # applied.
    # Example: 826 for United Kingdom.
    # @return [String]
    attr_accessor :country

    # A list of Gateway network codes, typically 7 or 10 digits.
    # Example: 0002003250
    # @return [Array[String]]
    attr_accessor :networks

    # Flag indicates whether the profile is inclusive or exclusive.
    # Example: False - (inclusive), i.e. the “Networks” property lists the
    # networks in which the transaction will be allowed.
    # True - (exclusive), i.e. the “Networks” property lists the networks in
    # which the transactions will be declined.
    # @return [TrueClass | FalseClass]
    attr_accessor :exclusive

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country'] = 'Country'
      @_hash['networks'] = 'Networks'
      @_hash['exclusive'] = 'Exclusive'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        country
        networks
        exclusive
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(country = SKIP, networks = SKIP, exclusive = SKIP)
      @country = country unless country == SKIP
      @networks = networks unless networks == SKIP
      @exclusive = exclusive unless exclusive == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country = hash.key?('Country') ? hash['Country'] : SKIP
      networks = hash.key?('Networks') ? hash['Networks'] : SKIP
      exclusive = hash.key?('Exclusive') ? hash['Exclusive'] : SKIP

      # Create object from extracted values.
      NetworkRestriction.new(country,
                             networks,
                             exclusive)
    end
  end
end
