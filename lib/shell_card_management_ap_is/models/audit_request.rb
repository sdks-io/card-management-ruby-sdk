# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # AuditRequest Model.
  class AuditRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Status of requests to be fetched.
    # •    Success
    # •    Failed
    # •    InProgress
    # •    Submitted
    # •    Rejected
    # •    PendingApproval
    # •    All
    # •    MailedToCSC
    # Optional
    # If not passed “All” will be considered as the default value.
    # @return [String]
    attr_accessor :status

    # Payer Number of the selected payer.
    # Optional if PayerId is passed else Mandatory
    # @return [String]
    attr_accessor :payer_number

    # Payer Id  of the selected payer.
    # Optional if PayerNumber is passed else Mandatory
    # Example: 123456
    # @return [Integer]
    attr_accessor :payer_id

    # Payer Id  of the selected payer.
    # Optional if PayerNumber is passed else Mandatory
    # Example: 123456
    # @return [String]
    attr_accessor :account_number

    # Collecting Company Code (Shell Code) of the selected payer. 
    # Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia,
    # Ukraine etc. It is optional for other countries if ColCoID is provided.
    # Example:
    # 86 for Philippines
    # 5 for UK
    # @return [Integer]
    attr_accessor :col_co_code

    # Collecting Company Id  of the selected payer. 
    # Optional if ColCoCode is passed else Mandatory.
    # Example:
    # 1 for Philippines
    # 5 for UK
    # @return [Integer]
    attr_accessor :col_co_id

    # Collecting Company Id  of the selected payer. 
    # Optional if ColCoCode is passed else Mandatory.
    # Example:
    # 1 for Philippines
    # 5 for UK
    # @return [Accounts]
    attr_accessor :accounts

    # Page Size – Number of records to show on a page
    # Optional
    # Default value 50
    # @return [Integer]
    attr_accessor :page_size

    # Type of requests to be fetched.
    # Optional
    # Allowed values:
    # •    OrderCard
    # •    CreateCardGroup
    # •    PINReminder
    # •    MoveCard
    # •    UpdateCardStatus
    # •    UpdateCardGroup
    # •    AutoRenew
    # •    BulkCardOrder
    # •    BulkCardBlock
    # •    BulkCardOrderMultiAccount
    # •    MobilePaymentRegistration
    # •    UpdateCompanyInfo
    # •    BCOSummary
    # •    BCOMultiAccountSummary
    # •    BCBSummary
    # •    FundTransfer
    # •    DeliveryAddressUpdate
    # @return [Array[String]]
    attr_accessor :requested_operation

    # Allowed Sorting Options:
    # 1.    SubmittedDateDescending
    # 2.    SubmittedDateAscending 
    # 3.    AccountNumberAscending
    # 4.    AccountNumberDescending
    # Optional: Default value is 1
    # Example value to be passed: 1,3
    # @return [String]
    attr_accessor :sort_order

    # Search text used as criteria to filter the requests.
    # Optional
    # Minimum length is 4 characters (configurable). Else, an error (0007) will
    # be returned. When valid text is provided, MS will return all the records
    # that contains the Search Text within any of the look up fields
    # @return [String]
    attr_accessor :search_text

    # Page Number (as shown to the users)
    # Optional
    # Default value 1
    # @return [Integer]
    attr_accessor :current_page

    # To search for requests submitted from this date.
    # Optional
    # Maximum of X days duration allowed per search. The X value is configurable
    # and initially set to 180 days.
    # Format: yyyyMMdd
    # Example: 20200101
    # If FromDate is not provided and ToDate is provided, then FromDate will be
    # considered as 30 days less than ToDate. However, when both FromDate and
    # ToDate is not provided then last 30 days will be considered for filtering.
    # @return [String]
    attr_accessor :from_date

    # To search for requests submitted until this date.
    # Optional 
    # Format: yyyyMMdd 
    # Example: 20200130
    # If ToDate is not provided and FromDate is provided, then ToDate will be
    # considered as current date or 30 days from FromDate, whichever is earlier.
    # However, when both FromDate and ToDate is not provided then last 30 days
    # will be considered for filtering.
    # @return [String]
    attr_accessor :to_date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'Status'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['payer_id'] = 'PayerId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['accounts'] = 'Accounts'
      @_hash['page_size'] = 'PageSize'
      @_hash['requested_operation'] = 'RequestedOperation'
      @_hash['sort_order'] = 'SortOrder'
      @_hash['search_text'] = 'SearchText'
      @_hash['current_page'] = 'CurrentPage'
      @_hash['from_date'] = 'FromDate'
      @_hash['to_date'] = 'ToDate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        payer_number
        payer_id
        account_number
        col_co_code
        col_co_id
        accounts
        page_size
        requested_operation
        sort_order
        search_text
        current_page
        from_date
        to_date
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        payer_number
        payer_id
        account_number
        col_co_code
        col_co_id
        sort_order
        search_text
        current_page
        from_date
        to_date
      ]
    end

    def initialize(status = SKIP, payer_number = SKIP, payer_id = SKIP,
                   account_number = SKIP, col_co_code = SKIP, col_co_id = SKIP,
                   accounts = SKIP, page_size = SKIP,
                   requested_operation = SKIP, sort_order = SKIP,
                   search_text = SKIP, current_page = SKIP, from_date = SKIP,
                   to_date = SKIP)
      @status = status unless status == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @accounts = accounts unless accounts == SKIP
      @page_size = page_size unless page_size == SKIP
      @requested_operation = requested_operation unless requested_operation == SKIP
      @sort_order = sort_order unless sort_order == SKIP
      @search_text = search_text unless search_text == SKIP
      @current_page = current_page unless current_page == SKIP
      @from_date = from_date unless from_date == SKIP
      @to_date = to_date unless to_date == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('Status') ? hash['Status'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      accounts = Accounts.from_hash(hash['Accounts']) if hash['Accounts']
      page_size = hash.key?('PageSize') ? hash['PageSize'] : SKIP
      requested_operation =
        hash.key?('RequestedOperation') ? hash['RequestedOperation'] : SKIP
      sort_order = hash.key?('SortOrder') ? hash['SortOrder'] : SKIP
      search_text = hash.key?('SearchText') ? hash['SearchText'] : SKIP
      current_page = hash.key?('CurrentPage') ? hash['CurrentPage'] : SKIP
      from_date = hash.key?('FromDate') ? hash['FromDate'] : SKIP
      to_date = hash.key?('ToDate') ? hash['ToDate'] : SKIP

      # Create object from extracted values.
      AuditRequest.new(status,
                       payer_number,
                       payer_id,
                       account_number,
                       col_co_code,
                       col_co_id,
                       accounts,
                       page_size,
                       requested_operation,
                       sort_order,
                       search_text,
                       current_page,
                       from_date,
                       to_date)
    end
  end
end
