# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # PINAdviceTypes Model.
  class PINAdviceTypes < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Id of of PIN advice type.
    # Possible Values:
    # 1.    Paper
    # 2.    Email
    # 3.    SMS
    # 4.    None
    # @return [Integer]
    attr_accessor :pin_advice_type_id

    # Whether the PIN advice type is available for card ordering
    # @return [TrueClass | FalseClass]
    attr_accessor :is_card_order_option

    # Whether the PIN advice type is available for PIN Reminder
    # @return [TrueClass | FalseClass]
    attr_accessor :is_pin_reminder_option

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['pin_advice_type_id'] = 'PINAdviceTypeID'
      @_hash['is_card_order_option'] = 'IsCardOrderOption'
      @_hash['is_pin_reminder_option'] = 'IsPINReminderOption'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        pin_advice_type_id
        is_card_order_option
        is_pin_reminder_option
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        pin_advice_type_id
      ]
    end

    def initialize(pin_advice_type_id = SKIP, is_card_order_option = SKIP,
                   is_pin_reminder_option = SKIP)
      @pin_advice_type_id = pin_advice_type_id unless pin_advice_type_id == SKIP
      @is_card_order_option = is_card_order_option unless is_card_order_option == SKIP
      @is_pin_reminder_option = is_pin_reminder_option unless is_pin_reminder_option == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pin_advice_type_id =
        hash.key?('PINAdviceTypeID') ? hash['PINAdviceTypeID'] : SKIP
      is_card_order_option =
        hash.key?('IsCardOrderOption') ? hash['IsCardOrderOption'] : SKIP
      is_pin_reminder_option =
        hash.key?('IsPINReminderOption') ? hash['IsPINReminderOption'] : SKIP

      # Create object from extracted values.
      PINAdviceTypes.new(pin_advice_type_id,
                         is_card_order_option,
                         is_pin_reminder_option)
    end
  end
end
