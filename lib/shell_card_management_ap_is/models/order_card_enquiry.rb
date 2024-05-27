# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # This entity models the data that is sent in the https
  class OrderCardEnquiry < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account ID on the card request
    # @return [Integer]
    attr_accessor :account_id

    # AccountNumber
    # @return [String]
    attr_accessor :account_number

    # Bulk card order request refrence numer.<br />
    # This field will be null if the order is not through BCO.
    # @return [Integer]
    attr_accessor :bco_reference

    # Row number of the request in the BCO file.<br />
    # This field will be null if the order is not through BCO.
    # @return [Integer]
    attr_accessor :bco_row_number

    # Card group ID
    # @return [Integer]
    attr_accessor :card_group_id

    # Card group name
    # @return [String]
    attr_accessor :card_group_name

    # Unique Card Id.<br />
    # The field will be null if the card order request is not successly
    # processed.
    # @return [Integer]
    attr_accessor :card_id

    # Card PAN.<br />
    # Mask PAN (Mask all digits except the Last 6 digits of the PAN).<br />
    # The field will be null if the card order request is not successly
    # processed.
    # @return [String]
    attr_accessor :card_pan

    # CardTypeCode<br />
    # ISO code of the card i.e. first 7 digits of the PAN
    # @return [String]
    attr_accessor :card_type_code

    # CardTypeId
    # @return [Integer]
    attr_accessor :card_type_id

    # CardTypeName
    # @return [String]
    attr_accessor :card_type_name

    # Driver name
    # @return [String]
    attr_accessor :driver_name

    # Error code for the order card request.<br />
    # The value will be 0000 if it is processed without errors.
    # @return [String]
    attr_accessor :error_code

    # Error description for the order card request.<br />
    # The value will be empty string if it is processed without errors.
    # @return [String]
    attr_accessor :error_description

    # Error code for the Gateway sync error.<br />
    # The value will be 0000 if it is processed without errors.
    # @return [String]
    attr_accessor :gateway_sync_error_code

    # Error description for the Gateway sync error.<br />
    # The value will be empty string if it is processed without errors.
    # @return [String]
    attr_accessor :gateway_sync_error_description

    # GatewaySyncStatus<br />
    # Status of the card sync with CFGW.<br />
    # Possible values:<br />
    # -Success<br />
    # -Failed<br />
    # -In Progress<br />
    # -Not Submitted
    # @return [String]
    attr_accessor :gateway_sync_status

    # Main reference number for the order card request.<br />
    # This field will be null if the order is through BCO.
    # @return [Integer]
    attr_accessor :main_reference

    # Indivitual card reference number for the order card request.<br />
    # This field will be null if the order is through BCO.
    # @return [Integer]
    attr_accessor :order_card_reference

    # Order status.<br />
    # Possible values:<br />
    # P   Pending<br />
    # I   Picked up for processing<br />
    # PX	Failed at Queue but retry attempts pending<br />
    # X	Failed  at Queue<br />
    # R	Card is processed, awaiting for PAN update.<br />
    # S	Processed<br />
    # F	Failed
    # @return [String]
    attr_accessor :order_status

    # Payer ID on the card request.
    # @return [Integer]
    attr_accessor :payer_id

    # Payer Number on the card request
    # @return [String]
    attr_accessor :payer_number

    # Date and time (in cutomers local time) when the card order request is
    # processed<br />
    # Format: yyyyMMdd HH:mm:ss<br />
    # Note: The client application to convert the string to appropriate
    # date/time type.
    # @return [String]
    attr_accessor :processed_date

    # PurchaseCategoryCode
    # @return [String]
    attr_accessor :purchase_category_code

    # PurchaseCategoryId <br />
    # Note: Not Purchase code. This is a unique purchase category id assigned
    # @return [Integer]
    attr_accessor :purchase_category_id

    # PurchaseCategoryName
    # @return [String]
    attr_accessor :purchase_category_name

    # Date and time (in cutomers local time) when the card order request is
    # submitted.<br />
    # Format: yyyyMMdd HH:mm:ss<br />
    # Note: The client application to convert the string to appropriate
    # date/time type.
    # @return [String]
    attr_accessor :submitted_date

    # SyncProcessedDate<br />
    # Date and time (in cutomers local time) when the sync card request is
    # processed.<br />
    # Format: yyyyMMdd HH:mm:ss<br />
    # Note: The client application to convert the string to appropriate
    # date/time type.
    # @return [String]
    attr_accessor :sync_processed_date

    # SyncRequestedDate<br />
    # Date and time (in cutomers local time) when the sync card request is
    # submitted.<br />
    # Format: yyyyMMdd HH:mm:ss <br />
    # Note: The client application to convert the string to appropriate
    # date/time type.
    # @return [String]
    attr_accessor :sync_requested_date

    # Vehicle registration number
    # @return [String]
    attr_accessor :vrn

    # Unique Id of the Original Order card request, the status of which is
    # enquired by this API. <br />
    # This is returned for end to end traceability of a request based on the
    # original Order Card request.
    # @return [String]
    attr_accessor :order_request_id

    # Expiry date of the card.<br />
    # Format: MMyy<br />
    # (Clients to convert this to appropriate DateTime type.)<br />
    # Note: This is the Expiry Date saved.<br />
    # If the Order Card request is still not processed, i.e.PAN is not yet
    # issued, this field will be null or empty. <br />
    # For a Card Order with a custom Expiry Date passed in the request, this
    # value will be returned after it is updated successfully.
    # @return [String]
    attr_accessor :expiry_date

    # This is the Client Reference Id of card in the order which needs to be
    # passed by the client.
    # @return [String]
    attr_accessor :client_reference_id

    # Order status.<br />
    # Possible values<br />
    #  Success<br />
    #  Failed<br />
    #  InProgress<br />
    # @return [String]
    attr_accessor :status_description

    # Colcoid
    # @return [Integer]
    attr_accessor :col_co_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['bco_reference'] = 'BCOReference'
      @_hash['bco_row_number'] = 'BCORowNumber'
      @_hash['card_group_id'] = 'CardGroupId'
      @_hash['card_group_name'] = 'CardGroupName'
      @_hash['card_id'] = 'CardId'
      @_hash['card_pan'] = 'CardPAN'
      @_hash['card_type_code'] = 'CardTypeCode'
      @_hash['card_type_id'] = 'CardTypeId'
      @_hash['card_type_name'] = 'CardTypeName'
      @_hash['driver_name'] = 'DriverName'
      @_hash['error_code'] = 'ErrorCode'
      @_hash['error_description'] = 'ErrorDescription'
      @_hash['gateway_sync_error_code'] = 'GatewaySyncErrorCode'
      @_hash['gateway_sync_error_description'] = 'GatewaySyncErrorDescription'
      @_hash['gateway_sync_status'] = 'GatewaySyncStatus'
      @_hash['main_reference'] = 'MainReference'
      @_hash['order_card_reference'] = 'OrderCardReference'
      @_hash['order_status'] = 'OrderStatus'
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['processed_date'] = 'ProcessedDate'
      @_hash['purchase_category_code'] = 'PurchaseCategoryCode'
      @_hash['purchase_category_id'] = 'PurchaseCategoryId'
      @_hash['purchase_category_name'] = 'PurchaseCategoryName'
      @_hash['submitted_date'] = 'SubmittedDate'
      @_hash['sync_processed_date'] = 'SyncProcessedDate'
      @_hash['sync_requested_date'] = 'SyncRequestedDate'
      @_hash['vrn'] = 'VRN'
      @_hash['order_request_id'] = 'OrderRequestId'
      @_hash['expiry_date'] = 'ExpiryDate'
      @_hash['client_reference_id'] = 'ClientReferenceId'
      @_hash['status_description'] = 'StatusDescription'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_id
        account_number
        bco_reference
        bco_row_number
        card_group_id
        card_group_name
        card_id
        card_pan
        card_type_code
        card_type_id
        card_type_name
        driver_name
        error_code
        error_description
        gateway_sync_error_code
        gateway_sync_error_description
        gateway_sync_status
        main_reference
        order_card_reference
        order_status
        payer_id
        payer_number
        processed_date
        purchase_category_code
        purchase_category_id
        purchase_category_name
        submitted_date
        sync_processed_date
        sync_requested_date
        vrn
        order_request_id
        expiry_date
        client_reference_id
        status_description
        col_co_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        account_id
        account_number
        bco_reference
        bco_row_number
        card_group_id
        card_group_name
        card_id
        card_pan
        card_type_code
        card_type_id
        card_type_name
        driver_name
        error_code
        error_description
        gateway_sync_error_code
        gateway_sync_error_description
        gateway_sync_status
        order_status
        payer_number
        processed_date
        purchase_category_code
        purchase_category_id
        purchase_category_name
        submitted_date
        sync_processed_date
        sync_requested_date
        vrn
        order_request_id
        expiry_date
        client_reference_id
        status_description
        col_co_id
      ]
    end

    def initialize(account_id = SKIP,
                   account_number = SKIP,
                   bco_reference = SKIP,
                   bco_row_number = SKIP,
                   card_group_id = SKIP,
                   card_group_name = SKIP,
                   card_id = SKIP,
                   card_pan = SKIP,
                   card_type_code = SKIP,
                   card_type_id = SKIP,
                   card_type_name = SKIP,
                   driver_name = SKIP,
                   error_code = SKIP,
                   error_description = SKIP,
                   gateway_sync_error_code = SKIP,
                   gateway_sync_error_description = SKIP,
                   gateway_sync_status = SKIP,
                   main_reference = SKIP,
                   order_card_reference = SKIP,
                   order_status = SKIP,
                   payer_id = SKIP,
                   payer_number = SKIP,
                   processed_date = SKIP,
                   purchase_category_code = SKIP,
                   purchase_category_id = SKIP,
                   purchase_category_name = SKIP,
                   submitted_date = SKIP,
                   sync_processed_date = SKIP,
                   sync_requested_date = SKIP,
                   vrn = SKIP,
                   order_request_id = SKIP,
                   expiry_date = SKIP,
                   client_reference_id = SKIP,
                   status_description = SKIP,
                   col_co_id = SKIP)
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @bco_reference = bco_reference unless bco_reference == SKIP
      @bco_row_number = bco_row_number unless bco_row_number == SKIP
      @card_group_id = card_group_id unless card_group_id == SKIP
      @card_group_name = card_group_name unless card_group_name == SKIP
      @card_id = card_id unless card_id == SKIP
      @card_pan = card_pan unless card_pan == SKIP
      @card_type_code = card_type_code unless card_type_code == SKIP
      @card_type_id = card_type_id unless card_type_id == SKIP
      @card_type_name = card_type_name unless card_type_name == SKIP
      @driver_name = driver_name unless driver_name == SKIP
      @error_code = error_code unless error_code == SKIP
      @error_description = error_description unless error_description == SKIP
      @gateway_sync_error_code = gateway_sync_error_code unless gateway_sync_error_code == SKIP
      unless gateway_sync_error_description == SKIP
        @gateway_sync_error_description =
          gateway_sync_error_description
      end
      @gateway_sync_status = gateway_sync_status unless gateway_sync_status == SKIP
      @main_reference = main_reference unless main_reference == SKIP
      @order_card_reference = order_card_reference unless order_card_reference == SKIP
      @order_status = order_status unless order_status == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @processed_date = processed_date unless processed_date == SKIP
      @purchase_category_code = purchase_category_code unless purchase_category_code == SKIP
      @purchase_category_id = purchase_category_id unless purchase_category_id == SKIP
      @purchase_category_name = purchase_category_name unless purchase_category_name == SKIP
      @submitted_date = submitted_date unless submitted_date == SKIP
      @sync_processed_date = sync_processed_date unless sync_processed_date == SKIP
      @sync_requested_date = sync_requested_date unless sync_requested_date == SKIP
      @vrn = vrn unless vrn == SKIP
      @order_request_id = order_request_id unless order_request_id == SKIP
      @expiry_date = expiry_date unless expiry_date == SKIP
      @client_reference_id = client_reference_id unless client_reference_id == SKIP
      @status_description = status_description unless status_description == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      bco_reference = hash.key?('BCOReference') ? hash['BCOReference'] : SKIP
      bco_row_number = hash.key?('BCORowNumber') ? hash['BCORowNumber'] : SKIP
      card_group_id = hash.key?('CardGroupId') ? hash['CardGroupId'] : SKIP
      card_group_name =
        hash.key?('CardGroupName') ? hash['CardGroupName'] : SKIP
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP
      card_pan = hash.key?('CardPAN') ? hash['CardPAN'] : SKIP
      card_type_code = hash.key?('CardTypeCode') ? hash['CardTypeCode'] : SKIP
      card_type_id = hash.key?('CardTypeId') ? hash['CardTypeId'] : SKIP
      card_type_name = hash.key?('CardTypeName') ? hash['CardTypeName'] : SKIP
      driver_name = hash.key?('DriverName') ? hash['DriverName'] : SKIP
      error_code = hash.key?('ErrorCode') ? hash['ErrorCode'] : SKIP
      error_description =
        hash.key?('ErrorDescription') ? hash['ErrorDescription'] : SKIP
      gateway_sync_error_code =
        hash.key?('GatewaySyncErrorCode') ? hash['GatewaySyncErrorCode'] : SKIP
      gateway_sync_error_description =
        hash.key?('GatewaySyncErrorDescription') ? hash['GatewaySyncErrorDescription'] : SKIP
      gateway_sync_status =
        hash.key?('GatewaySyncStatus') ? hash['GatewaySyncStatus'] : SKIP
      main_reference = hash.key?('MainReference') ? hash['MainReference'] : SKIP
      order_card_reference =
        hash.key?('OrderCardReference') ? hash['OrderCardReference'] : SKIP
      order_status = hash.key?('OrderStatus') ? hash['OrderStatus'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      processed_date = hash.key?('ProcessedDate') ? hash['ProcessedDate'] : SKIP
      purchase_category_code =
        hash.key?('PurchaseCategoryCode') ? hash['PurchaseCategoryCode'] : SKIP
      purchase_category_id =
        hash.key?('PurchaseCategoryId') ? hash['PurchaseCategoryId'] : SKIP
      purchase_category_name =
        hash.key?('PurchaseCategoryName') ? hash['PurchaseCategoryName'] : SKIP
      submitted_date = hash.key?('SubmittedDate') ? hash['SubmittedDate'] : SKIP
      sync_processed_date =
        hash.key?('SyncProcessedDate') ? hash['SyncProcessedDate'] : SKIP
      sync_requested_date =
        hash.key?('SyncRequestedDate') ? hash['SyncRequestedDate'] : SKIP
      vrn = hash.key?('VRN') ? hash['VRN'] : SKIP
      order_request_id =
        hash.key?('OrderRequestId') ? hash['OrderRequestId'] : SKIP
      expiry_date = hash.key?('ExpiryDate') ? hash['ExpiryDate'] : SKIP
      client_reference_id =
        hash.key?('ClientReferenceId') ? hash['ClientReferenceId'] : SKIP
      status_description =
        hash.key?('StatusDescription') ? hash['StatusDescription'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP

      # Create object from extracted values.
      OrderCardEnquiry.new(account_id,
                           account_number,
                           bco_reference,
                           bco_row_number,
                           card_group_id,
                           card_group_name,
                           card_id,
                           card_pan,
                           card_type_code,
                           card_type_id,
                           card_type_name,
                           driver_name,
                           error_code,
                           error_description,
                           gateway_sync_error_code,
                           gateway_sync_error_description,
                           gateway_sync_status,
                           main_reference,
                           order_card_reference,
                           order_status,
                           payer_id,
                           payer_number,
                           processed_date,
                           purchase_category_code,
                           purchase_category_id,
                           purchase_category_name,
                           submitted_date,
                           sync_processed_date,
                           sync_requested_date,
                           vrn,
                           order_request_id,
                           expiry_date,
                           client_reference_id,
                           status_description,
                           col_co_id)
    end
  end
end
