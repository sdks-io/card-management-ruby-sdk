# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # ErrorUserAccessError Model.
  class ErrorUserAccessError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Error Code
    # @return [String]
    attr_accessor :code

    # Description
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'Code'
      @_hash['description'] = 'Description'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        description
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code = SKIP,
                   description = SKIP)
      @code = code unless code == SKIP
      @description = description unless description == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('Code') ? hash['Code'] : SKIP
      description = hash.key?('Description') ? hash['Description'] : SKIP

      # Create object from extracted values.
      ErrorUserAccessError.new(code,
                               description)
    end
  end
end
