# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # LoggedInUserResponse Model.
  class LoggedInUserResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Logged in User Identifier
    # @return [String]
    attr_accessor :user_name

    # Name of the logged in user.
    # @return [String]
    attr_accessor :display_name

    # Single Sign On/Unique Identifier of the User in Identity Management system
    # @return [String]
    attr_accessor :id_mssoid

    # ISO culture code/ Language chosen by the logged in user
    # @return [String]
    attr_accessor :preferred_language

    # Whether the user is a super administrator
    # @return [TrueClass | FalseClass]
    attr_accessor :is_super_admin

    # Preferred Date format for the logged in user
    # @return [String]
    attr_accessor :date_format

    # Preferred Time format for the logged in user
    # @return [String]
    attr_accessor :time_format

    # Preferred Day to Begin the Week. The value will be between 1 to 7 or null.
    # @return [Integer]
    attr_accessor :week_begins

    # Preferred Display Week on Fuel Prices configuration for the logged in
    # User.
    # @return [TrueClass | FalseClass]
    attr_accessor :display_week

    # Preferred CSV Separator for the logged in user.
    # @return [String]
    attr_accessor :csv_separator

    # Preferred Decimal separator configured for the logged in user
    # Note: - Colco default value (configured at Microservices) is returned when
    # the user is not provided or does not exist.
    # @return [String]
    attr_accessor :decimal_separator

    # Preferred report format configured for the logged in user
    # @return [String]
    attr_accessor :report_format

    # True/False
    # True, if user has access to the requested API. This is validated based on
    # the role Vs API access matrix and client Vs API access matrix.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_api_access

    # List of roles the user have access to
    # @return [Array[Role]]
    attr_accessor :roles

    # List of payers which the user has access to.
    # •    It will return 250 payers only and it is configurable. If the user
    # has more than that, the remaining will be ignored.
    # •    The payer which is marked as default will be the first item in the
    # output.
    # Note: This list will be empty for users mapped with roles which has either
    # IsShellAdmin or IsServiceAccount set to true as their access level is
    # controlled at ColCo level only.
    # @return [Array[PayerAccess]]
    attr_accessor :payers

    # List of accounts which the user has access to.
    # Note: This list will be empty for users mapped with roles which has either
    # IsCustomerAdmin, IsShellAdmin or IsServiceAccount set to true as their
    # access level is controller at either ColCo or payer level only.
    # @return [Array[AccountAccess]]
    attr_accessor :accounts

    # List of collecting companies to which the user has access to 
    # Note: This list will be empty for users mapped with roles which has either
    # IsCustomerAdmin or IsCustomerUser set to true as their access level is
    # controller at Payer or Account level.
    # @return [Array[ColCoAccess]]
    attr_accessor :collecting_companies

    # List of Electronic Invoice Data configured for the user.
    # Note: This list will be empty if the value of EIDDetails is set to false
    # or empty in the request.
    # @return [Array[EIDAccess]]
    attr_accessor :eid_access_details

    # User classification by system.
    # @return [String]
    attr_accessor :user_classification_by_system

    # User classification by Shell.
    # @return [String]
    attr_accessor :user_classification_by_shell

    # Count of payers accessible to the user at the time when user was created
    # or last updated. 
    # Note:
    # Count may vary based on customer operations hence it may not be an up to
    # date value.
    # @return [Integer]
    attr_accessor :payer_count

    # Count of accounts at the time when the user was created or last updated. 
    # Note:
    # Count may vary based on customer operations hence it may not be an up to
    # date value.
    # @return [Integer]
    attr_accessor :account_count

    # Count of cards at the time when the user was created or last updated.
    # Note: 
    # Count may vary based on customer operations hence it may not be an up to
    # date value.
    # @return [Integer]
    attr_accessor :card_count

    # Count of cards at the time when the user was created or last updated.
    # Note: 
    # Count may vary based on customer operations hence it may not be an up to
    # date value.
    # @return [ErrorStatus]
    attr_accessor :error

    # Request Id of the API call
    # @return [String]
    attr_accessor :request_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['user_name'] = 'UserName'
      @_hash['display_name'] = 'DisplayName'
      @_hash['id_mssoid'] = 'IdMSSOID'
      @_hash['preferred_language'] = 'PreferredLanguage'
      @_hash['is_super_admin'] = 'IsSuperAdmin'
      @_hash['date_format'] = 'DateFormat'
      @_hash['time_format'] = 'TimeFormat'
      @_hash['week_begins'] = 'WeekBegins'
      @_hash['display_week'] = 'DisplayWeek'
      @_hash['csv_separator'] = 'CSVSeparator'
      @_hash['decimal_separator'] = 'DecimalSeparator'
      @_hash['report_format'] = 'ReportFormat'
      @_hash['has_api_access'] = 'HasAPIAccess'
      @_hash['roles'] = 'Roles'
      @_hash['payers'] = 'Payers'
      @_hash['accounts'] = 'Accounts'
      @_hash['collecting_companies'] = 'CollectingCompanies'
      @_hash['eid_access_details'] = 'EIDAccessDetails'
      @_hash['user_classification_by_system'] = 'UserClassificationBySystem'
      @_hash['user_classification_by_shell'] = 'UserClassificationByShell'
      @_hash['payer_count'] = 'PayerCount'
      @_hash['account_count'] = 'AccountCount'
      @_hash['card_count'] = 'CardCount'
      @_hash['error'] = 'Error'
      @_hash['request_id'] = 'RequestId'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        user_name
        display_name
        id_mssoid
        preferred_language
        is_super_admin
        date_format
        time_format
        week_begins
        display_week
        csv_separator
        decimal_separator
        report_format
        has_api_access
        roles
        payers
        accounts
        collecting_companies
        eid_access_details
        user_classification_by_system
        user_classification_by_shell
        payer_count
        account_count
        card_count
        error
        request_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        user_name
        display_name
        id_mssoid
        preferred_language
        date_format
        time_format
        week_begins
        csv_separator
        decimal_separator
        report_format
        user_classification_by_system
        user_classification_by_shell
        payer_count
        account_count
        card_count
      ]
    end

    def initialize(user_name = SKIP, display_name = SKIP, id_mssoid = SKIP,
                   preferred_language = SKIP, is_super_admin = false,
                   date_format = SKIP, time_format = SKIP, week_begins = SKIP,
                   display_week = true, csv_separator = SKIP,
                   decimal_separator = SKIP, report_format = SKIP,
                   has_api_access = true, roles = SKIP, payers = SKIP,
                   accounts = SKIP, collecting_companies = SKIP,
                   eid_access_details = SKIP,
                   user_classification_by_system = SKIP,
                   user_classification_by_shell = SKIP, payer_count = SKIP,
                   account_count = SKIP, card_count = SKIP, error = SKIP,
                   request_id = SKIP)
      @user_name = user_name unless user_name == SKIP
      @display_name = display_name unless display_name == SKIP
      @id_mssoid = id_mssoid unless id_mssoid == SKIP
      @preferred_language = preferred_language unless preferred_language == SKIP
      @is_super_admin = is_super_admin unless is_super_admin == SKIP
      @date_format = date_format unless date_format == SKIP
      @time_format = time_format unless time_format == SKIP
      @week_begins = week_begins unless week_begins == SKIP
      @display_week = display_week unless display_week == SKIP
      @csv_separator = csv_separator unless csv_separator == SKIP
      @decimal_separator = decimal_separator unless decimal_separator == SKIP
      @report_format = report_format unless report_format == SKIP
      @has_api_access = has_api_access unless has_api_access == SKIP
      @roles = roles unless roles == SKIP
      @payers = payers unless payers == SKIP
      @accounts = accounts unless accounts == SKIP
      @collecting_companies = collecting_companies unless collecting_companies == SKIP
      @eid_access_details = eid_access_details unless eid_access_details == SKIP
      unless user_classification_by_system == SKIP
        @user_classification_by_system =
          user_classification_by_system
      end
      unless user_classification_by_shell == SKIP
        @user_classification_by_shell =
          user_classification_by_shell
      end
      @payer_count = payer_count unless payer_count == SKIP
      @account_count = account_count unless account_count == SKIP
      @card_count = card_count unless card_count == SKIP
      @error = error unless error == SKIP
      @request_id = request_id unless request_id == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      user_name = hash.key?('UserName') ? hash['UserName'] : SKIP
      display_name = hash.key?('DisplayName') ? hash['DisplayName'] : SKIP
      id_mssoid = hash.key?('IdMSSOID') ? hash['IdMSSOID'] : SKIP
      preferred_language =
        hash.key?('PreferredLanguage') ? hash['PreferredLanguage'] : SKIP
      is_super_admin = hash['IsSuperAdmin'] ||= false
      date_format = hash.key?('DateFormat') ? hash['DateFormat'] : SKIP
      time_format = hash.key?('TimeFormat') ? hash['TimeFormat'] : SKIP
      week_begins = hash.key?('WeekBegins') ? hash['WeekBegins'] : SKIP
      display_week = hash['DisplayWeek'] ||= true
      csv_separator = hash.key?('CSVSeparator') ? hash['CSVSeparator'] : SKIP
      decimal_separator =
        hash.key?('DecimalSeparator') ? hash['DecimalSeparator'] : SKIP
      report_format = hash.key?('ReportFormat') ? hash['ReportFormat'] : SKIP
      has_api_access = hash['HasAPIAccess'] ||= true
      # Parameter is an array, so we need to iterate through it
      roles = nil
      unless hash['Roles'].nil?
        roles = []
        hash['Roles'].each do |structure|
          roles << (Role.from_hash(structure) if structure)
        end
      end

      roles = SKIP unless hash.key?('Roles')
      # Parameter is an array, so we need to iterate through it
      payers = nil
      unless hash['Payers'].nil?
        payers = []
        hash['Payers'].each do |structure|
          payers << (PayerAccess.from_hash(structure) if structure)
        end
      end

      payers = SKIP unless hash.key?('Payers')
      # Parameter is an array, so we need to iterate through it
      accounts = nil
      unless hash['Accounts'].nil?
        accounts = []
        hash['Accounts'].each do |structure|
          accounts << (AccountAccess.from_hash(structure) if structure)
        end
      end

      accounts = SKIP unless hash.key?('Accounts')
      # Parameter is an array, so we need to iterate through it
      collecting_companies = nil
      unless hash['CollectingCompanies'].nil?
        collecting_companies = []
        hash['CollectingCompanies'].each do |structure|
          collecting_companies << (ColCoAccess.from_hash(structure) if structure)
        end
      end

      collecting_companies = SKIP unless hash.key?('CollectingCompanies')
      # Parameter is an array, so we need to iterate through it
      eid_access_details = nil
      unless hash['EIDAccessDetails'].nil?
        eid_access_details = []
        hash['EIDAccessDetails'].each do |structure|
          eid_access_details << (EIDAccess.from_hash(structure) if structure)
        end
      end

      eid_access_details = SKIP unless hash.key?('EIDAccessDetails')
      user_classification_by_system =
        hash.key?('UserClassificationBySystem') ? hash['UserClassificationBySystem'] : SKIP
      user_classification_by_shell =
        hash.key?('UserClassificationByShell') ? hash['UserClassificationByShell'] : SKIP
      payer_count = hash.key?('PayerCount') ? hash['PayerCount'] : SKIP
      account_count = hash.key?('AccountCount') ? hash['AccountCount'] : SKIP
      card_count = hash.key?('CardCount') ? hash['CardCount'] : SKIP
      error = ErrorStatus.from_hash(hash['Error']) if hash['Error']
      request_id = hash.key?('RequestId') ? hash['RequestId'] : SKIP

      # Create object from extracted values.
      LoggedInUserResponse.new(user_name,
                               display_name,
                               id_mssoid,
                               preferred_language,
                               is_super_admin,
                               date_format,
                               time_format,
                               week_begins,
                               display_week,
                               csv_separator,
                               decimal_separator,
                               report_format,
                               has_api_access,
                               roles,
                               payers,
                               accounts,
                               collecting_companies,
                               eid_access_details,
                               user_classification_by_system,
                               user_classification_by_shell,
                               payer_count,
                               account_count,
                               card_count,
                               error,
                               request_id)
    end
  end
end
