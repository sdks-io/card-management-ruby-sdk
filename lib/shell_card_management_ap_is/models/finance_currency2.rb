# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # FinanceCurrency2 Model.
  class FinanceCurrency2 < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Currency ISO Code used for the Finance Widget.
    # @return [String]
    attr_accessor :currency_code

    # Currency Symbol
    # @return [String]
    attr_accessor :currency_symbol

    # Factor to be used for converting the amounts in invoice currency to
    # finance widget currency. (If finance currency is same as invoice currency,
    # then the value of this field will be “1” so that the value does not
    # change)
    # @return [Float]
    attr_accessor :invoice_exchange_rate

    # Factor to be used for converting the amounts in credit limit currency to
    # finance widget currency. (If finance currency is same as credit limit
    # currency, then the value of this field will be “1” so that the value does
    # not change)
    # @return [Float]
    attr_accessor :credit_limit_exchange_rate

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['currency_code'] = 'CurrencyCode'
      @_hash['currency_symbol'] = 'CurrencySymbol'
      @_hash['invoice_exchange_rate'] = 'Invoice_ExchangeRate'
      @_hash['credit_limit_exchange_rate'] = 'CreditLimit_ExchangeRate'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        currency_code
        currency_symbol
        invoice_exchange_rate
        credit_limit_exchange_rate
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        currency_code
        currency_symbol
        invoice_exchange_rate
        credit_limit_exchange_rate
      ]
    end

    def initialize(currency_code = SKIP, currency_symbol = SKIP,
                   invoice_exchange_rate = SKIP,
                   credit_limit_exchange_rate = SKIP)
      @currency_code = currency_code unless currency_code == SKIP
      @currency_symbol = currency_symbol unless currency_symbol == SKIP
      @invoice_exchange_rate = invoice_exchange_rate unless invoice_exchange_rate == SKIP
      unless credit_limit_exchange_rate == SKIP
        @credit_limit_exchange_rate =
          credit_limit_exchange_rate
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      currency_code = hash.key?('CurrencyCode') ? hash['CurrencyCode'] : SKIP
      currency_symbol =
        hash.key?('CurrencySymbol') ? hash['CurrencySymbol'] : SKIP
      invoice_exchange_rate =
        hash.key?('Invoice_ExchangeRate') ? hash['Invoice_ExchangeRate'] : SKIP
      credit_limit_exchange_rate =
        hash.key?('CreditLimit_ExchangeRate') ? hash['CreditLimit_ExchangeRate'] : SKIP

      # Create object from extracted values.
      FinanceCurrency2.new(currency_code,
                           currency_symbol,
                           invoice_exchange_rate,
                           credit_limit_exchange_rate)
    end
  end
end
