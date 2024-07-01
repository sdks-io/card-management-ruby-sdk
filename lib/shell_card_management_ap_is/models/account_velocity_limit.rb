# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # AccountVelocityLimit Model.
  class AccountVelocityLimit < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Type of velocity (COUNT type is not present for limits of PERTRX period
    # Possible Values: VALUE, VOLUME, COUNT
    # @return [String]
    attr_accessor :type

    # Duration of the velocity or threshold alert.
    # Possible Values: DAILY, WEEKLY, MONTHLY, ANNUAL, LIFETIME, PERTRX
    # @return [String]
    attr_accessor :period

    # The limit associated with this velocity with the correct number of digits
    # after the decimal point according to the minor denomination of the
    # currency of the card issuer.
    # Example: 1500.55
    # @return [Float]
    attr_accessor :limit

    # The transaction accumulation during the current period with the correct
    # number of digits after the decimal point according to the minor
    # denomination of the currency of the card issuer (except for COUNT type
    # velocity). Not present for PERTRX period.
    # Example: 1100.55
    # @return [Float]
    attr_accessor :accumulation

    # The remaining/available balance at this point in time with the correct
    # number of digits after the decimal point according to the minor
    # denomination of the currency of the card issuer (except for COUNT type
    # velocity). Not present for PERTRX period.
    # Example: 400.55
    # @return [Float]
    attr_accessor :balance

    # Indicate if the limit is overridden or default. (false for default).
    # Example: false
    # @return [TrueClass | FalseClass]
    attr_accessor :override

    # The reference group name for product differentiated velocities. This field
    # cannot be used with Volume type velocity.
    # Example: RoadSvc
    # This is an optional output field.
    # @return [String]
    attr_accessor :product_group

    # The limit to trigger an alert if the balance after a transaction reaches
    # it or below. 0 indicates no alerts will be sent. Not present if not set
    # (issuer value threshold limit applies if available). Not present for COUNT
    # type velocity.
    # Example: 50.55
    # This is an optional output field.
    # @return [Float]
    attr_accessor :threshold

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'Type'
      @_hash['period'] = 'Period'
      @_hash['limit'] = 'Limit'
      @_hash['accumulation'] = 'Accumulation'
      @_hash['balance'] = 'Balance'
      @_hash['override'] = 'Override'
      @_hash['product_group'] = 'ProductGroup'
      @_hash['threshold'] = 'Threshold'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        period
        limit
        accumulation
        balance
        override
        product_group
        threshold
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(type = SKIP, period = SKIP, limit = SKIP,
                   accumulation = SKIP, balance = SKIP, override = SKIP,
                   product_group = SKIP, threshold = SKIP)
      @type = type unless type == SKIP
      @period = period unless period == SKIP
      @limit = limit unless limit == SKIP
      @accumulation = accumulation unless accumulation == SKIP
      @balance = balance unless balance == SKIP
      @override = override unless override == SKIP
      @product_group = product_group unless product_group == SKIP
      @threshold = threshold unless threshold == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('Type') ? hash['Type'] : SKIP
      period = hash.key?('Period') ? hash['Period'] : SKIP
      limit = hash.key?('Limit') ? hash['Limit'] : SKIP
      accumulation = hash.key?('Accumulation') ? hash['Accumulation'] : SKIP
      balance = hash.key?('Balance') ? hash['Balance'] : SKIP
      override = hash.key?('Override') ? hash['Override'] : SKIP
      product_group = hash.key?('ProductGroup') ? hash['ProductGroup'] : SKIP
      threshold = hash.key?('Threshold') ? hash['Threshold'] : SKIP

      # Create object from extracted values.
      AccountVelocityLimit.new(type,
                               period,
                               limit,
                               accumulation,
                               balance,
                               override,
                               product_group,
                               threshold)
    end
  end
end
