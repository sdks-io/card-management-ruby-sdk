# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Request entity object for UpdateCardRequest  list
  class UpdateCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The caller to be notified with the status of the update card status
    # request. <br />
    # The caller will also be notified with the status of the replacement card
    # order request, if any.<br />
    # Mandatory, if NotifyCaller is true. <br />
    # Maximum field length: 20<br />
    # Allowed values:<br />
    # - NextGenUI: This value to be used by next gen UI application.<br />
    # - Motix: This value to be used by MOTiX application.<br />
    # - FleetHubUILifeTime: This value to be used by Fleet Hub UI application
    # for life time restriction cards.<br />
    # Note: The values passed in this field are case insensitive.
    # @return [String]
    attr_accessor :caller

    # True/False<br />
    # Optional<br />
    # When not provided will considered as default value as True.<br />
    # If passed True, the replacement card will be chargeable, else replacement
    # card will not be charged.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_replacement_chargeable

    # True/False.<br />
    # Optional.<br />
    # Default: False<br />
    # If true, the caller would be notified back with the status as success or
    # failure after the update card status request is processed.
    # Notification API subscription required to use this feature , please refer
    # API documetation for more details
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_caller

    # True/False.<br />
    # Optional.<br />
    # Default: False<br />
    # If true, the caller would be notified back with the status as success or
    # failed after the replacement card is synced with Gateway, if a replacement
    # card was requested.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_caller_on_sync

    # True/False.<br />
    # Pass True if a replacement order card request is to be placed, else
    # False.<br />
    # Optional.Default value False.<br />
    # Replacement of a card is only applicable when the target status requested
    # is either permanently Block or Damaged for the existing card.<br />
    # Request for Replacement card will be placed only when the Block card or
    # Block damaged card request is successfully placed.<br />
    # The Replacement card request will be processed only when the permanent
    # Block card request is successfully processed. <br />
    # In case of damaged card request, the replacement card request will be
    # processed immediately.
    # @return [TrueClass | FalseClass]
    attr_accessor :order_card_replacement

    # True/False.<br />
    # Pass True if a replacement order card request is to be placed, else
    # False.<br />
    # Optional.Default value False.<br />
    # Replacement of a card is only applicable when the target status requested
    # is either permanently Block or Damaged for the existing card.<br />
    # Request for Replacement card will be placed only when the Block card or
    # Block damaged card request is successfully placed.<br />
    # The Replacement card request will be processed only when the permanent
    # Block card request is successfully processed. <br />
    # In case of damaged card request, the replacement card request will be
    # processed immediately.
    # @return [CardSettings]
    attr_accessor :card_settings

    # Reason id for updating the card status.
    # Either Reason ID or Text is madatory when TargetStatus is ‘Block’ or
    # ‘Damaged’. Else ignored.
    # Possible values:
    # 1 (Lost)
    # 2 (Stolen)
    # 3 (Card no longer required)
    #  <br>When passed, the reason Id will be mapped to allowed reason IDs
    # configured for the card type of the card. If the given reason Id is not
    # allowed for certain card types, then the request will be rejected as
    # invalid ResonId
    # @return [Integer]
    attr_accessor :reason_id

    # Reason text for updating the card status.
    # Possible Values:
    # 1) Lost
    # 2) Stolen
    # 3) Card no longer required
    # Optional – However, either Reason ID or Text is madatory when TargetStatus
    # is ‘Block’ or ‘Damaged’. Else, Ignored.
    # When Reason Text is passed and the Target Status is either Block or
    # Damaged, the text will be validated with the allowed list of values
    # configured for the card type of the card. If the text is not allowed,
    # request will be rejected as invaid ResonText. 
    # Note:
    # ‘Customer blocked’ will be used as the reason for ‘Temporary Block’.
    # @return [String]
    attr_accessor :reason_text

    # The list of cards passed in ‘Cards’ parameter will be updated to this
    # status.<br />
    # Mandatory.<br />
    # Allowed values –<br />
    # - TemporaryBlock<br />
    # - Unblock<br />
    # - Block<br />
    # - Damaged<br />
    # @return [Integer]
    attr_accessor :target_status

    # Account Id of the customer.<br />
    # Optional if AccountNumber is passed, else Mandatory.
    # @return [Integer]
    attr_accessor :account_id

    # Account Number of the customer.<br />
    # Optional if AccountId is passed, else Mandatory.
    # @return [String]
    attr_accessor :account_number

    # Expiry date of the card.<br />
    # Mandatory if PAN is passed, else optional.<br />
    # Format: yyyyMMdd
    # @return [String]
    attr_accessor :card_expiry_date

    # Card Id of the card.<br />
    # Optional if PAN is passed, else Mandatory.
    # @return [Integer]
    attr_accessor :card_id

    # Collecting company code of the customer. <br />
    # Optional if ColCoId is passed, else Mandatory.<br />
    # @return [Integer]
    attr_accessor :col_co_code

    # Collecting company id of the customer. <br />
    # Optional if ColCoCode is passed, else Mandatory.<br />
    # @return [Integer]
    attr_accessor :col_co_id

    # PAN of the card.<br />
    # Optional if CardId is passed, else Mandatory.<br />
    # @return [String]
    attr_accessor :pan

    # PANID of the card
    # @return [Float]
    attr_accessor :panid

    # Payer id of the customer.<br />
    # Optional if PayerNumber is passed, else Mandatory.
    # @return [Integer]
    attr_accessor :payer_id

    # PayerNumber of the customer.<br />
    # Optional if PayerId is passed, else Mandatory.
    # @return [String]
    attr_accessor :payer_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['caller'] = 'Caller'
      @_hash['is_replacement_chargeable'] = 'IsReplacementChargeable'
      @_hash['notify_caller'] = 'NotifyCaller'
      @_hash['notify_caller_on_sync'] = 'NotifyCallerOnSync'
      @_hash['order_card_replacement'] = 'OrderCardReplacement'
      @_hash['card_settings'] = 'CardSettings'
      @_hash['reason_id'] = 'ReasonId'
      @_hash['reason_text'] = 'ReasonText'
      @_hash['target_status'] = 'TargetStatus'
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['card_expiry_date'] = 'CardExpiryDate'
      @_hash['card_id'] = 'CardId'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['pan'] = 'PAN'
      @_hash['panid'] = 'PANID'
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        caller
        is_replacement_chargeable
        notify_caller
        notify_caller_on_sync
        order_card_replacement
        card_settings
        reason_id
        reason_text
        target_status
        account_id
        account_number
        card_expiry_date
        card_id
        col_co_code
        col_co_id
        pan
        panid
        payer_id
        payer_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        caller
        reason_text
        target_status
        account_id
        account_number
        card_expiry_date
        card_id
        col_co_code
        col_co_id
        pan
        panid
        payer_id
        payer_number
      ]
    end

    def initialize(caller = SKIP, is_replacement_chargeable = SKIP,
                   notify_caller = SKIP, notify_caller_on_sync = SKIP,
                   order_card_replacement = SKIP, card_settings = SKIP,
                   reason_id = SKIP, reason_text = SKIP, target_status = SKIP,
                   account_id = SKIP, account_number = SKIP,
                   card_expiry_date = SKIP, card_id = SKIP, col_co_code = SKIP,
                   col_co_id = SKIP, pan = SKIP, panid = SKIP, payer_id = SKIP,
                   payer_number = SKIP)
      @caller = caller unless caller == SKIP
      unless is_replacement_chargeable == SKIP
        @is_replacement_chargeable =
          is_replacement_chargeable
      end
      @notify_caller = notify_caller unless notify_caller == SKIP
      @notify_caller_on_sync = notify_caller_on_sync unless notify_caller_on_sync == SKIP
      @order_card_replacement = order_card_replacement unless order_card_replacement == SKIP
      @card_settings = card_settings unless card_settings == SKIP
      @reason_id = reason_id unless reason_id == SKIP
      @reason_text = reason_text unless reason_text == SKIP
      @target_status = target_status unless target_status == SKIP
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @card_expiry_date = card_expiry_date unless card_expiry_date == SKIP
      @card_id = card_id unless card_id == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @pan = pan unless pan == SKIP
      @panid = panid unless panid == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      caller = hash.key?('Caller') ? hash['Caller'] : SKIP
      is_replacement_chargeable =
        hash.key?('IsReplacementChargeable') ? hash['IsReplacementChargeable'] : SKIP
      notify_caller = hash.key?('NotifyCaller') ? hash['NotifyCaller'] : SKIP
      notify_caller_on_sync =
        hash.key?('NotifyCallerOnSync') ? hash['NotifyCallerOnSync'] : SKIP
      order_card_replacement =
        hash.key?('OrderCardReplacement') ? hash['OrderCardReplacement'] : SKIP
      card_settings = CardSettings.from_hash(hash['CardSettings']) if hash['CardSettings']
      reason_id = hash.key?('ReasonId') ? hash['ReasonId'] : SKIP
      reason_text = hash.key?('ReasonText') ? hash['ReasonText'] : SKIP
      target_status = hash.key?('TargetStatus') ? hash['TargetStatus'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      card_expiry_date =
        hash.key?('CardExpiryDate') ? hash['CardExpiryDate'] : SKIP
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      pan = hash.key?('PAN') ? hash['PAN'] : SKIP
      panid = hash.key?('PANID') ? hash['PANID'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP

      # Create object from extracted values.
      UpdateCard.new(caller,
                     is_replacement_chargeable,
                     notify_caller,
                     notify_caller_on_sync,
                     order_card_replacement,
                     card_settings,
                     reason_id,
                     reason_text,
                     target_status,
                     account_id,
                     account_number,
                     card_expiry_date,
                     card_id,
                     col_co_code,
                     col_co_id,
                     pan,
                     panid,
                     payer_id,
                     payer_number)
    end
  end
end
