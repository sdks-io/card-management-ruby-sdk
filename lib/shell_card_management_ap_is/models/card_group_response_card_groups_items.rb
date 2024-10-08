# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CardGroupResponseCardGroupsItems Model.
  class CardGroupResponseCardGroupsItems < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account Id for the associated card group
    # @return [Integer]
    attr_accessor :account_id

    # Account number for the associated card group
    # @return [String]
    attr_accessor :account_number

    # Account short name for the associated card group
    # @return [String]
    attr_accessor :account_short_name

    # Total number of active cards for the given search criteria
    # @return [Integer]
    attr_accessor :active_cards

    # Total number of cards for the given search criteria that are permanently
    # blocked
    # @return [Integer]
    attr_accessor :blocked_cards

    # Total number of cards for the given search criteria that are cancelled
    # @return [Integer]
    attr_accessor :cancelled_cards

    # card delivery point enabled or not
    # @return [TrueClass | FalseClass]
    attr_accessor :card_delivery_point

    # Id of the card group matching the search criteria.
    # @return [Integer]
    attr_accessor :card_group_id

    # Name of the card group matching the search criteria.
    # @return [String]
    attr_accessor :card_group_name

    # Card Type Code
    # @return [String]
    attr_accessor :card_type_code

    # Card Type Id
    # @return [Integer]
    attr_accessor :card_type_id

    # Card Type Name
    # @return [String]
    attr_accessor :card_type_name

    # Total number of expired cards for the given search criteria
    # @return [Integer]
    attr_accessor :expired_cards

    # Expiry date of the card.
    # Format: yyyyMMdd
    # Note: Clients to convert this to appropriate DateTime type.
    # @return [String]
    attr_accessor :expiry_date

    # PrintOnCard true/false
    # @return [TrueClass | FalseClass]
    attr_accessor :print_on_card

    # Total number of Renewal Pending Cards for the given search criteria
    # @return [Integer]
    attr_accessor :renewal_pending_cards

    # Total number of Renewal Pending Cards for the given search criteria
    # @return [Integer]
    attr_accessor :replaced_cards

    # Status of the card group.
    # @return [String]
    attr_accessor :status

    # Total number of cards for the given search criteria that are temporarily
    # blocked by customer
    # @return [Integer]
    attr_accessor :temporary_block_by_customer

    # Total number of cards for the given search criteria that are temporarily
    # blocked by Shell
    # @return [Integer]
    attr_accessor :temporary_block_by_shell

    # Terminated Date. 
    # Format: yyyyMMdd
    # Note: Clients to convert this to appropriate Date Time type.
    # @return [String]
    attr_accessor :terminated_date

    # Total number of cards for the given search criteria
    # @return [Integer]
    attr_accessor :total_cards

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['account_short_name'] = 'AccountShortName'
      @_hash['active_cards'] = 'ActiveCards'
      @_hash['blocked_cards'] = 'BlockedCards'
      @_hash['cancelled_cards'] = 'CancelledCards'
      @_hash['card_delivery_point'] = 'CardDeliveryPoint'
      @_hash['card_group_id'] = 'CardGroupId'
      @_hash['card_group_name'] = 'CardGroupName'
      @_hash['card_type_code'] = 'CardTypeCode'
      @_hash['card_type_id'] = 'CardTypeId'
      @_hash['card_type_name'] = 'CardTypeName'
      @_hash['expired_cards'] = 'ExpiredCards'
      @_hash['expiry_date'] = 'ExpiryDate'
      @_hash['print_on_card'] = 'PrintOnCard'
      @_hash['renewal_pending_cards'] = 'RenewalPendingCards'
      @_hash['replaced_cards'] = 'ReplacedCards'
      @_hash['status'] = 'Status'
      @_hash['temporary_block_by_customer'] = 'TemporaryBlockByCustomer'
      @_hash['temporary_block_by_shell'] = 'TemporaryBlockByShell'
      @_hash['terminated_date'] = 'TerminatedDate'
      @_hash['total_cards'] = 'TotalCards'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_id
        account_number
        account_short_name
        active_cards
        blocked_cards
        cancelled_cards
        card_delivery_point
        card_group_id
        card_group_name
        card_type_code
        card_type_id
        card_type_name
        expired_cards
        expiry_date
        print_on_card
        renewal_pending_cards
        replaced_cards
        status
        temporary_block_by_customer
        temporary_block_by_shell
        terminated_date
        total_cards
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        account_id
        account_number
        account_short_name
        active_cards
        blocked_cards
        cancelled_cards
        card_delivery_point
        card_group_id
        card_group_name
        card_type_code
        card_type_id
        card_type_name
        expired_cards
        expiry_date
        print_on_card
        renewal_pending_cards
        replaced_cards
        status
        temporary_block_by_customer
        temporary_block_by_shell
        terminated_date
        total_cards
      ]
    end

    def initialize(account_id = SKIP, account_number = SKIP,
                   account_short_name = SKIP, active_cards = SKIP,
                   blocked_cards = SKIP, cancelled_cards = SKIP,
                   card_delivery_point = SKIP, card_group_id = SKIP,
                   card_group_name = SKIP, card_type_code = SKIP,
                   card_type_id = SKIP, card_type_name = SKIP,
                   expired_cards = SKIP, expiry_date = SKIP,
                   print_on_card = SKIP, renewal_pending_cards = SKIP,
                   replaced_cards = SKIP, status = SKIP,
                   temporary_block_by_customer = SKIP,
                   temporary_block_by_shell = SKIP, terminated_date = SKIP,
                   total_cards = SKIP)
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @account_short_name = account_short_name unless account_short_name == SKIP
      @active_cards = active_cards unless active_cards == SKIP
      @blocked_cards = blocked_cards unless blocked_cards == SKIP
      @cancelled_cards = cancelled_cards unless cancelled_cards == SKIP
      @card_delivery_point = card_delivery_point unless card_delivery_point == SKIP
      @card_group_id = card_group_id unless card_group_id == SKIP
      @card_group_name = card_group_name unless card_group_name == SKIP
      @card_type_code = card_type_code unless card_type_code == SKIP
      @card_type_id = card_type_id unless card_type_id == SKIP
      @card_type_name = card_type_name unless card_type_name == SKIP
      @expired_cards = expired_cards unless expired_cards == SKIP
      @expiry_date = expiry_date unless expiry_date == SKIP
      @print_on_card = print_on_card unless print_on_card == SKIP
      @renewal_pending_cards = renewal_pending_cards unless renewal_pending_cards == SKIP
      @replaced_cards = replaced_cards unless replaced_cards == SKIP
      @status = status unless status == SKIP
      unless temporary_block_by_customer == SKIP
        @temporary_block_by_customer =
          temporary_block_by_customer
      end
      @temporary_block_by_shell = temporary_block_by_shell unless temporary_block_by_shell == SKIP
      @terminated_date = terminated_date unless terminated_date == SKIP
      @total_cards = total_cards unless total_cards == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      account_short_name =
        hash.key?('AccountShortName') ? hash['AccountShortName'] : SKIP
      active_cards = hash.key?('ActiveCards') ? hash['ActiveCards'] : SKIP
      blocked_cards = hash.key?('BlockedCards') ? hash['BlockedCards'] : SKIP
      cancelled_cards =
        hash.key?('CancelledCards') ? hash['CancelledCards'] : SKIP
      card_delivery_point =
        hash.key?('CardDeliveryPoint') ? hash['CardDeliveryPoint'] : SKIP
      card_group_id = hash.key?('CardGroupId') ? hash['CardGroupId'] : SKIP
      card_group_name =
        hash.key?('CardGroupName') ? hash['CardGroupName'] : SKIP
      card_type_code = hash.key?('CardTypeCode') ? hash['CardTypeCode'] : SKIP
      card_type_id = hash.key?('CardTypeId') ? hash['CardTypeId'] : SKIP
      card_type_name = hash.key?('CardTypeName') ? hash['CardTypeName'] : SKIP
      expired_cards = hash.key?('ExpiredCards') ? hash['ExpiredCards'] : SKIP
      expiry_date = hash.key?('ExpiryDate') ? hash['ExpiryDate'] : SKIP
      print_on_card = hash.key?('PrintOnCard') ? hash['PrintOnCard'] : SKIP
      renewal_pending_cards =
        hash.key?('RenewalPendingCards') ? hash['RenewalPendingCards'] : SKIP
      replaced_cards = hash.key?('ReplacedCards') ? hash['ReplacedCards'] : SKIP
      status = hash.key?('Status') ? hash['Status'] : SKIP
      temporary_block_by_customer =
        hash.key?('TemporaryBlockByCustomer') ? hash['TemporaryBlockByCustomer'] : SKIP
      temporary_block_by_shell =
        hash.key?('TemporaryBlockByShell') ? hash['TemporaryBlockByShell'] : SKIP
      terminated_date =
        hash.key?('TerminatedDate') ? hash['TerminatedDate'] : SKIP
      total_cards = hash.key?('TotalCards') ? hash['TotalCards'] : SKIP

      # Create object from extracted values.
      CardGroupResponseCardGroupsItems.new(account_id,
                                           account_number,
                                           account_short_name,
                                           active_cards,
                                           blocked_cards,
                                           cancelled_cards,
                                           card_delivery_point,
                                           card_group_id,
                                           card_group_name,
                                           card_type_code,
                                           card_type_id,
                                           card_type_name,
                                           expired_cards,
                                           expiry_date,
                                           print_on_card,
                                           renewal_pending_cards,
                                           replaced_cards,
                                           status,
                                           temporary_block_by_customer,
                                           temporary_block_by_shell,
                                           terminated_date,
                                           total_cards)
    end
  end
end
