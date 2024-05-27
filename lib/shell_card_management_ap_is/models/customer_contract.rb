# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CustomerContract Model.
  class CustomerContract < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Partner Id in e-TM system
    # @return [String]
    attr_accessor :partner_id

    # Partner Name in e-TM system
    # @return [String]
    attr_accessor :partner_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['partner_id'] = 'PartnerId'
      @_hash['partner_name'] = 'PartnerName'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        partner_id
        partner_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        partner_id
        partner_name
      ]
    end

    def initialize(partner_id = SKIP,
                   partner_name = SKIP)
      @partner_id = partner_id unless partner_id == SKIP
      @partner_name = partner_name unless partner_name == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      partner_id = hash.key?('PartnerId') ? hash['PartnerId'] : SKIP
      partner_name = hash.key?('PartnerName') ? hash['PartnerName'] : SKIP

      # Create object from extracted values.
      CustomerContract.new(partner_id,
                           partner_name)
    end
  end
end
