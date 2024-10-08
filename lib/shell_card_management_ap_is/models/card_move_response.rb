# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CardMoveResponse Model.
  class CardMoveResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :move_card_request_reference

    # TODO: Write general description for this method
    # @return [Array[CardMoveResponseSuccessfulRequestsItems]]
    attr_accessor :successful_requests

    # TODO: Write general description for this method
    # @return [Array[CardMoveResponseErrorCardsItems]]
    attr_accessor :error_cards

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :request_id

    # TODO: Write general description for this method
    # @return [ErrorStatus]
    attr_accessor :error

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['move_card_request_reference'] = 'MoveCardRequestReference'
      @_hash['successful_requests'] = 'SuccessfulRequests'
      @_hash['error_cards'] = 'ErrorCards'
      @_hash['request_id'] = 'RequestId'
      @_hash['error'] = 'Error'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        move_card_request_reference
        successful_requests
        error_cards
        request_id
        error
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(move_card_request_reference = SKIP,
                   successful_requests = SKIP, error_cards = SKIP,
                   request_id = SKIP, error = SKIP)
      unless move_card_request_reference == SKIP
        @move_card_request_reference =
          move_card_request_reference
      end
      @successful_requests = successful_requests unless successful_requests == SKIP
      @error_cards = error_cards unless error_cards == SKIP
      @request_id = request_id unless request_id == SKIP
      @error = error unless error == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      move_card_request_reference =
        hash.key?('MoveCardRequestReference') ? hash['MoveCardRequestReference'] : SKIP
      # Parameter is an array, so we need to iterate through it
      successful_requests = nil
      unless hash['SuccessfulRequests'].nil?
        successful_requests = []
        hash['SuccessfulRequests'].each do |structure|
          successful_requests << (CardMoveResponseSuccessfulRequestsItems.from_hash(structure) if structure)
        end
      end

      successful_requests = SKIP unless hash.key?('SuccessfulRequests')
      # Parameter is an array, so we need to iterate through it
      error_cards = nil
      unless hash['ErrorCards'].nil?
        error_cards = []
        hash['ErrorCards'].each do |structure|
          error_cards << (CardMoveResponseErrorCardsItems.from_hash(structure) if structure)
        end
      end

      error_cards = SKIP unless hash.key?('ErrorCards')
      request_id = hash.key?('RequestId') ? hash['RequestId'] : SKIP
      error = ErrorStatus.from_hash(hash['Error']) if hash['Error']

      # Create object from extracted values.
      CardMoveResponse.new(move_card_request_reference,
                           successful_requests,
                           error_cards,
                           request_id,
                           error)
    end
  end
end
