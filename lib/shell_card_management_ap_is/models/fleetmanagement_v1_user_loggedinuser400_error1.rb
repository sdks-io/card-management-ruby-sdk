# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # FleetmanagementV1UserLoggedinuser400Error1 Model.
  class FleetmanagementV1UserLoggedinuser400Error1 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Fault]
    attr_accessor :fault

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['fault'] = 'fault'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        fault
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(fault = SKIP)
      @fault = fault unless fault == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      fault = Fault.from_hash(hash['fault']) if hash['fault']

      # Create object from extracted values.
      FleetmanagementV1UserLoggedinuser400Error1.new(fault)
    end
  end
end
