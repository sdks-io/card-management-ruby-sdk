# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CardSummaryRequest Model.
  class CardSummaryRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Filters1]
    attr_accessor :filters

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['filters'] = 'Filters'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        filters
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(filters = SKIP)
      @filters = filters unless filters == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      filters = Filters1.from_hash(hash['Filters']) if hash['Filters']

      # Create object from extracted values.
      CardSummaryRequest.new(filters)
    end
  end
end
