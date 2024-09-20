# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # AutoRenewCardResponseDataItems Model.
  class AutoRenewCardResponseDataItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # CardId and PAN of the card. ;( Semicolon is used as delimiter.
    # @return [Integer]
    attr_accessor :auto_renew_reference_id

    # Reference number for each individual auto renew card in the order.
    # @return [String]
    attr_accessor :card_id_and_pan

    # PANID of the card
    # @return [Float]
    attr_accessor :panid

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['auto_renew_reference_id'] = 'AutoRenewReferenceId'
      @_hash['card_id_and_pan'] = 'CardIdAndPAN'
      @_hash['panid'] = 'PANID'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        auto_renew_reference_id
        card_id_and_pan
        panid
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        auto_renew_reference_id
        card_id_and_pan
        panid
      ]
    end

    def initialize(auto_renew_reference_id = SKIP, card_id_and_pan = SKIP,
                   panid = SKIP)
      @auto_renew_reference_id = auto_renew_reference_id unless auto_renew_reference_id == SKIP
      @card_id_and_pan = card_id_and_pan unless card_id_and_pan == SKIP
      @panid = panid unless panid == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      auto_renew_reference_id =
        hash.key?('AutoRenewReferenceId') ? hash['AutoRenewReferenceId'] : SKIP
      card_id_and_pan = hash.key?('CardIdAndPAN') ? hash['CardIdAndPAN'] : SKIP
      panid = hash.key?('PANID') ? hash['PANID'] : SKIP

      # Create object from extracted values.
      AutoRenewCardResponseDataItems.new(auto_renew_reference_id,
                                         card_id_and_pan,
                                         panid)
    end
  end
end
