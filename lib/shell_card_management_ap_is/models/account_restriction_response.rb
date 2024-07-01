# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # AccountRestrictionResponse Model.
  class AccountRestrictionResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Request Id of the API call
    # @return [String]
    attr_accessor :request_id

    # Account Id on which restriction is applied.
    # Example: 123456
    # @return [Integer]
    attr_accessor :account_id

    # Account Number on which restriction is applied.
    # Example: GB000000123
    # @return [String]
    attr_accessor :account_number

    # Status of the card usage restriction submitted to Gateway. Based on the
    # response from Gateway value will be set as either “Success” or “Failed”.
    # @return [String]
    attr_accessor :usage_restriction_status

    # Response for the usage restriction in case of an error. This field will
    # have a value only when “UsageRestrictionStatus” is “Failed”.
    # @return [String]
    attr_accessor :usage_restriction_description

    # Response for the usage restriction in case of an error. This field will
    # have a value only when “UsageRestrictionStatus” is “Failed”.
    # @return [ErrorStatus]
    attr_accessor :error

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'RequestId'
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['usage_restriction_status'] = 'UsageRestrictionStatus'
      @_hash['usage_restriction_description'] = 'UsageRestrictionDescription'
      @_hash['error'] = 'Error'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        request_id
        account_id
        account_number
        usage_restriction_status
        usage_restriction_description
        error
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        request_id
      ]
    end

    def initialize(request_id = SKIP, account_id = SKIP, account_number = SKIP,
                   usage_restriction_status = SKIP,
                   usage_restriction_description = SKIP, error = SKIP)
      @request_id = request_id unless request_id == SKIP
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @usage_restriction_status = usage_restriction_status unless usage_restriction_status == SKIP
      unless usage_restriction_description == SKIP
        @usage_restriction_description =
          usage_restriction_description
      end
      @error = error unless error == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('RequestId') ? hash['RequestId'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      usage_restriction_status =
        hash.key?('UsageRestrictionStatus') ? hash['UsageRestrictionStatus'] : SKIP
      usage_restriction_description =
        hash.key?('UsageRestrictionDescription') ? hash['UsageRestrictionDescription'] : SKIP
      error = ErrorStatus.from_hash(hash['Error']) if hash['Error']

      # Create object from extracted values.
      AccountRestrictionResponse.new(request_id,
                                     account_id,
                                     account_number,
                                     usage_restriction_status,
                                     usage_restriction_description,
                                     error)
    end
  end
end
