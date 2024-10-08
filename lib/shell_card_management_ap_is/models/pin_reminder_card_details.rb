# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Request entity object for PINReminderCardDetails
  class PINReminderCardDetails < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Card Id 
    # Optional if Either PANID AND CardExpiryDate or PAN AND CardExpiryDate is
    # passed, else Mandatory. Example: 275549 .<br/>Note:PANID, PAN & ExpiryDate
    # parameters will be ignored if CardId is provided.
    # @return [Integer]
    attr_accessor :card_id

    # PAN ID - Unique PAN ID 
    # Optional if Either CardId or PAN AND  ExpiryDate is passed, else
    # Mandatory. Example: 123456. <br/>Note:PANID parameter will be considered
    # only if CardId is not provided
    # @return [Integer]
    attr_accessor :panid

    # PAN of the card.
    # Optional if Either CardId or PANID is passed, else Mandatory.
    # <br/>Note:PAN & ExpiryDate parameters will be considered only if CardId &
    # PANID are not provided
    # @return [String]
    attr_accessor :pan

    # Expiry date of the card.
    # Mandatory if Either PAN or PANID is passed, else optional.
    # Format: yyyyMMdd
    # @return [String]
    attr_accessor :card_expiry_date

    # PIN delivery method.
    # Mandatory
    # Allowed Values:
    #    1.    Paper
    #    2.    Email
    #    3.    SMS
    # @return [Integer]
    attr_accessor :pin_advice_type

    # PIN Contact Type.
    # Mandatory
    # Allowed Values:
    # 1.    Use PIN Delivery contact details stored previously for this card
    # 2.    Use Card Delivery contact details stored previously for this card
    # 3.    Use default PIN Delivery contact details stored for this customer
    # 4.    Use new specific contact for PIN Reminder only
    # Note: - PINContactType “3” is only allowed for Paper delivery
    # @return [Integer]
    attr_accessor :pin_contact_type

    # PIN Contact Type.
    # Mandatory
    # Allowed Values:
    # 1.    Use PIN Delivery contact details stored previously for this card
    # 2.    Use Card Delivery contact details stored previously for this card
    # 3.    Use default PIN Delivery contact details stored for this customer
    # 4.    Use new specific contact for PIN Reminder only
    # Note: - PINContactType “3” is only allowed for Paper delivery
    # @return [PINDeliverTo]
    attr_accessor :pin_deliver_to

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_id'] = 'CardId'
      @_hash['panid'] = 'PANID'
      @_hash['pan'] = 'PAN'
      @_hash['card_expiry_date'] = 'CardExpiryDate'
      @_hash['pin_advice_type'] = 'PINAdviceType'
      @_hash['pin_contact_type'] = 'PINContactType'
      @_hash['pin_deliver_to'] = 'PINDeliverTo'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_id
        panid
        pan
        card_expiry_date
        pin_contact_type
        pin_deliver_to
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        card_expiry_date
      ]
    end

    def initialize(pin_advice_type = nil, card_id = SKIP, panid = SKIP,
                   pan = SKIP, card_expiry_date = SKIP, pin_contact_type = SKIP,
                   pin_deliver_to = SKIP)
      @card_id = card_id unless card_id == SKIP
      @panid = panid unless panid == SKIP
      @pan = pan unless pan == SKIP
      @card_expiry_date = card_expiry_date unless card_expiry_date == SKIP
      @pin_advice_type = pin_advice_type
      @pin_contact_type = pin_contact_type unless pin_contact_type == SKIP
      @pin_deliver_to = pin_deliver_to unless pin_deliver_to == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      pin_advice_type = hash.key?('PINAdviceType') ? hash['PINAdviceType'] : nil
      card_id = hash.key?('CardId') ? hash['CardId'] : SKIP
      panid = hash.key?('PANID') ? hash['PANID'] : SKIP
      pan = hash.key?('PAN') ? hash['PAN'] : SKIP
      card_expiry_date =
        hash.key?('CardExpiryDate') ? hash['CardExpiryDate'] : SKIP
      pin_contact_type =
        hash.key?('PINContactType') ? hash['PINContactType'] : SKIP
      pin_deliver_to = PINDeliverTo.from_hash(hash['PINDeliverTo']) if hash['PINDeliverTo']

      # Create object from extracted values.
      PINReminderCardDetails.new(pin_advice_type,
                                 card_id,
                                 panid,
                                 pan,
                                 card_expiry_date,
                                 pin_contact_type,
                                 pin_deliver_to)
    end
  end
end
