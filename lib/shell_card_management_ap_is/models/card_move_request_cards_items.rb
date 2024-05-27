# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CardMoveRequestCardsItems Model.
  class CardMoveRequestCardsItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :account_number

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :account_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :pan

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :card_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_number'] = 'AccountNumber'
      @_hash['account_id'] = 'AccountId'
      @_hash['pan'] = 'PAN'
      @_hash['card_id'] = 'CardId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_number
        account_id
        pan
        card_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(account_number = SKIP,
                   account_id = SKIP,
                   pan = SKIP,
                   card_id = SKIP)
      @account_number = account_number unless account_number == SKIP
      @account_id = account_id unless account_id == SKIP
      @pan = pan unless pan == SKIP
      @card_id = card_id unless card_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      pan = hash.key?('PAN') ? hash['PAN'] : SKIP
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP

      # Create object from extracted values.
      CardMoveRequestCardsItems.new(account_number,
                                    account_id,
                                    pan,
                                    card_id)
    end
  end
end
