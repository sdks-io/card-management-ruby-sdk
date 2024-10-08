# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # BundleRestrictionUpdate Model.
  class BundleRestrictionUpdate < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # True/False
    # A value indicates if the day/time restriction is to be reset for card
    # bundle.
    # Optional
    # Default value is False.
    # @return [TrueClass | FalseClass]
    attr_accessor :reset_day_time_restriction

    # True/False
    # A value indicates if the location restriction is to be reset for card
    # bundle.
    # Optional
    # Default value is False.
    # @return [TrueClass | FalseClass]
    attr_accessor :reset_location_restriction

    # True/False
    # A value indicates if the product restriction is to be reset for card
    # bundle.
    # Optional
    # Default value is False.
    # @return [TrueClass | FalseClass]
    attr_accessor :reset_product_restriction

    # True/False
    # A value indicates if the product restriction is to be reset for card
    # bundle.
    # Optional
    # Default value is False.
    # @return [Object]
    attr_accessor :usage_restrictions

    # Identifier of the day/time restriction profile to be updated for the
    # bundle in Gateway.
    # Optional
    # @return [String]
    attr_accessor :day_time_restriction_profile_id

    # Identifier of the day/time restriction profile to be updated for the
    # bundle in Gateway.
    # Optional
    # @return [CardDayTimeRestrictions]
    attr_accessor :day_time_restrictions

    # Identifier of the day/time restriction profile to be updated for the
    # bundle in Gateway.
    # Optional
    # @return [Object]
    attr_accessor :product_restrictions

    # Identifier of the location restriction profile to be updated for the
    # bundle in Gateway.
    # Optional
    # @return [String]
    attr_accessor :location_restriction_profile_id

    # Identifier of the location restriction profile to be updated for the
    # bundle in Gateway.
    # Optional
    # @return [LocationRestriction]
    attr_accessor :location_restrictions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['reset_day_time_restriction'] = 'ResetDayTimeRestriction'
      @_hash['reset_location_restriction'] = 'ResetLocationRestriction'
      @_hash['reset_product_restriction'] = 'ResetProductRestriction'
      @_hash['usage_restrictions'] = 'UsageRestrictions'
      @_hash['day_time_restriction_profile_id'] =
        'DayTimeRestrictionProfileId'
      @_hash['day_time_restrictions'] = 'DayTimeRestrictions'
      @_hash['product_restrictions'] = 'ProductRestrictions'
      @_hash['location_restriction_profile_id'] =
        'LocationRestrictionProfileId'
      @_hash['location_restrictions'] = 'LocationRestrictions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        reset_day_time_restriction
        reset_location_restriction
        reset_product_restriction
        usage_restrictions
        day_time_restriction_profile_id
        day_time_restrictions
        product_restrictions
        location_restriction_profile_id
        location_restrictions
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        reset_day_time_restriction
        reset_location_restriction
        reset_product_restriction
        day_time_restriction_profile_id
      ]
    end

    def initialize(reset_day_time_restriction = SKIP,
                   reset_location_restriction = SKIP,
                   reset_product_restriction = SKIP, usage_restrictions = SKIP,
                   day_time_restriction_profile_id = SKIP,
                   day_time_restrictions = SKIP, product_restrictions = SKIP,
                   location_restriction_profile_id = SKIP,
                   location_restrictions = SKIP)
      unless reset_day_time_restriction == SKIP
        @reset_day_time_restriction =
          reset_day_time_restriction
      end
      unless reset_location_restriction == SKIP
        @reset_location_restriction =
          reset_location_restriction
      end
      unless reset_product_restriction == SKIP
        @reset_product_restriction =
          reset_product_restriction
      end
      @usage_restrictions = usage_restrictions unless usage_restrictions == SKIP
      unless day_time_restriction_profile_id == SKIP
        @day_time_restriction_profile_id =
          day_time_restriction_profile_id
      end
      @day_time_restrictions = day_time_restrictions unless day_time_restrictions == SKIP
      @product_restrictions = product_restrictions unless product_restrictions == SKIP
      unless location_restriction_profile_id == SKIP
        @location_restriction_profile_id =
          location_restriction_profile_id
      end
      @location_restrictions = location_restrictions unless location_restrictions == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      reset_day_time_restriction =
        hash.key?('ResetDayTimeRestriction') ? hash['ResetDayTimeRestriction'] : SKIP
      reset_location_restriction =
        hash.key?('ResetLocationRestriction') ? hash['ResetLocationRestriction'] : SKIP
      reset_product_restriction =
        hash.key?('ResetProductRestriction') ? hash['ResetProductRestriction'] : SKIP
      usage_restrictions =
        hash.key?('UsageRestrictions') ? hash['UsageRestrictions'] : SKIP
      day_time_restriction_profile_id =
        hash.key?('DayTimeRestrictionProfileId') ? hash['DayTimeRestrictionProfileId'] : SKIP
      day_time_restrictions = CardDayTimeRestrictions.from_hash(hash['DayTimeRestrictions']) if
        hash['DayTimeRestrictions']
      product_restrictions =
        hash.key?('ProductRestrictions') ? hash['ProductRestrictions'] : SKIP
      location_restriction_profile_id =
        hash.key?('LocationRestrictionProfileId') ? hash['LocationRestrictionProfileId'] : SKIP
      location_restrictions = LocationRestriction.from_hash(hash['LocationRestrictions']) if
        hash['LocationRestrictions']

      # Create object from extracted values.
      BundleRestrictionUpdate.new(reset_day_time_restriction,
                                  reset_location_restriction,
                                  reset_product_restriction,
                                  usage_restrictions,
                                  day_time_restriction_profile_id,
                                  day_time_restrictions,
                                  product_restrictions,
                                  location_restriction_profile_id,
                                  location_restrictions)
    end
  end
end
