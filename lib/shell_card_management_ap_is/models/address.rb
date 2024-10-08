# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Address Model.
  class Address < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Address Id in cards platform.
    # @return [Integer]
    attr_accessor :address_id

    # Address line1
    # @return [String]
    attr_accessor :address_line1

    # Address line2
    # @return [String]
    attr_accessor :address_line2

    # AddressLine3
    # @return [String]
    attr_accessor :address_line3

    # ZipCode
    # @return [String]
    attr_accessor :zip_code

    # City
    # @return [String]
    attr_accessor :city

    # Region Id of the address.
    # @return [Integer]
    attr_accessor :region_id

    # Country ISO code of the address
    # @return [String]
    attr_accessor :country_iso_code

    # Country for the address
    # @return [String]
    attr_accessor :country

    # Telephone number of the address contact
    # @return [String]
    attr_accessor :telephone

    # Email address of the address contact
    # @return [String]
    attr_accessor :email_address

    # Fax number of the address contact
    # @return [String]
    attr_accessor :fax

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address_id'] = 'AddressId'
      @_hash['address_line1'] = 'AddressLine1'
      @_hash['address_line2'] = 'AddressLine2'
      @_hash['address_line3'] = 'AddressLine3'
      @_hash['zip_code'] = 'ZipCode'
      @_hash['city'] = 'City'
      @_hash['region_id'] = 'RegionId'
      @_hash['country_iso_code'] = 'CountryISOCode'
      @_hash['country'] = 'Country'
      @_hash['telephone'] = 'Telephone'
      @_hash['email_address'] = 'EmailAddress'
      @_hash['fax'] = 'Fax'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        address_id
        address_line1
        address_line2
        address_line3
        zip_code
        city
        region_id
        country_iso_code
        country
        telephone
        email_address
        fax
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        address_id
        address_line1
        address_line2
        address_line3
        zip_code
        city
        region_id
        country_iso_code
        country
        telephone
        email_address
        fax
      ]
    end

    def initialize(address_id = SKIP, address_line1 = SKIP,
                   address_line2 = SKIP, address_line3 = SKIP, zip_code = SKIP,
                   city = SKIP, region_id = SKIP, country_iso_code = SKIP,
                   country = SKIP, telephone = SKIP, email_address = SKIP,
                   fax = SKIP)
      @address_id = address_id unless address_id == SKIP
      @address_line1 = address_line1 unless address_line1 == SKIP
      @address_line2 = address_line2 unless address_line2 == SKIP
      @address_line3 = address_line3 unless address_line3 == SKIP
      @zip_code = zip_code unless zip_code == SKIP
      @city = city unless city == SKIP
      @region_id = region_id unless region_id == SKIP
      @country_iso_code = country_iso_code unless country_iso_code == SKIP
      @country = country unless country == SKIP
      @telephone = telephone unless telephone == SKIP
      @email_address = email_address unless email_address == SKIP
      @fax = fax unless fax == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address_id = hash.key?('AddressId') ? hash['AddressId'] : SKIP
      address_line1 = hash.key?('AddressLine1') ? hash['AddressLine1'] : SKIP
      address_line2 = hash.key?('AddressLine2') ? hash['AddressLine2'] : SKIP
      address_line3 = hash.key?('AddressLine3') ? hash['AddressLine3'] : SKIP
      zip_code = hash.key?('ZipCode') ? hash['ZipCode'] : SKIP
      city = hash.key?('City') ? hash['City'] : SKIP
      region_id = hash.key?('RegionId') ? hash['RegionId'] : SKIP
      country_iso_code =
        hash.key?('CountryISOCode') ? hash['CountryISOCode'] : SKIP
      country = hash.key?('Country') ? hash['Country'] : SKIP
      telephone = hash.key?('Telephone') ? hash['Telephone'] : SKIP
      email_address = hash.key?('EmailAddress') ? hash['EmailAddress'] : SKIP
      fax = hash.key?('Fax') ? hash['Fax'] : SKIP

      # Create object from extracted values.
      Address.new(address_id,
                  address_line1,
                  address_line2,
                  address_line3,
                  zip_code,
                  city,
                  region_id,
                  country_iso_code,
                  country,
                  telephone,
                  email_address,
                  fax)
    end
  end
end
