# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Encapsulates the details of a Summary Request. Summary Request fields are
  # same as the Search Request base class and no new fields are required.
  class SummaryRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account ID of the customer.<br/> Optional.<br/> This input is a search
    # criterion, if given.
    # @return [Integer]
    attr_accessor :account_id

    # Account Number of the customer.<br/> Optional.<br/> This input is a search
    # criterion, if given.
    # @return [String]
    attr_accessor :account_number

    # Collecting Company Code (Shell Code) of the selected payer. <br />
    # Optional If ColCo Id or ColCoCountryCode is passed else Mandatory.<br />
    # @return [Integer]
    attr_accessor :col_co_code

    # The 2 character ISO Code for the customer and card owning country.<br />
    # Optional If ColCoId or ColCoCode is passed else Mandatory.<br />
    # @return [String]
    attr_accessor :col_co_country_code

    # Collecting Company Id (in ) of the selected payer.<br />
    # Optional If ColCo Codeor ColCoCountryCode is passed else Mandatory <br />
    # @return [Integer]
    attr_accessor :col_co_id

    # Payer Id (i.e. Customer Id of the Payment Customer ) of the selected
    # payer.<br />
    # Optional if PayerNumber is passed else Mandatory
    # @return [Integer]
    attr_accessor :payer_id

    # Payer Number of the selected payer.<br />
    # Optional if PayerId is passed else Mandatory
    # @return [String]
    attr_accessor :payer_number

    # Card group id.<br />
    # Optional. <br />
    # This input is a search criterion, if given.<br />
    # When -1 is passed, those cards that does not belong to any card group will
    # be returned.
    # @return [Integer]
    attr_accessor :card_group_id

    # Card group name.<br />
    # Optional.<br />
    # This input is a search criterion, if given.<br />
    # If CardGroupId is provided then this search criterion will be ignored,
    # else, those cards that have the card group name completely matching with
    # the entered value will be returned
    # @return [String]
    attr_accessor :card_group_name

    # Status of the card.<br />
    # Mandatory.<br />
    # Multiple statuses are allowed to be included in the search criteria.<br />
    # CardStatus filter accepts either of the two values for each status as
    # described below. However, the output field “StatusDescription” is aligned
    # with second value highlighted in italics.<br />
    # Below are the possible allowed statuses: <br />
    # • ACTIVE or Active – Cards at status Active (The result will include all
    # the cards having the following intermediate statuses as defined s, if the
    # IncludeIntermediateStatus flag is true: Active (Block in progress), Active
    # (Cancel in progress), Active (Marked as damaged)), New (Cancel in
    # progress).<br />
    # • ON_ORDER or New – Cards at status New <br />
    # • EXPIRED or Expired – Cards at status Expired<br />
    # • BLOCKED or Blocked Card – Cards at status Block (The result will include
    # all cards having the following intermediate status as defined, if the
    # IncludeIntermediateStatus flag is true: Blocked card (Unblock in
    # progress))<br />
    # • TEMP_BLOCKED_CUSTOMER or Temporary Block(Customer) – Cards at status
    # Temporary Blocked By Customer<br />
    # • TEMP_BLOCKED_SHELL or Temporary Block (Shell) – Cards at Status
    # Temporary Blocked by Shell<br />
    # • CANCELLED or Cancelled – Cards at status Cancelled<br />
    # • PENDING_RENEWAL or Pending Renewal - Cards that are in renewal
    # process<br />
    # • REPLACED or Replaced – Cards at Status Replaced<br />
    # • FRAUD or Fraud – Cards at Status FRAUD<br />
    # • ALL
    # @return [Array[String]]
    attr_accessor :card_status

    # Cards active and expiring in given number of days.<br />
    # Optional<br />
    # Note: When a value is passed in this parameter, only active cards will be
    # considered while searching.
    # @return [Integer]
    attr_accessor :expiring_in_days

    # If provided, only list cards issued after the given date<br />
    # Optional<br />
    # Format: yyyyMMdd<br />
    # Note: Clients to convert this to appropriate DateTime type.
    # @return [String]
    attr_accessor :issued_after

    # Last digits of the PAN number<br />
    # Minimum 4 last digits of the card should be sent for this field to be
    # considered as part of the search criteria.<br />
    # Optional<br />
    # Max Length: 50
    # @return [String]
    attr_accessor :pan_ends_with

    # Driver Name embossed on the card<br />
    # Optional<br />
    # Up to 10 driver names could be passed in the parameter.<br />
    # Minimum of 4 characters should be provided for each driver name else not
    # considered.<br />
    # Those cards will be returned when part of the driver name matches with any
    # of the string passed in the list.<br />
    # Max Length for each Driver name: 50
    # @return [Array[String]]
    attr_accessor :driver_name

    # Vehicle Registration embossed on the card<br />
    # Optional<br />
    # Up to 10 vehicle registration numbers could be passed in the parameter.<br
    # />
    # Minimum of 4 characters should be provided for each VRN else not
    # considered<br />
    # Those cards will be returned when part of the VRN matches with any of the
    # string passed in the list.<br />
    # Max Length for each VRN: 50
    # @return [Array[String]]
    attr_accessor :vehicle_registration_number

    # List of SearchCard entity i.e., Card Id or PAN, which needs to be included
    # in the response.<br />
    # Details of the SerachCard entity are given below.
    # @return [Array[SearchCard]]
    attr_accessor :include_cards

    # List of SearchCard entity i.e., Card Id or PAN, which needs to be excluded
    # in the response. <br />
    # Details of the SerachCard entity are given below.
    # @return [Array[SearchCard]]
    attr_accessor :exclude_cards

    # Bundle Id for the Card, which needs to be excluded in the response.<br />
    # Optional
    # @return [String]
    attr_accessor :exclude_bundle_id

    # Market segment to which card belongs to.<br />
    # Optional.<br />
    # Allowed values<br />
    # • CRT<br />
    # • Fleet
    # @return [String]
    attr_accessor :card_segment

    # Purchase category code of the card.<br />
    # Optional.
    # @return [String]
    attr_accessor :purchase_category_code

    # ISO code of the card i.e. first 7 digits of the PAN<br />
    # Optional.
    # @return [String]
    attr_accessor :card_type_code

    # Default value is True.<br />
    # When true, the API will not return cards that are at Pending Renewal
    # Status in Cards Platform
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_pending_renewal_cards

    # Default value is True.<br />
    # When true, the API will not return cards that are at Cancelled Status in
    # Cards Platform
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_cancelled_cards

    # Default value is False.<br />
    # When true, the API will not return cards that are at Replaced Status in
    # Cards Platform
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_replaced_cards

    # Default value is False.<br />
    # When true, the API will not return cards that are at Fraud Status in Cards
    # Platform
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_fraud_cards

    # Optional<br />
    # When passed, the API will not return cards that are currently in the Card
    # Group specified
    # @return [Integer]
    attr_accessor :exclude_card_group_id

    # Optional<br />
    # When passed, the API will not return cards that are currently in the Card
    # Group specified
    # @return [String]
    attr_accessor :exclude_card_group_name

    # Card Creation Date<br />
    # Optional<br />
    # Format: yyyyMMdd
    # @return [String]
    attr_accessor :creation_date

    # Effective date for the Card<br />
    # Optional<br />
    # Format: yyyyMMdd
    # @return [String]
    attr_accessor :effective_date

    # Cards allowed to be used in site.<br />
    # Optional.<br />
    # Allowed values<br />
    # • ShellSitesOnly<br />
    # • PartnersSitesIncluded<br />
    # @return [String]
    attr_accessor :network

    # Cards allowed to used nationally/internationally.<br />
    # Optional.<br />
    # Allowed values<br />
    #  -National<br />
    #  -International
    # @return [String]
    attr_accessor :coverage

    # Month in which the card is expiring.<br />
    # Optional.<br />
    # Format: MMYYYY
    # @return [String]
    attr_accessor :expiry_month

    # Default Value: False<br />
    # When this field is set to True, cards with below status 2 years
    # (configurable) ago and earlier are excluded from the result<br />
    #  -Blocked Card<br />
    #  -Expired<br />
    #  -Cancelled<br />
    #  -Suspended<br />
    #  -Blocked<br />
    #  -Expired and Cancelled<br />
    #  -Replaced<br />
    #  -Replaced By<br />
    #  -Closed<br />
    #  -Fraud<br />
    # @return [TrueClass | FalseClass]
    attr_accessor :exclude_old_cards

    # Default Value: All<br />
    # Optional<br />
    # This option is used to filter the list of cards with ‘ReissueSetting’.<br
    # />
    # If ‘True’, the API will return cards with ReIssueSetting value is true.<br
    # />
    # If ‘False’, the API will return cards with ReIsssueSetting value is
    # false.<br />
    # If ‘ALL’, API will return cards with ReIssueSetting value True &amp; False
    # both.<br />
    # Allowed Values:<br />
    # 1.    All<br />
    # 2.    True<br />
    # 3.    False
    # @return [String]
    attr_accessor :reissue_setting

    # Default Value: All<br />
    # Optional<br />
    # This option is used to filter the list of cards with ‘ReissueSetting’.<br
    # />
    # If ‘True’, the API will return cards with ReIssueSetting value is true.<br
    # />
    # If ‘False’, the API will return cards with ReIsssueSetting value is
    # false.<br />
    # If ‘ALL’, API will return cards with ReIssueSetting value True &amp; False
    # both.<br />
    # Allowed Values:<br />
    # 1.    All<br />
    # 2.    True<br />
    # 3.    False
    # @return [String]
    attr_accessor :request_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_country_code'] = 'ColCoCountryCode'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['card_group_id'] = 'CardGroupId'
      @_hash['card_group_name'] = 'CardGroupName'
      @_hash['card_status'] = 'CardStatus'
      @_hash['expiring_in_days'] = 'ExpiringInDays'
      @_hash['issued_after'] = 'IssuedAfter'
      @_hash['pan_ends_with'] = 'PANEndsWith'
      @_hash['driver_name'] = 'DriverName'
      @_hash['vehicle_registration_number'] = 'VehicleRegistrationNumber'
      @_hash['include_cards'] = 'IncludeCards'
      @_hash['exclude_cards'] = 'ExcludeCards'
      @_hash['exclude_bundle_id'] = 'ExcludeBundleId'
      @_hash['card_segment'] = 'CardSegment'
      @_hash['purchase_category_code'] = 'PurchaseCategoryCode'
      @_hash['card_type_code'] = 'CardTypeCode'
      @_hash['exclude_pending_renewal_cards'] = 'ExcludePendingRenewalCards'
      @_hash['exclude_cancelled_cards'] = 'ExcludeCancelledCards'
      @_hash['exclude_replaced_cards'] = 'ExcludeReplacedCards'
      @_hash['exclude_fraud_cards'] = 'ExcludeFraudCards'
      @_hash['exclude_card_group_id'] = 'ExcludeCardGroupId'
      @_hash['exclude_card_group_name'] = 'ExcludeCardGroupName'
      @_hash['creation_date'] = 'CreationDate'
      @_hash['effective_date'] = 'EffectiveDate'
      @_hash['network'] = 'Network'
      @_hash['coverage'] = 'Coverage'
      @_hash['expiry_month'] = 'ExpiryMonth'
      @_hash['exclude_old_cards'] = 'ExcludeOldCards'
      @_hash['reissue_setting'] = 'ReissueSetting'
      @_hash['request_id'] = 'RequestId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_id
        account_number
        col_co_code
        col_co_country_code
        col_co_id
        payer_id
        payer_number
        card_group_id
        card_group_name
        expiring_in_days
        issued_after
        pan_ends_with
        driver_name
        vehicle_registration_number
        include_cards
        exclude_cards
        exclude_bundle_id
        card_segment
        purchase_category_code
        card_type_code
        exclude_pending_renewal_cards
        exclude_cancelled_cards
        exclude_replaced_cards
        exclude_fraud_cards
        exclude_card_group_id
        exclude_card_group_name
        creation_date
        effective_date
        network
        coverage
        expiry_month
        exclude_old_cards
        reissue_setting
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        account_id
        account_number
        col_co_code
        col_co_country_code
        col_co_id
        payer_id
        payer_number
        card_group_id
        card_group_name
        card_status
        expiring_in_days
        issued_after
        pan_ends_with
        exclude_bundle_id
        card_segment
        purchase_category_code
        card_type_code
        exclude_card_group_id
        exclude_card_group_name
        creation_date
        effective_date
        network
        coverage
        expiry_month
        reissue_setting
        request_id
      ]
    end

    def initialize(card_status = nil, request_id = nil, account_id = SKIP,
                   account_number = SKIP, col_co_code = SKIP,
                   col_co_country_code = SKIP, col_co_id = SKIP,
                   payer_id = SKIP, payer_number = SKIP, card_group_id = SKIP,
                   card_group_name = SKIP, expiring_in_days = SKIP,
                   issued_after = SKIP, pan_ends_with = SKIP,
                   driver_name = SKIP, vehicle_registration_number = SKIP,
                   include_cards = SKIP, exclude_cards = SKIP,
                   exclude_bundle_id = SKIP, card_segment = SKIP,
                   purchase_category_code = SKIP, card_type_code = SKIP,
                   exclude_pending_renewal_cards = SKIP,
                   exclude_cancelled_cards = SKIP,
                   exclude_replaced_cards = SKIP, exclude_fraud_cards = SKIP,
                   exclude_card_group_id = SKIP, exclude_card_group_name = SKIP,
                   creation_date = SKIP, effective_date = SKIP, network = SKIP,
                   coverage = SKIP, expiry_month = SKIP,
                   exclude_old_cards = SKIP, reissue_setting = SKIP)
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_country_code = col_co_country_code unless col_co_country_code == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @card_group_id = card_group_id unless card_group_id == SKIP
      @card_group_name = card_group_name unless card_group_name == SKIP
      @card_status = card_status
      @expiring_in_days = expiring_in_days unless expiring_in_days == SKIP
      @issued_after = issued_after unless issued_after == SKIP
      @pan_ends_with = pan_ends_with unless pan_ends_with == SKIP
      @driver_name = driver_name unless driver_name == SKIP
      unless vehicle_registration_number == SKIP
        @vehicle_registration_number =
          vehicle_registration_number
      end
      @include_cards = include_cards unless include_cards == SKIP
      @exclude_cards = exclude_cards unless exclude_cards == SKIP
      @exclude_bundle_id = exclude_bundle_id unless exclude_bundle_id == SKIP
      @card_segment = card_segment unless card_segment == SKIP
      @purchase_category_code = purchase_category_code unless purchase_category_code == SKIP
      @card_type_code = card_type_code unless card_type_code == SKIP
      unless exclude_pending_renewal_cards == SKIP
        @exclude_pending_renewal_cards =
          exclude_pending_renewal_cards
      end
      @exclude_cancelled_cards = exclude_cancelled_cards unless exclude_cancelled_cards == SKIP
      @exclude_replaced_cards = exclude_replaced_cards unless exclude_replaced_cards == SKIP
      @exclude_fraud_cards = exclude_fraud_cards unless exclude_fraud_cards == SKIP
      @exclude_card_group_id = exclude_card_group_id unless exclude_card_group_id == SKIP
      @exclude_card_group_name = exclude_card_group_name unless exclude_card_group_name == SKIP
      @creation_date = creation_date unless creation_date == SKIP
      @effective_date = effective_date unless effective_date == SKIP
      @network = network unless network == SKIP
      @coverage = coverage unless coverage == SKIP
      @expiry_month = expiry_month unless expiry_month == SKIP
      @exclude_old_cards = exclude_old_cards unless exclude_old_cards == SKIP
      @reissue_setting = reissue_setting unless reissue_setting == SKIP
      @request_id = request_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_status = hash.key?('CardStatus') ? hash['CardStatus'] : nil
      request_id = hash.key?('RequestId') ? hash['RequestId'] : nil
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_country_code =
        hash.key?('ColCoCountryCode') ? hash['ColCoCountryCode'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      card_group_id = hash.key?('CardGroupId') ? hash['CardGroupId'] : SKIP
      card_group_name =
        hash.key?('CardGroupName') ? hash['CardGroupName'] : SKIP
      expiring_in_days =
        hash.key?('ExpiringInDays') ? hash['ExpiringInDays'] : SKIP
      issued_after = hash.key?('IssuedAfter') ? hash['IssuedAfter'] : SKIP
      pan_ends_with = hash.key?('PANEndsWith') ? hash['PANEndsWith'] : SKIP
      driver_name = hash.key?('DriverName') ? hash['DriverName'] : SKIP
      vehicle_registration_number =
        hash.key?('VehicleRegistrationNumber') ? hash['VehicleRegistrationNumber'] : SKIP
      # Parameter is an array, so we need to iterate through it
      include_cards = nil
      unless hash['IncludeCards'].nil?
        include_cards = []
        hash['IncludeCards'].each do |structure|
          include_cards << (SearchCard.from_hash(structure) if structure)
        end
      end

      include_cards = SKIP unless hash.key?('IncludeCards')
      # Parameter is an array, so we need to iterate through it
      exclude_cards = nil
      unless hash['ExcludeCards'].nil?
        exclude_cards = []
        hash['ExcludeCards'].each do |structure|
          exclude_cards << (SearchCard.from_hash(structure) if structure)
        end
      end

      exclude_cards = SKIP unless hash.key?('ExcludeCards')
      exclude_bundle_id =
        hash.key?('ExcludeBundleId') ? hash['ExcludeBundleId'] : SKIP
      card_segment = hash.key?('CardSegment') ? hash['CardSegment'] : SKIP
      purchase_category_code =
        hash.key?('PurchaseCategoryCode') ? hash['PurchaseCategoryCode'] : SKIP
      card_type_code = hash.key?('CardTypeCode') ? hash['CardTypeCode'] : SKIP
      exclude_pending_renewal_cards =
        hash.key?('ExcludePendingRenewalCards') ? hash['ExcludePendingRenewalCards'] : SKIP
      exclude_cancelled_cards =
        hash.key?('ExcludeCancelledCards') ? hash['ExcludeCancelledCards'] : SKIP
      exclude_replaced_cards =
        hash.key?('ExcludeReplacedCards') ? hash['ExcludeReplacedCards'] : SKIP
      exclude_fraud_cards =
        hash.key?('ExcludeFraudCards') ? hash['ExcludeFraudCards'] : SKIP
      exclude_card_group_id =
        hash.key?('ExcludeCardGroupId') ? hash['ExcludeCardGroupId'] : SKIP
      exclude_card_group_name =
        hash.key?('ExcludeCardGroupName') ? hash['ExcludeCardGroupName'] : SKIP
      creation_date = hash.key?('CreationDate') ? hash['CreationDate'] : SKIP
      effective_date = hash.key?('EffectiveDate') ? hash['EffectiveDate'] : SKIP
      network = hash.key?('Network') ? hash['Network'] : SKIP
      coverage = hash.key?('Coverage') ? hash['Coverage'] : SKIP
      expiry_month = hash.key?('ExpiryMonth') ? hash['ExpiryMonth'] : SKIP
      exclude_old_cards =
        hash.key?('ExcludeOldCards') ? hash['ExcludeOldCards'] : SKIP
      reissue_setting =
        hash.key?('ReissueSetting') ? hash['ReissueSetting'] : SKIP

      # Create object from extracted values.
      SummaryRequest.new(card_status,
                         request_id,
                         account_id,
                         account_number,
                         col_co_code,
                         col_co_country_code,
                         col_co_id,
                         payer_id,
                         payer_number,
                         card_group_id,
                         card_group_name,
                         expiring_in_days,
                         issued_after,
                         pan_ends_with,
                         driver_name,
                         vehicle_registration_number,
                         include_cards,
                         exclude_cards,
                         exclude_bundle_id,
                         card_segment,
                         purchase_category_code,
                         card_type_code,
                         exclude_pending_renewal_cards,
                         exclude_cancelled_cards,
                         exclude_replaced_cards,
                         exclude_fraud_cards,
                         exclude_card_group_id,
                         exclude_card_group_name,
                         creation_date,
                         effective_date,
                         network,
                         coverage,
                         expiry_month,
                         exclude_old_cards,
                         reissue_setting)
    end
  end
end
