# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Request entity object for CardDetail
  class CardDetail < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Payer Id  of the selected payer.<br />
    # Optional if PayerNumber is passed else Mandatory
    # @return [Integer]
    attr_accessor :payer_id

    # Payer Number of the selected payer.<br />
    # Optional if PayerId is passed else Mandatory
    # @return [String]
    attr_accessor :payer_number

    # Account ID of the customer.<br />
    # Optional if AccountNumber is passed, else mandatory.<br />
    # This input is a search criterion, if given.
    # @return [Integer]
    attr_accessor :account_id

    # Account Number of the customer.<br />
    # Optional if AccountId is passed, else mandatory.<br />
    # This input is a search criterion, if given.
    # @return [String]
    attr_accessor :account_number

    # Collecting Company Code (Shell Code) of the selected payer.<br />
    # Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia,
    # Ukraine etc. It is optional for other countries if ColCoID is provided.
    # @return [Integer]
    attr_accessor :col_co_code

    # Collecting Company Id of the selected payer.<br />
    # Optional If ColCo Code is passed else Mandatory
    # @return [Integer]
    attr_accessor :col_co_id

    # Card Type ID<br />
    # Mandatory
    # @return [Integer]
    attr_accessor :card_type_id

    # Token Type Id – Linked to the selected card type<br />
    # Optional<br />
    # Default – Assign the default token type associated with the card type of
    # the card being created.<br />
    # The default value will be set by the background process and an error (code
    # 12009) will be thrown by the background process when default value is not
    # identified or invalid token type id is passed in the request.
    # @return [Integer]
    attr_accessor :token_type_id

    # Text to be printed on the card as Account Name.<br />
    # Optional – When not provided default emboss text associated with the card
    # type will be embossed.<br />
    # Max length: 27<br />
    # The value should be validated against a configured list of allowed
    # characters.<br />
    # [-0-9A-Z,/''.&amp; ÄÖÜÅÆÉØ]
    # @return [String]
    attr_accessor :emboss_text

    # Vehicle registration number.<br/>
    # Optional when DriverName is passed else mandatory.<br/>
    # Mandatory when ColCo setting is marked as ‘VRN mandatory’.<br />
    # Max length: 24<br />
    # The value will be validated against a configured list of allowed
    # characters.<br />
    # Default value for the configuration is: [-0-9A-Z,/''.&amp; ÄÖÜÅÆÉØ] . 
    # </br>Note: If Driver Name is null or empty, max allowed characters for VRN
    # is 16.  When Driver Name is provided, max allowed characters for VRN is
    # 24.
    # @return [String]
    attr_accessor :vrn

    # Driver Name.<br />
    # Optional when VRN is passed else mandatory.<br />
    # Max length: 27<br />
    # The value will be validated against a configured list of allowed
    # characters.<br />
    # Default value for the configuration is: [-0-9A-Z,/''.&amp; ÄÖÜÅÆÉØ]<br />
    # @return [String]
    attr_accessor :driver_name

    # Odometer Input to be enabled on the card<br />
    # Optional.<br />
    # Default is False
    # @return [TrueClass | FalseClass]
    attr_accessor :odometer_input_required

    # FleetId Input to be enabled on the card<br />
    # Optional.<br />
    # Default is False<br />
    # Note: If AllowFleetIdInput settings of the account is disabled and this
    # flag is marked
    #       true in the request, then request will be processed with VRN input
    # required
    #       enabled instead of Fleet Id input required
    # @return [TrueClass | FalseClass]
    attr_accessor :fleet_id_input_required

    # Purchase category Id<br />
    # Mandatory
    # @return [Integer]
    attr_accessor :purchase_category_id

    # The encrypted value of self-selected PIN.<br />
    # Optional – When not provided, the PIN will be auto generated(if the card
    # token type supports PIN) and delivered based on the given PIN delivery
    # option.<br />
    # Max Length: 256
    # @return [String]
    attr_accessor :self_selected_encrypted_pin

    # KeyId of the PIN encrypted value.<br />
    # Mandatory, if opted for self-selected PIN else optional.<br />
    # Max Length: 30
    # @return [String]
    attr_accessor :self_selected_pin_key_id

    # Encoded message of the TCS form which is used for encrypting the PIN of
    # this card.<br />
    # The encode message forms are provided to clients by another API
    # (“TCS”).<br />
    # Instructions to encrypt the PIN is covered in the related API
    # specifications document.<br />
    # Mandatory –If opted for self-selected PIN else optional.
    # Max Length: 1024
    # @return [String]
    attr_accessor :self_selected_pin_session_key

    # Card group ID<br />
    # Optional
    # @return [Integer]
    attr_accessor :card_group_id

    # Card group name<br />
    # This field is mandatory when IsNewCardGroup parameter is set to true.<br
    # />
    # Maximum field length: 40<br />
    # The value will be validated against a configured list of allowed
    # characters.<br />
    # Default value for the configuration is: [0-9A-Z.]
    # @return [String]
    attr_accessor :card_group_name

    # This need to be set to true if the card group needs to be created prior to
    # processing the card order and the card needs to be assigned to the newly
    # created card group.<br />
    # Optional<br />
    # Default - False
    # @return [TrueClass | FalseClass]
    attr_accessor :is_new_card_group

    # This should be set to true if the card group name needs to be printed on
    # the newly created card under a new card group.<br />
    # Optional<br />
    # Default – False<br />
    # Note: This value will be considered only if a new CardGroup is created for
    # the Card.(i.e.when IsNewCardGroup is true) 
    #       If the Card is added to an existing CardGroup, 
    #       the property ‘PrintOnCard’ set for the CardGroup will determine
    # whether the CardGroupName should be embossed on the Card.
    # @return [TrueClass | FalseClass]
    attr_accessor :emboss_card_group

    # Card delivery type.<br />
    # Mandatory <br />
    # Allowed Value: <br />
    # 1.	Customer Address(Default) <br />
    # 2.	New Delivery Address
    # @return [Integer]
    attr_accessor :card_delivery_type

    # Request entity object for CardDeliveryContact
    # Mandatory when CardDeliveryType is 2 else ignored.
    # @return [CardDeliveryContact]
    attr_accessor :card_contact

    # PIN delivery address type selection.<br />
    # Optional<br />
    # Allowed Values:<br />
    # 1.	Customer Address(Default)<br />
    # 2.	Card Address<br />
    # 3.	New Delivery Address
    # @return [Integer]
    attr_accessor :pin_delivery_address_type

    # PIN delivery method.<br />
    # Mandatory<br />
    # Allowed Values:<br />
    # 1.	Paper<br />
    # 2.	Email<br />
    # 3.	SMS<br />
    # 4.	None <br /> **Note:** Paper delivery not applicable for selfselctedPIN
    # type
    # @return [Integer]
    attr_accessor :pin_advice_type

    # Request entity object for PINDeliveryContact
    # Mandatory when PINDeliveryAddressType is ‘3’ (New delivery address). Else,
    # ignored.
    # @return [PINDeliveryContact]
    attr_accessor :pin_contact

    # True/False.<br />
    # Optional.<br />
    # Default: False<br />
    # If true, the caller would be notified back with the status as success or
    # failure after the card order is processed.
    # This webhook feature has to be subscribed by the customer prior to use ,
    # please refer the API documentation for the more details.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_caller

    # The caller to be notified with the status of the card order.<br />
    # Mandatory, if NotifyCaller is true.<br />
    # Maximum field length: 20<br />
    # Allowed values:<br />
    # •	“NextGenUI”: This value to be used by next gen UI application.<br />
    # •	“FleetHubUILifeTime”: This value to be used by Fleet Hub UI application
    # for life time restriction cards.<br />
    # Note: The values passed in this field are case insensitive
    # @return [String]
    attr_accessor :caller

    # True/False.<br />
    # Optional.<br />
    # Default: False<br />
    # If true, the caller would be notified back with the status as success or
    # failed after the processed card is synced with Gateway.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_caller_on_sync

    # True/False.<br />
    # Optional.<br />
    # Default: False<br />
    # For cards ordered with Validate Fleet Id parameter set to true, CFGW will
    # be notified to enable this validation for the card.<br />
    # Note: When “FleetIdInputRequired” is not set on the card, validate fleet
    # id will be considered false regardless of the value passed on this
    # parameter.
    # @return [TrueClass | FalseClass]
    attr_accessor :validate_fleet_id

    # Type of action will be performed for the card when the fleet Id is
    # validated.<br />
    # Optional.<br />
    # Default: NO_VALIDATION<br />
    # Allowed values:<br />
    # •	ALERT<br />
    # •	DECLINE<br />
    # •	DECLINE_ALERT<br />
    # •	NO_VALIDATION<br />
    # Note: When FleetIdOption is not provided and validatefleetid is true then
    # by default allowed value is NO_VALIDATION.
    # @return [String]
    attr_accessor :fleet_option

    # Gateway Bundle Id to which the ordered card will be added.<br />
    # Optional.<br />
    # When a valid bundle Id is passed, upon successful processing of Card
    # Order, the card will be added to the provided bundle in Gateway.
    # If card bundle has crossed the limit of 500 cards or if the card bundle is
    # not available in the gateway then the background services will fail to
    # added the card to the bundle.
    # @return [String]
    attr_accessor :bundle_id

    # The value indicates what actions is to be performed with respect to usage
    # restrictions on the card being ordered.<br />
    # UsageRestrictionAction is mandatory when bundle Id is passed. Else
    # ignored.<br />
    # Allowed values: –<br />
    # • Update<br />
    # • Default<br />
    # • None
    # @return [String]
    attr_accessor :usage_restriction_action

    # The value indicates what actions is to be performed with respect to
    # product restrictions on the card being ordered.<br />
    # ProductRestrictionAction is mandatory when bundle Id is passed. Else
    # ignored.<br />
    # Allowed values: -<br />
    # • Update<br />
    # • Default<br />
    # • None<br />
    # Note: This field is applicable when product restrictions
    # @return [String]
    attr_accessor :product_restriction_action

    # An array of 3-digit global product codes.<br />
    # Optional.<br />
    # Default restrictions will be applied both products and product groups are
    # null or empty.<br />
    # Note: This field is applicable when product restrictions are migrated to
    # CFGW else, it will be ignored.
    # @return [Array[String]]
    attr_accessor :products

    # An array of product group ids.<br />
    # Optional.<br />
    # Default restrictions will be applied both products and product groups are
    # null or empty.<br />
    # Note: This field is applicable when product restrictions are migrated to
    # CFGW else, it will be ignored
    # @return [Array[String]]
    attr_accessor :product_groups

    # Expiry Date for newly created card to be update in cards plot form.<br />
    # Optional.<br />
    # Format: MMyy<br />
    # If not apply default Expiry Date.<br />
    # Note: There is a limit to the ExpiryDate which the user can choose for the
    # Card. 
    #       The expiry date which can be set for a card depends on the Card Type
    # and the associated business rules for the OU. 
    #       If the user chooses a later ExpiryDate than the allowed value for
    # the CardType for the OU, 
    #  Default Assigned Expiry Date will be applied on the card.
    # @return [String]
    attr_accessor :expiry_date

    # This is the Client Reference Id of card in the order which needs to be
    # passed by the client.This will be playback in the ordercard enquiry<br />
    # Optional
    # @return [String]
    attr_accessor :client_reference_id

    # Whether to reissue card automatically when nearing the expiry. 
    # Allowed values: -
    # 1.    As per card type setting (Default).
    # 2.    Card will be Reissued when nearing its expiry date.
    # 3.    Card will not be Reissued.
    # @return [CardDetailAutoRenewEnum]
    attr_accessor :auto_renew

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['card_type_id'] = 'CardTypeId'
      @_hash['token_type_id'] = 'TokenTypeId'
      @_hash['emboss_text'] = 'EmbossText'
      @_hash['vrn'] = 'VRN'
      @_hash['driver_name'] = 'DriverName'
      @_hash['odometer_input_required'] = 'OdometerInputRequired'
      @_hash['fleet_id_input_required'] = 'FleetIdInputRequired'
      @_hash['purchase_category_id'] = 'PurchaseCategoryId'
      @_hash['self_selected_encrypted_pin'] = 'SelfSelectedEncryptedPIN'
      @_hash['self_selected_pin_key_id'] = 'SelfSelectedPINKeyID'
      @_hash['self_selected_pin_session_key'] = 'SelfSelectedPINSessionKey'
      @_hash['card_group_id'] = 'CardGroupId'
      @_hash['card_group_name'] = 'CardGroupName'
      @_hash['is_new_card_group'] = 'IsNewCardGroup'
      @_hash['emboss_card_group'] = 'EmbossCardGroup'
      @_hash['card_delivery_type'] = 'CardDeliveryType'
      @_hash['card_contact'] = 'CardContact'
      @_hash['pin_delivery_address_type'] = 'PINDeliveryAddressType'
      @_hash['pin_advice_type'] = 'PINAdviceType'
      @_hash['pin_contact'] = 'PINContact'
      @_hash['notify_caller'] = 'NotifyCaller'
      @_hash['caller'] = 'Caller'
      @_hash['notify_caller_on_sync'] = 'NotifyCallerOnSync'
      @_hash['validate_fleet_id'] = 'ValidateFleetId'
      @_hash['fleet_option'] = 'FleetOption'
      @_hash['bundle_id'] = 'BundleId'
      @_hash['usage_restriction_action'] = 'UsageRestrictionAction'
      @_hash['product_restriction_action'] = 'ProductRestrictionAction'
      @_hash['products'] = 'Products'
      @_hash['product_groups'] = 'ProductGroups'
      @_hash['expiry_date'] = 'ExpiryDate'
      @_hash['client_reference_id'] = 'ClientReferenceId'
      @_hash['auto_renew'] = 'AutoRenew'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payer_id
        payer_number
        account_id
        account_number
        col_co_code
        col_co_id
        card_type_id
        token_type_id
        emboss_text
        vrn
        driver_name
        odometer_input_required
        fleet_id_input_required
        purchase_category_id
        self_selected_encrypted_pin
        self_selected_pin_key_id
        self_selected_pin_session_key
        card_group_id
        card_group_name
        is_new_card_group
        emboss_card_group
        card_contact
        pin_delivery_address_type
        pin_contact
        notify_caller
        caller
        notify_caller_on_sync
        validate_fleet_id
        fleet_option
        bundle_id
        usage_restriction_action
        product_restriction_action
        products
        product_groups
        expiry_date
        client_reference_id
        auto_renew
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        payer_id
        payer_number
        account_id
        account_number
        col_co_code
        col_co_id
        card_type_id
        token_type_id
        emboss_text
        vrn
        driver_name
        purchase_category_id
        self_selected_pin_key_id
        self_selected_pin_session_key
        card_group_id
        card_group_name
        card_delivery_type
        pin_delivery_address_type
        pin_advice_type
        caller
        fleet_option
        bundle_id
        usage_restriction_action
        product_restriction_action
        expiry_date
        client_reference_id
      ]
    end

    def initialize(card_delivery_type = nil,
                   pin_advice_type = nil,
                   payer_id = SKIP,
                   payer_number = SKIP,
                   account_id = SKIP,
                   account_number = SKIP,
                   col_co_code = SKIP,
                   col_co_id = SKIP,
                   card_type_id = SKIP,
                   token_type_id = SKIP,
                   emboss_text = SKIP,
                   vrn = SKIP,
                   driver_name = SKIP,
                   odometer_input_required = SKIP,
                   fleet_id_input_required = SKIP,
                   purchase_category_id = SKIP,
                   self_selected_encrypted_pin = SKIP,
                   self_selected_pin_key_id = SKIP,
                   self_selected_pin_session_key = SKIP,
                   card_group_id = SKIP,
                   card_group_name = SKIP,
                   is_new_card_group = SKIP,
                   emboss_card_group = SKIP,
                   card_contact = SKIP,
                   pin_delivery_address_type = SKIP,
                   pin_contact = SKIP,
                   notify_caller = SKIP,
                   caller = SKIP,
                   notify_caller_on_sync = SKIP,
                   validate_fleet_id = SKIP,
                   fleet_option = SKIP,
                   bundle_id = SKIP,
                   usage_restriction_action = SKIP,
                   product_restriction_action = SKIP,
                   products = SKIP,
                   product_groups = SKIP,
                   expiry_date = SKIP,
                   client_reference_id = SKIP,
                   auto_renew = SKIP)
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @card_type_id = card_type_id unless card_type_id == SKIP
      @token_type_id = token_type_id unless token_type_id == SKIP
      @emboss_text = emboss_text unless emboss_text == SKIP
      @vrn = vrn unless vrn == SKIP
      @driver_name = driver_name unless driver_name == SKIP
      @odometer_input_required = odometer_input_required unless odometer_input_required == SKIP
      @fleet_id_input_required = fleet_id_input_required unless fleet_id_input_required == SKIP
      @purchase_category_id = purchase_category_id unless purchase_category_id == SKIP
      unless self_selected_encrypted_pin == SKIP
        @self_selected_encrypted_pin =
          self_selected_encrypted_pin
      end
      @self_selected_pin_key_id = self_selected_pin_key_id unless self_selected_pin_key_id == SKIP
      unless self_selected_pin_session_key == SKIP
        @self_selected_pin_session_key =
          self_selected_pin_session_key
      end
      @card_group_id = card_group_id unless card_group_id == SKIP
      @card_group_name = card_group_name unless card_group_name == SKIP
      @is_new_card_group = is_new_card_group unless is_new_card_group == SKIP
      @emboss_card_group = emboss_card_group unless emboss_card_group == SKIP
      @card_delivery_type = card_delivery_type
      @card_contact = card_contact unless card_contact == SKIP
      unless pin_delivery_address_type == SKIP
        @pin_delivery_address_type =
          pin_delivery_address_type
      end
      @pin_advice_type = pin_advice_type
      @pin_contact = pin_contact unless pin_contact == SKIP
      @notify_caller = notify_caller unless notify_caller == SKIP
      @caller = caller unless caller == SKIP
      @notify_caller_on_sync = notify_caller_on_sync unless notify_caller_on_sync == SKIP
      @validate_fleet_id = validate_fleet_id unless validate_fleet_id == SKIP
      @fleet_option = fleet_option unless fleet_option == SKIP
      @bundle_id = bundle_id unless bundle_id == SKIP
      @usage_restriction_action = usage_restriction_action unless usage_restriction_action == SKIP
      unless product_restriction_action == SKIP
        @product_restriction_action =
          product_restriction_action
      end
      @products = products unless products == SKIP
      @product_groups = product_groups unless product_groups == SKIP
      @expiry_date = expiry_date unless expiry_date == SKIP
      @client_reference_id = client_reference_id unless client_reference_id == SKIP
      @auto_renew = auto_renew unless auto_renew == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_delivery_type =
        hash.key?('CardDeliveryType') ? hash['CardDeliveryType'] : nil
      pin_advice_type = hash.key?('PINAdviceType') ? hash['PINAdviceType'] : nil
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      card_type_id = hash.key?('CardTypeId') ? hash['CardTypeId'] : SKIP
      token_type_id = hash.key?('TokenTypeId') ? hash['TokenTypeId'] : SKIP
      emboss_text = hash.key?('EmbossText') ? hash['EmbossText'] : SKIP
      vrn = hash.key?('VRN') ? hash['VRN'] : SKIP
      driver_name = hash.key?('DriverName') ? hash['DriverName'] : SKIP
      odometer_input_required =
        hash.key?('OdometerInputRequired') ? hash['OdometerInputRequired'] : SKIP
      fleet_id_input_required =
        hash.key?('FleetIdInputRequired') ? hash['FleetIdInputRequired'] : SKIP
      purchase_category_id =
        hash.key?('PurchaseCategoryId') ? hash['PurchaseCategoryId'] : SKIP
      self_selected_encrypted_pin =
        hash.key?('SelfSelectedEncryptedPIN') ? hash['SelfSelectedEncryptedPIN'] : SKIP
      self_selected_pin_key_id =
        hash.key?('SelfSelectedPINKeyID') ? hash['SelfSelectedPINKeyID'] : SKIP
      self_selected_pin_session_key =
        hash.key?('SelfSelectedPINSessionKey') ? hash['SelfSelectedPINSessionKey'] : SKIP
      card_group_id = hash.key?('CardGroupId') ? hash['CardGroupId'] : SKIP
      card_group_name =
        hash.key?('CardGroupName') ? hash['CardGroupName'] : SKIP
      is_new_card_group =
        hash.key?('IsNewCardGroup') ? hash['IsNewCardGroup'] : SKIP
      emboss_card_group =
        hash.key?('EmbossCardGroup') ? hash['EmbossCardGroup'] : SKIP
      card_contact = CardDeliveryContact.from_hash(hash['CardContact']) if hash['CardContact']
      pin_delivery_address_type =
        hash.key?('PINDeliveryAddressType') ? hash['PINDeliveryAddressType'] : SKIP
      pin_contact = PINDeliveryContact.from_hash(hash['PINContact']) if hash['PINContact']
      notify_caller = hash.key?('NotifyCaller') ? hash['NotifyCaller'] : SKIP
      caller = hash.key?('Caller') ? hash['Caller'] : SKIP
      notify_caller_on_sync =
        hash.key?('NotifyCallerOnSync') ? hash['NotifyCallerOnSync'] : SKIP
      validate_fleet_id =
        hash.key?('ValidateFleetId') ? hash['ValidateFleetId'] : SKIP
      fleet_option = hash.key?('FleetOption') ? hash['FleetOption'] : SKIP
      bundle_id = hash.key?('BundleId') ? hash['BundleId'] : SKIP
      usage_restriction_action =
        hash.key?('UsageRestrictionAction') ? hash['UsageRestrictionAction'] : SKIP
      product_restriction_action =
        hash.key?('ProductRestrictionAction') ? hash['ProductRestrictionAction'] : SKIP
      products = hash.key?('Products') ? hash['Products'] : SKIP
      product_groups = hash.key?('ProductGroups') ? hash['ProductGroups'] : SKIP
      expiry_date = hash.key?('ExpiryDate') ? hash['ExpiryDate'] : SKIP
      client_reference_id =
        hash.key?('ClientReferenceId') ? hash['ClientReferenceId'] : SKIP
      auto_renew = hash.key?('AutoRenew') ? hash['AutoRenew'] : SKIP

      # Create object from extracted values.
      CardDetail.new(card_delivery_type,
                     pin_advice_type,
                     payer_id,
                     payer_number,
                     account_id,
                     account_number,
                     col_co_code,
                     col_co_id,
                     card_type_id,
                     token_type_id,
                     emboss_text,
                     vrn,
                     driver_name,
                     odometer_input_required,
                     fleet_id_input_required,
                     purchase_category_id,
                     self_selected_encrypted_pin,
                     self_selected_pin_key_id,
                     self_selected_pin_session_key,
                     card_group_id,
                     card_group_name,
                     is_new_card_group,
                     emboss_card_group,
                     card_contact,
                     pin_delivery_address_type,
                     pin_contact,
                     notify_caller,
                     caller,
                     notify_caller_on_sync,
                     validate_fleet_id,
                     fleet_option,
                     bundle_id,
                     usage_restriction_action,
                     product_restriction_action,
                     products,
                     product_groups,
                     expiry_date,
                     client_reference_id,
                     auto_renew)
    end
  end
end
