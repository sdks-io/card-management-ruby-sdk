# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # UpdateCardGroupRequest Model.
  class UpdateCardGroupRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Collecting Company Code (Shell Code) of the selected payer. 
    # Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia,
    # Ukraine etc. It is optional for other countries if ColCoID is provided.
    # Example:
    # 86-Philippines
    # 5-UK
    # @return [Integer]
    attr_accessor :col_co_code

    # Collecting Company Id  of the selected payer. 
    # Optional if ColCoCode is passed else Mandatory.
    # Example:
    # 1-Philippines
    # 5-UK
    # @return [Integer]
    attr_accessor :col_co_id

    # Payer Number of the selected payer.
    # Optional if PayerId is passed else Mandatory
    # @return [String]
    attr_accessor :payer_number

    # Payer Id (i.e., Customer Id of the Payment Customer) of the selected
    # payer.
    # Optional if PayerNumber is passed else Mandatory
    # Example: 123456
    # @return [Integer]
    attr_accessor :payer_id

    # Account ID of the card-group to be updated/terminated.
    # @return [Integer]
    attr_accessor :account_id

    # Account Number of the card-group to be updated/terminated.
    # @return [String]
    attr_accessor :account_number

    # Unique Id of the card group that needs to be updated or terminated.
    # @return [Integer]
    attr_accessor :card_group_id

    # New name for the card group if it needs to be updated. Set this field to
    # ‘null’ if no change required to the current card group name.
    # Optional
    # Minimum length: 1 (Configurable)
    # Maximum length: 40 (Configurable)
    # Allowed characters (Configurable) are: - A-Z 0-9, / ‘. & Ä Ö Ü Å Æ É Ø
    # Note: The card group name has to be unique for customer. Else an error
    # with error code 9015 is returned.
    # @return [String]
    attr_accessor :card_group_name

    # Whether to emboss the card group name on the cards. 
    # Populate this field only if the value needs to be updated. Otherwise set
    # to ‘null’.
    # @return [TrueClass | FalseClass]
    attr_accessor :print_on_card

    # Card Type ID of the card group. 
    # Populate this field if the value needs to be updated. Otherwise set to
    # ‘null’.
    # Optional
    # Note: 
    # 1)	If a card type is passed, the cardgorup will allow cards with same card
    # type to be moved in to the card group.
    # 2)	Pass ‘-1’ to remove the card type from the card group.
    # @return [Integer]
    attr_accessor :card_type_id

    # Whether to terminate the card group.
    # When set to true, the card group will be terminated by setting current
    # date as it’s termination date.
    # Optional, False by default .
    # @return [TrueClass | FalseClass]
    attr_accessor :terminate_card_group

    # Whether to move the cards from this CardGroup in to a different or a new
    # CardGroup.
    # Optional
    # When the value is set to ‘False’ or ‘null’, the cards that are currently
    # in the card-group will remain under the same card-group.
    # @return [TrueClass | FalseClass]
    attr_accessor :move_cards

    # Account ID of the new/target card-group.
    # Either TargetAccountId or TargetAccountNumber is mandatory when MoveCards
    # is set to True.
    # @return [Integer]
    attr_accessor :target_account_id

    # Account Number of the new/target card-group.
    # Either TargetAccountId or TargetAccountNumber is mandatory when MoveCards
    # is set to True.
    # @return [String]
    attr_accessor :target_account_number

    # Name of the new card group if the cards in the existing card-group have to
    # be moved to a new card-group.
    # Mandatory when MoveCards parameter is True and TargetCardGroupId is null.
    # Minimum length: 1 (Configurable)
    # Maximum length: 30 (Configurable)
    # @return [String]
    attr_accessor :target_new_card_group_name

    # ID of the card group if the cards in the existing card-group have to be
    # moved to another existing card-group.
    # Mandatory when MoveCards parameter is True and TargetNewCardGroupName is
    # null.
    # If the value is “-1” then the cards will be moved out of the current
    # CardGroup.
    # @return [Integer]
    attr_accessor :target_card_group_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['payer_id'] = 'PayerId'
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['card_group_id'] = 'CardGroupId'
      @_hash['card_group_name'] = 'CardGroupName'
      @_hash['print_on_card'] = 'PrintOnCard'
      @_hash['card_type_id'] = 'CardTypeId'
      @_hash['terminate_card_group'] = 'TerminateCardGroup'
      @_hash['move_cards'] = 'MoveCards'
      @_hash['target_account_id'] = 'TargetAccountId'
      @_hash['target_account_number'] = 'TargetAccountNumber'
      @_hash['target_new_card_group_name'] = 'TargetNewCardGroupName'
      @_hash['target_card_group_id'] = 'TargetCardGroupId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        col_co_code
        col_co_id
        payer_number
        payer_id
        account_id
        account_number
        card_group_id
        card_group_name
        print_on_card
        card_type_id
        terminate_card_group
        move_cards
        target_account_id
        target_account_number
        target_new_card_group_name
        target_card_group_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(col_co_code = SKIP,
                   col_co_id = SKIP,
                   payer_number = SKIP,
                   payer_id = SKIP,
                   account_id = SKIP,
                   account_number = SKIP,
                   card_group_id = SKIP,
                   card_group_name = SKIP,
                   print_on_card = SKIP,
                   card_type_id = SKIP,
                   terminate_card_group = SKIP,
                   move_cards = SKIP,
                   target_account_id = SKIP,
                   target_account_number = SKIP,
                   target_new_card_group_name = SKIP,
                   target_card_group_id = SKIP)
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @card_group_id = card_group_id unless card_group_id == SKIP
      @card_group_name = card_group_name unless card_group_name == SKIP
      @print_on_card = print_on_card unless print_on_card == SKIP
      @card_type_id = card_type_id unless card_type_id == SKIP
      @terminate_card_group = terminate_card_group unless terminate_card_group == SKIP
      @move_cards = move_cards unless move_cards == SKIP
      @target_account_id = target_account_id unless target_account_id == SKIP
      @target_account_number = target_account_number unless target_account_number == SKIP
      unless target_new_card_group_name == SKIP
        @target_new_card_group_name =
          target_new_card_group_name
      end
      @target_card_group_id = target_card_group_id unless target_card_group_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      card_group_id = hash.key?('CardGroupId') ? hash['CardGroupId'] : SKIP
      card_group_name =
        hash.key?('CardGroupName') ? hash['CardGroupName'] : SKIP
      print_on_card = hash.key?('PrintOnCard') ? hash['PrintOnCard'] : SKIP
      card_type_id = hash.key?('CardTypeId') ? hash['CardTypeId'] : SKIP
      terminate_card_group =
        hash.key?('TerminateCardGroup') ? hash['TerminateCardGroup'] : SKIP
      move_cards = hash.key?('MoveCards') ? hash['MoveCards'] : SKIP
      target_account_id =
        hash.key?('TargetAccountId') ? hash['TargetAccountId'] : SKIP
      target_account_number =
        hash.key?('TargetAccountNumber') ? hash['TargetAccountNumber'] : SKIP
      target_new_card_group_name =
        hash.key?('TargetNewCardGroupName') ? hash['TargetNewCardGroupName'] : SKIP
      target_card_group_id =
        hash.key?('TargetCardGroupId') ? hash['TargetCardGroupId'] : SKIP

      # Create object from extracted values.
      UpdateCardGroupRequest.new(col_co_code,
                                 col_co_id,
                                 payer_number,
                                 payer_id,
                                 account_id,
                                 account_number,
                                 card_group_id,
                                 card_group_name,
                                 print_on_card,
                                 card_type_id,
                                 terminate_card_group,
                                 move_cards,
                                 target_account_id,
                                 target_account_number,
                                 target_new_card_group_name,
                                 target_card_group_id)
    end
  end
end
