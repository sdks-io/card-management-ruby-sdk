# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Error object
  class DefaultErrorFault < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Error Description
    # @return [String]
    attr_accessor :faultstring

    # Details about the error
    # @return [DefaultErrorFaultDetail]
    attr_accessor :detail

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['faultstring'] = 'faultstring'
      @_hash['detail'] = 'detail'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        faultstring
        detail
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(faultstring = SKIP,
                   detail = SKIP)
      @faultstring = faultstring unless faultstring == SKIP
      @detail = detail unless detail == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      faultstring = hash.key?('faultstring') ? hash['faultstring'] : SKIP
      detail = DefaultErrorFaultDetail.from_hash(hash['detail']) if hash['detail']

      # Create object from extracted values.
      DefaultErrorFault.new(faultstring,
                            detail)
    end
  end
end
