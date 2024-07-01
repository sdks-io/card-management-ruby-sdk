# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # PINDeliverTo Model.
  class PINDeliverTo < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Contact Name
    # Max Length: 50
    # @return [String]
    attr_accessor :contact_name

    # Contact Title
    # Max Length: 50
    # @return [String]
    attr_accessor :contact_title

    # Company Name for PIN delivery.
    # Max Length: 50
    # @return [String]
    attr_accessor :company_name

    # Address Lines
    # Max Length: 1024
    # @return [String]
    attr_accessor :address_line

    # Zip Code
    # Max Length: 10
    # @return [String]
    attr_accessor :zip_code

    # City
    # Max Length: 40
    # @return [String]
    attr_accessor :city

    # Region
    # @return [Integer]
    attr_accessor :region_id

    # Country
    # @return [Integer]
    attr_accessor :country_id

    # Cardholder phone number for PIN delivery.
    # @return [String]
    attr_accessor :phone_number

    # Cardholder email address for PIN delivery
    # Max Length : 90
    # Example: xxxxxx@example.com <br/>Note:Based on the international standard
    # that there can be Max Length 64 before the @ (the 'Local part’)
    # =64(minimum of 1) Max Lenth after the (the domain) = 88 (Minimum of 2)
    # @return [String]
    attr_accessor :email_address

    # Save PIN Reminder
    # If SavePINReminder is true, the contact address will be saved database for
    # PIN reminder.
    #  <br/>Only allowed for PIN Advice paper delivery.
    # @return [TrueClass | FalseClass]
    attr_accessor :save_pin_reminder

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['contact_name'] = 'ContactName'
      @_hash['contact_title'] = 'ContactTitle'
      @_hash['company_name'] = 'CompanyName'
      @_hash['address_line'] = 'AddressLine'
      @_hash['zip_code'] = 'ZipCode'
      @_hash['city'] = 'City'
      @_hash['region_id'] = 'RegionID'
      @_hash['country_id'] = 'CountryID'
      @_hash['phone_number'] = 'PhoneNumber'
      @_hash['email_address'] = 'EmailAddress'
      @_hash['save_pin_reminder'] = 'SavePINReminder'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        contact_name
        contact_title
        region_id
        country_id
        phone_number
        email_address
        save_pin_reminder
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        contact_name
        contact_title
        zip_code
        region_id
        country_id
        phone_number
        email_address
      ]
    end

    def initialize(company_name = nil, address_line = nil, zip_code = nil,
                   city = nil, contact_name = SKIP, contact_title = SKIP,
                   region_id = SKIP, country_id = SKIP, phone_number = SKIP,
                   email_address = SKIP, save_pin_reminder = SKIP)
      @contact_name = contact_name unless contact_name == SKIP
      @contact_title = contact_title unless contact_title == SKIP
      @company_name = company_name
      @address_line = address_line
      @zip_code = zip_code
      @city = city
      @region_id = region_id unless region_id == SKIP
      @country_id = country_id unless country_id == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @email_address = email_address unless email_address == SKIP
      @save_pin_reminder = save_pin_reminder unless save_pin_reminder == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      company_name = hash.key?('CompanyName') ? hash['CompanyName'] : nil
      address_line = hash.key?('AddressLine') ? hash['AddressLine'] : nil
      zip_code = hash.key?('ZipCode') ? hash['ZipCode'] : nil
      city = hash.key?('City') ? hash['City'] : nil
      contact_name = hash.key?('ContactName') ? hash['ContactName'] : SKIP
      contact_title = hash.key?('ContactTitle') ? hash['ContactTitle'] : SKIP
      region_id = hash.key?('RegionID') ? hash['RegionID'] : SKIP
      country_id = hash.key?('CountryID') ? hash['CountryID'] : SKIP
      phone_number = hash.key?('PhoneNumber') ? hash['PhoneNumber'] : SKIP
      email_address = hash.key?('EmailAddress') ? hash['EmailAddress'] : SKIP
      save_pin_reminder =
        hash.key?('SavePINReminder') ? hash['SavePINReminder'] : SKIP

      # Create object from extracted values.
      PINDeliverTo.new(company_name,
                       address_line,
                       zip_code,
                       city,
                       contact_name,
                       contact_title,
                       region_id,
                       country_id,
                       phone_number,
                       email_address,
                       save_pin_reminder)
    end
  end
end
