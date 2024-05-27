# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # AutoRenewCardRequest Model.
  class AutoRenewCardRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Collecting Company Id of the selected payer. 
    # Optional if ColCoCode is passed else Mandatory.
    # Example:
    # 1-Philippines
    # 5-UK
    # @return [Integer]
    attr_accessor :col_co_id

    # Collecting Company Code (Shell Code) of the selected payer. 
    # Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia,
    # Ukraine etc. It is optional for other countries if ColCoID is provided.
    # Example:
    # 86-Philippines
    # 5-UK
    # @return [Integer]
    attr_accessor :col_co_code

    # Payer Number (Ex: GB000000123) of the selected payer.
    # Optional if PayerId is passed else Mandatory
    # @return [String]
    attr_accessor :payer_number

    # Payer Id  of the selected payer.
    # Optional if PayerNumber is passed else Mandatory
    # @return [Integer]
    attr_accessor :payer_id

    # Payer Id  of the selected payer.
    # Optional if PayerNumber is passed else Mandatory
    # @return [Array[AutoRenewCardRequestAutoRenewCardsItems]]
    attr_accessor :auto_renew_cards

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['payer_id'] = 'PayerId'
      @_hash['auto_renew_cards'] = 'AutoRenewCards'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        col_co_id
        col_co_code
        payer_number
        payer_id
        auto_renew_cards
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(col_co_id = SKIP,
                   col_co_code = SKIP,
                   payer_number = SKIP,
                   payer_id = SKIP,
                   auto_renew_cards = SKIP)
      @col_co_id = col_co_id unless col_co_id == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @auto_renew_cards = auto_renew_cards unless auto_renew_cards == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      # Parameter is an array, so we need to iterate through it
      auto_renew_cards = nil
      unless hash['AutoRenewCards'].nil?
        auto_renew_cards = []
        hash['AutoRenewCards'].each do |structure|
          auto_renew_cards << (AutoRenewCardRequestAutoRenewCardsItems.from_hash(structure) if structure)
        end
      end

      auto_renew_cards = SKIP unless hash.key?('AutoRenewCards')

      # Create object from extracted values.
      AutoRenewCardRequest.new(col_co_id,
                               col_co_code,
                               payer_number,
                               payer_id,
                               auto_renew_cards)
    end
  end
end
