# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CardBundle Model.
  class CardBundle < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the Card Bundle
    # @return [String]
    attr_accessor :bundle_id

    # External system allocated Card Bundle identifier for Card Bundle.
    # @return [String]
    attr_accessor :external_bundle_id

    # DescriptionCard Bundle Description.
    # @return [String]
    attr_accessor :description

    # No of Card PAN added to the card bundle.
    # @return [Integer]
    attr_accessor :total_cards

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bundle_id'] = 'BundleId'
      @_hash['external_bundle_id'] = 'ExternalBundleId'
      @_hash['description'] = 'Description'
      @_hash['total_cards'] = 'TotalCards'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bundle_id
        external_bundle_id
        description
        total_cards
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bundle_id = SKIP, external_bundle_id = SKIP,
                   description = SKIP, total_cards = SKIP)
      @bundle_id = bundle_id unless bundle_id == SKIP
      @external_bundle_id = external_bundle_id unless external_bundle_id == SKIP
      @description = description unless description == SKIP
      @total_cards = total_cards unless total_cards == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bundle_id = hash.key?('BundleId') ? hash['BundleId'] : SKIP
      external_bundle_id =
        hash.key?('ExternalBundleId') ? hash['ExternalBundleId'] : SKIP
      description = hash.key?('Description') ? hash['Description'] : SKIP
      total_cards = hash.key?('TotalCards') ? hash['TotalCards'] : SKIP

      # Create object from extracted values.
      CardBundle.new(bundle_id,
                     external_bundle_id,
                     description,
                     total_cards)
    end
  end
end
