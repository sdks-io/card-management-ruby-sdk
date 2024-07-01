# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # CreateBundleRequest Model.
  class CreateBundleRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Collecting Company Id of the selected payer. 
    # Optional if ColCoCode is passed else Mandatory.
    # Example:
    # 1 for Philippines
    # 5 for UK
    # @return [Integer]
    attr_accessor :col_co_id

    # Collecting Company Code (Shell Code) of the selected payer. 
    # Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia,
    # Ukraine etc. It is optional for other countries if ColCoID is provided.
    # Example:
    # 86 for Philippines
    # 5 for UK
    # @return [Integer]
    attr_accessor :col_co_code

    # Payer Id of the selected payer.
    # Either PayerId or PayerNumber or both must be passed.
    # Example: 123456
    # @return [Integer]
    attr_accessor :payer_id

    # Payer Number of the selected payer.
    # Either PayerId or PayerNumber or both must be passed.
    # Example: GB000000123
    # @return [String]
    attr_accessor :payer_number

    # Account ID of the customer.
    # Either AccountId or AccountNumber or both must be passed.
    # Example: 123456
    # @return [Integer]
    attr_accessor :account_id

    # Account Number of the customer. 
    # Either AccountId or AccountNumber or both must be passed.
    # Example: GB000000123
    # @return [String]
    attr_accessor :account_number

    # Identifier of the bundle in external system.
    # Optional.
    # @return [String]
    attr_accessor :external_bundle_id

    # A bundle description.
    # Optional.
    # @return [String]
    attr_accessor :description

    # List of Card PANs to be added in the bundle.
    # Mandatory.
    # Example: 7002051006629890645
    # When PAN matches with multiple cards, the restriction will be applied on
    # the latest issued card.
    # @return [Array[String]]
    attr_accessor :cards

    # List of Card PANs to be added in the bundle.
    # Mandatory.
    # Example: 7002051006629890645
    # When PAN matches with multiple cards, the restriction will be applied on
    # the latest issued card.
    # @return [BundleRestriction]
    attr_accessor :restrictions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['external_bundle_id'] = 'ExternalBundleId'
      @_hash['description'] = 'Description'
      @_hash['cards'] = 'Cards'
      @_hash['restrictions'] = 'Restrictions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        col_co_id
        col_co_code
        payer_id
        payer_number
        account_id
        account_number
        external_bundle_id
        description
        cards
        restrictions
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        col_co_id
        col_co_code
        payer_id
        account_id
        account_number
        external_bundle_id
        restrictions
      ]
    end

    def initialize(col_co_id = SKIP, col_co_code = SKIP, payer_id = SKIP,
                   payer_number = SKIP, account_id = SKIP,
                   account_number = SKIP, external_bundle_id = SKIP,
                   description = SKIP, cards = SKIP, restrictions = SKIP)
      @col_co_id = col_co_id unless col_co_id == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @external_bundle_id = external_bundle_id unless external_bundle_id == SKIP
      @description = description unless description == SKIP
      @cards = cards unless cards == SKIP
      @restrictions = restrictions unless restrictions == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      external_bundle_id =
        hash.key?('ExternalBundleId') ? hash['ExternalBundleId'] : SKIP
      description = hash.key?('Description') ? hash['Description'] : SKIP
      cards = hash.key?('Cards') ? hash['Cards'] : SKIP
      restrictions = BundleRestriction.from_hash(hash['Restrictions']) if hash['Restrictions']

      # Create object from extracted values.
      CreateBundleRequest.new(col_co_id,
                              col_co_code,
                              payer_id,
                              payer_number,
                              account_id,
                              account_number,
                              external_bundle_id,
                              description,
                              cards,
                              restrictions)
    end
  end
end
