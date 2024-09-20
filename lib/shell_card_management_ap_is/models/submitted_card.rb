# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Response entity object for SubmittedCard list <br/>Note: This list will be
  # empty for status 9006 and 9012 i.e., request for all the cards failed.
  class SubmittedCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Reference number for tracking of replacement card order request of the
    # specific card,<br />
    # This is applicable for requests with target status as Block and
    # OrderReplacement passed as True.
    # @return [Integer]
    attr_accessor :replacement_card_reference

    # Reference number for tracking of update status request of the specific
    # card,
    # @return [Integer]
    attr_accessor :update_card_reference

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

    # Card PAN
    # @return [String]
    attr_accessor :masked_pan

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
      @_hash['replacement_card_reference'] = 'ReplacementCardReference'
      @_hash['update_card_reference'] = 'UpdateCardReference'
      @_hash['account_id'] = 'AccountId'
      @_hash['account_number'] = 'AccountNumber'
      @_hash['card_expiry_date'] = 'CardExpiryDate'
      @_hash['card_id'] = 'CardId'
      @_hash['col_co_code'] = 'ColCoCode'
      @_hash['col_co_id'] = 'ColCoId'
      @_hash['pan'] = 'PAN'
      @_hash['panid'] = 'PANID'
      @_hash['masked_pan'] = 'MaskedPAN'
      @_hash['payer_id'] = 'PayerId'
      @_hash['payer_number'] = 'PayerNumber'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        replacement_card_reference
        update_card_reference
        account_id
        account_number
        card_expiry_date
        card_id
        col_co_code
        col_co_id
        pan
        panid
        masked_pan
        payer_id
        payer_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        replacement_card_reference
        update_card_reference
        account_id
        account_number
        card_expiry_date
        card_id
        col_co_code
        col_co_id
        pan
        panid
        masked_pan
        payer_id
        payer_number
      ]
    end

    def initialize(replacement_card_reference = SKIP,
                   update_card_reference = SKIP, account_id = SKIP,
                   account_number = SKIP, card_expiry_date = SKIP,
                   card_id = SKIP, col_co_code = SKIP, col_co_id = SKIP,
                   pan = SKIP, panid = SKIP, masked_pan = SKIP, payer_id = SKIP,
                   payer_number = SKIP)
      unless replacement_card_reference == SKIP
        @replacement_card_reference =
          replacement_card_reference
      end
      @update_card_reference = update_card_reference unless update_card_reference == SKIP
      @account_id = account_id unless account_id == SKIP
      @account_number = account_number unless account_number == SKIP
      @card_expiry_date = card_expiry_date unless card_expiry_date == SKIP
      @card_id = card_id unless card_id == SKIP
      @col_co_code = col_co_code unless col_co_code == SKIP
      @col_co_id = col_co_id unless col_co_id == SKIP
      @pan = pan unless pan == SKIP
      @panid = panid unless panid == SKIP
      @masked_pan = masked_pan unless masked_pan == SKIP
      @payer_id = payer_id unless payer_id == SKIP
      @payer_number = payer_number unless payer_number == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      replacement_card_reference =
        hash.key?('ReplacementCardReference') ? hash['ReplacementCardReference'] : SKIP
      update_card_reference =
        hash.key?('UpdateCardReference') ? hash['UpdateCardReference'] : SKIP
      account_id = hash.key?('AccountId') ? hash['AccountId'] : SKIP
      account_number = hash.key?('AccountNumber') ? hash['AccountNumber'] : SKIP
      card_expiry_date =
        hash.key?('CardExpiryDate') ? hash['CardExpiryDate'] : SKIP
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP
      col_co_code = hash.key?('ColCoCode') ? hash['ColCoCode'] : SKIP
      col_co_id = hash.key?('ColCoId') ? hash['ColCoId'] : SKIP
      pan = hash.key?('PAN') ? hash['PAN'] : SKIP
      panid = hash.key?('PANID') ? hash['PANID'] : SKIP
      masked_pan = hash.key?('MaskedPAN') ? hash['MaskedPAN'] : SKIP
      payer_id = hash.key?('PayerId') ? hash['PayerId'] : SKIP
      payer_number = hash.key?('PayerNumber') ? hash['PayerNumber'] : SKIP

      # Create object from extracted values.
      SubmittedCard.new(replacement_card_reference,
                        update_card_reference,
                        account_id,
                        account_number,
                        card_expiry_date,
                        card_id,
                        col_co_code,
                        col_co_id,
                        pan,
                        panid,
                        masked_pan,
                        payer_id,
                        payer_number)
    end
  end
end
