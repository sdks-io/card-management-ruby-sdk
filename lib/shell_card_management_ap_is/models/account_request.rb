# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # AccountRequest Model.
  class AccountRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Account Status.
    # Optional if StatusList is passed, else mandatory.
    # Ignored if StatusList is passed.
    # Allowed values:
    # •	ALL
    # •	ACTIVE
    # •	BLOCKED
    # •	CANCELLED
    # •	CREDITLOCK
    # •	DELINQUENCYLOCK
    # @return [String]
    attr_accessor :status

    # Include card summary details in the response.
    # When passed as false, the card summary related parameters on response will
    # be set to null.
    # Optional – default value: true.
    # @return [TrueClass | FalseClass]
    attr_accessor :include_card_summary

    # Payer id of the customer.
    # Optional if PayerNumber is passed, else Mandatory.
    # @return [Integer]
    attr_accessor :payer_id

    # PayerNumber of the customer.
    # Optional if PayerId is passed, else Mandatory.
    # @return [String]
    attr_accessor :payer_number

    # Page Size – Number of records to show on a page.
    # Optional
    # Default value 50
    # @return [Integer]
    attr_accessor :page_size

    # API Request Id
    # @return [String]
    attr_accessor :request_id

    # Collecting Company Code (Shell Code) of the selected payer. 
    # ColCoCode or ColCoCountryCode  is Mandatory for serviced OUs such as
    # Romania, Latvia, Lithuania, Estonia, Ukraine etc. It is optional for other
    # countries if ColCoID is provided.
    # @return [Integer]
    attr_accessor :col_co_code

    # The 2-character ISO Code for the customer and card owning country.
    # ColCoCode or ColCoCountryCode  is Mandatory for serviced OUs such as
    # Romania, Latvia, Lithuania, Estonia, Ukraine etc. It is optional for other
    # countries if ColCoID is provided.
    # @return [String]
    attr_accessor :col_co_country_code

    # Page Number (as shown to the users)
    # Optional
    # Default value 1
    # @return [Integer]
    attr_accessor :current_page

    # Optional – default value: false.
    # When passed as true, the API will return accounts that are configured as
    # Invoice Point only.
    # @return [TrueClass | FalseClass]
    attr_accessor :invoice_points_only

    # Collecting Company Id (in GFN) of the selected payer. 
    # Optional if ColCoCode or ColCoCountryCode  is passed else Mandatory.
    # @return [Integer]
    attr_accessor :col_co_id

    # Return e-Toll Customer details When True.
    # @return [TrueClass | FalseClass]
    attr_accessor :return_tolls_customer_id

    # Return e-Toll Customer details When True.
    # @return [Array[Accounts]]
    attr_accessor :accounts

    # Account Name of the customer.
    # Optional. 
    # Minimum of 4 characters should be provided else not considered.
    # Accounts those have the entered value at any part of the Name will be
    # returned.
    # @return [String]
    attr_accessor :account_name

    # Account Statuses.
    # Optional 
    # Multiple statuses are allowed to be included in the search criteria.
    # Allowed values:
    # •	ACTIVE
    # •	BLOCKED
    # •	CANCELLED
    # •	CREDITLOCK
    # •	DELINQUENCYLOCK
    # @return [Array[String]]
    attr_accessor :status_list

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'Status'
      @_hash['include_card_summary'] = 'IncludeCardSummary'
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['page_size'] = 'PageSize'
      @_hash['request_id'] = 'RequestId'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_country_code'] = 'ColCoCountryCode'
      @_hash['current_page'] = 'CurrentPage'
      @_hash['invoice_points_only'] = 'InvoicePointsOnly'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['return_tolls_customer_id'] = 'ReturnTollsCustomerId'
      @_hash['accounts'] = 'Accounts'
      @_hash['account_name'] = 'AccountName'
      @_hash['status_list'] = 'StatusList'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        include_card_summary
        payer_id
        payer_number
        page_size
        request_id
        col_co_code
        col_co_country_code
        current_page
        invoice_points_only
        col_co_id
        return_tolls_customer_id
        accounts
        account_name
        status_list
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        status
        payer_id
        payer_number
        page_size
        request_id
        col_co_code
        col_co_country_code
        current_page
        invoice_points_only
        col_co_id
        account_name
      ]
    end

    def initialize(status = SKIP,
                   include_card_summary = true,
                   payer_id = SKIP,
                   payer_number = SKIP,
                   page_size = SKIP,
                   request_id = SKIP,
                   col_co_code = SKIP,
                   col_co_country_code = SKIP,
                   current_page = SKIP,
                   invoice_points_only = false,
                   col_co_id = SKIP,
                   return_tolls_customer_id = SKIP,
                   accounts = SKIP,
                   account_name = SKIP,
                   status_list = SKIP)
      @status = status unless status == SKIP
      @include_card_summary = include_card_summary unless include_card_summary == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @page_size = page_size unless page_size == SKIP
      @request_id = request_id unless request_id == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_country_code = col_co_country_code unless col_co_country_code == SKIP
      @current_page = current_page unless current_page == SKIP
      @invoice_points_only = invoice_points_only unless invoice_points_only == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @return_tolls_customer_id = return_tolls_customer_id unless return_tolls_customer_id == SKIP
      @accounts = accounts unless accounts == SKIP
      @account_name = account_name unless account_name == SKIP
      @status_list = status_list unless status_list == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('Status') ? hash['Status'] : SKIP
      include_card_summary = hash['IncludeCardSummary'] ||= true
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      page_size = hash.key?('PageSize') ? hash['PageSize'] : SKIP
      request_id = hash.key?('RequestId') ? hash['RequestId'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_country_code =
        hash.key?('ColCoCountryCode') ? hash['ColCoCountryCode'] : SKIP
      current_page = hash.key?('CurrentPage') ? hash['CurrentPage'] : SKIP
      invoice_points_only = hash['InvoicePointsOnly'] ||= false
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      return_tolls_customer_id =
        hash.key?('ReturnTollsCustomerId') ? hash['ReturnTollsCustomerId'] : SKIP
      # Parameter is an array, so we need to iterate through it
      accounts = nil
      unless hash['Accounts'].nil?
        accounts = []
        hash['Accounts'].each do |structure|
          accounts << (Accounts.from_hash(structure) if structure)
        end
      end

      accounts = SKIP unless hash.key?('Accounts')
      account_name = hash.key?('AccountName') ? hash['AccountName'] : SKIP
      status_list = hash.key?('StatusList') ? hash['StatusList'] : SKIP

      # Create object from extracted values.
      AccountRequest.new(status,
                         include_card_summary,
                         payer_id,
                         payer_number,
                         page_size,
                         request_id,
                         col_co_code,
                         col_co_country_code,
                         current_page,
                         invoice_points_only,
                         col_co_id,
                         return_tolls_customer_id,
                         accounts,
                         account_name,
                         status_list)
    end
  end
end
