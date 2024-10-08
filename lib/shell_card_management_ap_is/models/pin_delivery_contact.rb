# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Request entity object for PINDeliveryContact Mandatory when
  # PINDeliveryAddressType is ‘3’ (New delivery address). Else, ignored.
  class PINDeliveryContact < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Title of the contact person <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_contact_title

    # Name of the contact person <br />
    # Mandatory - If PINAdviceType is paper else optional. <br />
    # Max field length: 50  <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_contact_name

    # Company name <br />
    # Mandatory - If PINAdviceType is paper else optional. <br />
    # Max field length: 50  <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_company_name

    # Address line 1 <br />
    # Mandatory - if PINAdviceType is paper else optional.<br />
    # Max field length: 40  <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_address_line1

    # Address line 2 <br />
    # Optional <br />
    # Max field length: 40  <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_address_line2

    # Address line 3 <br />
    # Optional <br />
    # Max field length: 40  <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_address_line3

    # ZIP code <br />
    # Mandatory - if PINAdviceType is paper else optional. <br />
    # Max field length: 10  <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_zip_code

    # City  <br />
    # Mandatory - If PINAdviceType is paper else optional. <br />
    # Max field length: 40  <br />
    # Optional
    # @return [String]
    attr_accessor :delivery_city

    # Region Id  <br />
    # Optional
    # @return [Integer]
    attr_accessor :delivery_region_id

    # Region  <br />
    # Optional<br />
    # @return [String]
    attr_accessor :delivery_region

    # The ISO code of the country.<br />
    # Mandatory if PINAdviceType is paper else optional.
    # @return [String]
    attr_accessor :delivery_country

    # Phone number for to send SMS of the PIN in case PINAdviceType is SMS.<br
    # />
    # Mandatory if PINAdviceType is SMS else optional.<br />
    # Max field length: 20
    # @return [String]
    attr_accessor :phone_number

    # Email address for to send email of the PIN in case PINAdviceType is
    # Email.<br />
    # Mandatory if PINAdviceType is email else optional.<br />
    # Max field length: 90. <br/>Note:Based on the international standard that
    # there can be Max Length 64 before the @ (the 'Local part’) =64(minimum of
    # 1) Max Lenth after the (the domain) = 88 (Minimum of 2)
    # @return [String]
    attr_accessor :email_address

    # The given address will be used for sending PIN reminders in future when
    # requested.<br />
    # Only allowed for paper delivery<br />
    # Optional
    # @return [TrueClass | FalseClass]
    attr_accessor :save_for_pin_reminder

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['delivery_contact_title'] = 'DeliveryContactTitle'
      @_hash['delivery_contact_name'] = 'DeliveryContactName'
      @_hash['delivery_company_name'] = 'DeliveryCompanyName'
      @_hash['delivery_address_line1'] = 'DeliveryAddressLine1'
      @_hash['delivery_address_line2'] = 'DeliveryAddressLine2'
      @_hash['delivery_address_line3'] = 'DeliveryAddressLine3'
      @_hash['delivery_zip_code'] = 'DeliveryZipCode'
      @_hash['delivery_city'] = 'DeliveryCity'
      @_hash['delivery_region_id'] = 'DeliveryRegionId'
      @_hash['delivery_region'] = 'DeliveryRegion'
      @_hash['delivery_country'] = 'DeliveryCountry'
      @_hash['phone_number'] = 'PhoneNumber'
      @_hash['email_address'] = 'EmailAddress'
      @_hash['save_for_pin_reminder'] = 'SaveForPINReminder'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        delivery_contact_title
        delivery_contact_name
        delivery_company_name
        delivery_address_line1
        delivery_address_line2
        delivery_address_line3
        delivery_zip_code
        delivery_city
        delivery_region_id
        delivery_region
        delivery_country
        phone_number
        email_address
        save_for_pin_reminder
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        delivery_contact_title
        delivery_contact_name
        delivery_company_name
        delivery_address_line1
        delivery_address_line2
        delivery_address_line3
        delivery_zip_code
        delivery_city
        delivery_region_id
        delivery_region
        delivery_country
        phone_number
        email_address
      ]
    end

    def initialize(delivery_contact_title = SKIP, delivery_contact_name = SKIP,
                   delivery_company_name = SKIP, delivery_address_line1 = SKIP,
                   delivery_address_line2 = SKIP, delivery_address_line3 = SKIP,
                   delivery_zip_code = SKIP, delivery_city = SKIP,
                   delivery_region_id = SKIP, delivery_region = SKIP,
                   delivery_country = SKIP, phone_number = SKIP,
                   email_address = SKIP, save_for_pin_reminder = SKIP)
      @delivery_contact_title = delivery_contact_title unless delivery_contact_title == SKIP
      @delivery_contact_name = delivery_contact_name unless delivery_contact_name == SKIP
      @delivery_company_name = delivery_company_name unless delivery_company_name == SKIP
      @delivery_address_line1 = delivery_address_line1 unless delivery_address_line1 == SKIP
      @delivery_address_line2 = delivery_address_line2 unless delivery_address_line2 == SKIP
      @delivery_address_line3 = delivery_address_line3 unless delivery_address_line3 == SKIP
      @delivery_zip_code = delivery_zip_code unless delivery_zip_code == SKIP
      @delivery_city = delivery_city unless delivery_city == SKIP
      @delivery_region_id = delivery_region_id unless delivery_region_id == SKIP
      @delivery_region = delivery_region unless delivery_region == SKIP
      @delivery_country = delivery_country unless delivery_country == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @email_address = email_address unless email_address == SKIP
      @save_for_pin_reminder = save_for_pin_reminder unless save_for_pin_reminder == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      delivery_contact_title =
        hash.key?('DeliveryContactTitle') ? hash['DeliveryContactTitle'] : SKIP
      delivery_contact_name =
        hash.key?('DeliveryContactName') ? hash['DeliveryContactName'] : SKIP
      delivery_company_name =
        hash.key?('DeliveryCompanyName') ? hash['DeliveryCompanyName'] : SKIP
      delivery_address_line1 =
        hash.key?('DeliveryAddressLine1') ? hash['DeliveryAddressLine1'] : SKIP
      delivery_address_line2 =
        hash.key?('DeliveryAddressLine2') ? hash['DeliveryAddressLine2'] : SKIP
      delivery_address_line3 =
        hash.key?('DeliveryAddressLine3') ? hash['DeliveryAddressLine3'] : SKIP
      delivery_zip_code =
        hash.key?('DeliveryZipCode') ? hash['DeliveryZipCode'] : SKIP
      delivery_city = hash.key?('DeliveryCity') ? hash['DeliveryCity'] : SKIP
      delivery_region_id =
        hash.key?('DeliveryRegionId') ? hash['DeliveryRegionId'] : SKIP
      delivery_region =
        hash.key?('DeliveryRegion') ? hash['DeliveryRegion'] : SKIP
      delivery_country =
        hash.key?('DeliveryCountry') ? hash['DeliveryCountry'] : SKIP
      phone_number = hash.key?('PhoneNumber') ? hash['PhoneNumber'] : SKIP
      email_address = hash.key?('EmailAddress') ? hash['EmailAddress'] : SKIP
      save_for_pin_reminder =
        hash.key?('SaveForPINReminder') ? hash['SaveForPINReminder'] : SKIP

      # Create object from extracted values.
      PINDeliveryContact.new(delivery_contact_title,
                             delivery_contact_name,
                             delivery_company_name,
                             delivery_address_line1,
                             delivery_address_line2,
                             delivery_address_line3,
                             delivery_zip_code,
                             delivery_city,
                             delivery_region_id,
                             delivery_region,
                             delivery_country,
                             phone_number,
                             email_address,
                             save_for_pin_reminder)
    end
  end
end
