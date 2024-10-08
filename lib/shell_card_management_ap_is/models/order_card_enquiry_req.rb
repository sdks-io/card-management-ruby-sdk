# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # This class holds Order Card Enquiry list based on which the Order Card
  # Enquiry need to be filtered.
  class OrderCardEnquiryReq < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account ID of the customer.<br/> Optional if AccountNumber is passed, else
    # mandatory. <br/> This input is a search criterion, if given.
    # @return [Integer]
    attr_accessor :account_id

    # Account Number of the customer.<br/> Optional if AccountId is passed, else
    # mandatory.<br/> This input is a search criterion, if given.
    # @return [String]
    attr_accessor :account_number

    # Collecting Company Code (Shell Code) of the selected payer. <br />
    # Optional – when ‘ReferenceNumber’ is provided.<br />
    # @return [Integer]
    attr_accessor :col_co_code

    # Collecting Company Id (in ) of the selected payer. <br />
    # Optional – when ‘ReferenceNumber’ is provided. Else, either ‘ColCoId’ or
    # ‘ColCoCode’ is mandatory.<br />
    # @return [Integer]
    attr_accessor :col_co_id

    # ISO 3166 Alpha-2 Country Code for the customer and card owning country.
    # @return [String]
    attr_accessor :col_co_country_code

    # Payer Id (i.e. Customer Id of the Payment Customer) of the selected
    # payer.<br />
    # Optional – when ‘ReferenceNumber’ is provided. Else, either ‘PayerId’ or
    # ‘PayerNumber’ is mandatory.
    # @return [Integer]
    attr_accessor :payer_id

    # Payer Number of the selected payer.<br />
    # Optional – when ‘ReferenceNumber’ is provided. Else, either ‘PayerId’ or
    # ‘PayerNumber’ is mandatory.
    # @return [String]
    attr_accessor :payer_number

    # Reference number of the Card Order/ Bulk Card Order/ Order Card
    # Request.<br />
    # Mandatory when ColCo and Payer fields are not provided. Else, optional.
    # @return [Integer]
    attr_accessor :reference_number

    # Type of the reference number provided.<br />
    # Mandatory if ReferenceNumber is provided. Else optional.<br />
    # Allowed Values:<br />
    # 1=Main Reference(Main Order Reference Number returned in the output of
    # Card/OrderCard service. <br />
    # 2=Order Card Reference (Reference number for each individual card in the
    # order submitted via Card/OrderCard service. <br />
    # 3=Bulk Order Card Reference (Reference number returned in the response of
    # bulkcardinterface /UploadOrderCardTemplate. )
    # @return [OrderCardEnquiryReqReferenceTypeEnum]
    attr_accessor :reference_type

    # Card Orders from Date/Time.<br />
    # Optional.<br />
    # Value should be with in last 7 days<br />
    # This field is ignored if ReferenceNumber is provided <br />
    # This field is optional when not provided and ReferenceNumber is null or
    # empty then the value should be set to D-7(Where D is current date)<br />
    # Format: yyyyMMdd
    # @return [String]
    attr_accessor :from_date

    # Card Order to Date/Time<br />
    # Optional<br />
    # Value should be with in last 7 days<br />
    # This field is ignored if ReferenceNumber is provided <br />
    # This field is optional when not provided and ReferenceNumber is null or
    # empty then the value should be set to current date<br />
    # Format: yyyyMMdd
    # @return [String]
    attr_accessor :to_date

    # Client provided Unique Id of the original Order Card request, the status
    # of which is enquired by this API
    # @return [String]
    attr_accessor :order_request_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['col_co_country_code'] = 'ColCoCountryCode'
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['reference_number'] = 'ReferenceNumber'
      @_hash['reference_type'] = 'ReferenceType'
      @_hash['from_date'] = 'FromDate'
      @_hash['to_date'] = 'ToDate'
      @_hash['order_request_id'] = 'OrderRequestId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        account_id
        account_number
        col_co_code
        col_co_id
        col_co_country_code
        payer_id
        payer_number
        reference_number
        reference_type
        from_date
        to_date
        order_request_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        account_id
        account_number
        col_co_code
        col_co_id
        col_co_country_code
        payer_id
        payer_number
        from_date
        to_date
        order_request_id
      ]
    end

    def initialize(account_id = SKIP, account_number = SKIP, col_co_code = SKIP,
                   col_co_id = SKIP, col_co_country_code = SKIP,
                   payer_id = SKIP, payer_number = SKIP,
                   reference_number = SKIP, reference_type = SKIP,
                   from_date = SKIP, to_date = SKIP, order_request_id = SKIP)
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @col_co_country_code = col_co_country_code unless col_co_country_code == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @reference_number = reference_number unless reference_number == SKIP
      @reference_type = reference_type unless reference_type == SKIP
      @from_date = from_date unless from_date == SKIP
      @to_date = to_date unless to_date == SKIP
      @order_request_id = order_request_id unless order_request_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      col_co_country_code =
        hash.key?('ColCoCountryCode') ? hash['ColCoCountryCode'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      reference_number =
        hash.key?('ReferenceNumber') ? hash['ReferenceNumber'] : SKIP
      reference_type = hash.key?('ReferenceType') ? hash['ReferenceType'] : SKIP
      from_date = hash.key?('FromDate') ? hash['FromDate'] : SKIP
      to_date = hash.key?('ToDate') ? hash['ToDate'] : SKIP
      order_request_id =
        hash.key?('OrderRequestId') ? hash['OrderRequestId'] : SKIP

      # Create object from extracted values.
      OrderCardEnquiryReq.new(account_id,
                              account_number,
                              col_co_code,
                              col_co_id,
                              col_co_country_code,
                              payer_id,
                              payer_number,
                              reference_number,
                              reference_type,
                              from_date,
                              to_date,
                              order_request_id)
    end
  end
end
