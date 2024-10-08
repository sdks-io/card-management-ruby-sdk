# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # UpdateCardGroupResponseMoveCardReferencesItems Model.
  class UpdateCardGroupResponseMoveCardReferencesItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Card Id of the card.
    # Example: 123
    # @return [Integer]
    attr_accessor :card_id

    # PAN of the card.
    # Example: 7002051123456789145
    # @return [String]
    attr_accessor :pan

    # Reference number for tracking of update status request of the specific
    # card.
    # @return [Integer]
    attr_accessor :reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_id'] = 'CardId'
      @_hash['pan'] = 'PAN'
      @_hash['reference'] = 'Reference'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_id
        pan
        reference
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        card_id
        pan
        reference
      ]
    end

    def initialize(card_id = SKIP, pan = SKIP, reference = SKIP)
      @card_id = card_id unless card_id == SKIP
      @pan = pan unless pan == SKIP
      @reference = reference unless reference == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP
      pan = hash.key?('PAN') ? hash['PAN'] : SKIP
      reference = hash.key?('Reference') ? hash['Reference'] : SKIP

      # Create object from extracted values.
      UpdateCardGroupResponseMoveCardReferencesItems.new(card_id,
                                                         pan,
                                                         reference)
    end
  end
end
