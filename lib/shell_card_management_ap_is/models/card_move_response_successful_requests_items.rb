# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CardMoveResponseSuccessfulRequestsItems Model.
  class CardMoveResponseSuccessfulRequestsItems < BaseModel
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

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :move_card_reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_number'] = 'AccountNumber'
      @_hash['account_id'] = 'AccountId'
      @_hash['pan'] = 'PAN'
      @_hash['card_id'] = 'CardId'
      @_hash['move_card_reference'] = 'MoveCardReference'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_number
        account_id
        pan
        card_id
        move_card_reference
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        account_number
        account_id
        pan
        card_id
        move_card_reference
      ]
    end

    def initialize(account_number = SKIP, account_id = SKIP, pan = SKIP,
                   card_id = SKIP, move_card_reference = SKIP)
      @account_number = account_number unless account_number == SKIP
      @account_id = account_id unless account_id == SKIP
      @pan = pan unless pan == SKIP
      @card_id = card_id unless card_id == SKIP
      @move_card_reference = move_card_reference unless move_card_reference == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      pan = hash.key?('PAN') ? hash['PAN'] : SKIP
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP
      move_card_reference =
        hash.key?('MoveCardReference') ? hash['MoveCardReference'] : SKIP

      # Create object from extracted values.
      CardMoveResponseSuccessfulRequestsItems.new(account_number,
                                                  account_id,
                                                  pan,
                                                  card_id,
                                                  move_card_reference)
    end
  end
end
