# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Delivery address.
  class CardDetailsResponseCardDeliveryAddress < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Fore name of the contact person
    # @return [String]
    attr_accessor :contact_fore_name

    # Middle name of the contact person
    # @return [String]
    attr_accessor :contact_middle_name

    # Last name of the contact person
    # @return [String]
    attr_accessor :contact_last_name

    # Title of the contact person Optional Max field length- 10 Note- If the
    # Shell Card Platform configuration is set to clear the personal details
    # captured on card orders, this value will be cleared from the record after
    # processing the request.
    # @return [String]
    attr_accessor :contact_title

    # Company name Mandatory if IsNewDeliveryAddress and OrderReplacement are
    # passed. True, Note- If the Shell Card Platform configuration is set to
    # clear the personal details captured on card orders, this value will be
    # cleared from the record after processing the request.
    # @return [String]
    attr_accessor :company_name

    # Address Id in cards platform.
    # @return [Integer]
    attr_accessor :address_id

    # Address line 1 Mandatory if IsNewDeliveryAddress and OrderReplacement are
    # passed True. Max field length- 40 Note- If the Shell Card Platform
    # configuration is set to clear the personal details captured on card
    # orders, this value will be cleared from the record after processing the
    # request.
    # @return [String]
    attr_accessor :address_line1

    # Address line 2 Optional Max field length- 40 Note- If the Shell Card
    # Platform configuration is set to clear the personal details captured on
    # card orders, this value will be cleared from the record after processing
    # the request.
    # @return [String]
    attr_accessor :address_line2

    # Address line Optional Max field length- 40 Note- If the Shell Card
    # Platform configuration is set to clear the personal details captured on
    # card orders, this value will be cleared from the record after processing
    # the request.
    # @return [String]
    attr_accessor :address_line3

    # ZIP code Mandatory if IsNewDeliveryAddress and OrderReplacement are
    # passed. True, Max field length- 10 Note- If the Shell Card Platform
    # configuration is set to clear the personal details captured on card
    # orders, this value will be cleared from the record after processing the
    # request.
    # @return [String]
    attr_accessor :zip_code

    # City Max field length- 40 Note- If the Shell Card Platform configuration
    # is set to clear the personal details captured on card orders, this value
    # will be cleared from the record after processing the request.
    # @return [String]
    attr_accessor :city

    # Region Id
    # @return [Integer]
    attr_accessor :region_id

    # Region Optional When region is passed, Shell Card Platform will look up
    # for the region id for the given region.  If the option to clear personal
    # details is set in the Shell Card Platform, then this value will be cleared
    # from the record after processing the request .
    # @return [String]
    attr_accessor :region

    # Country Id in cards platform.
    # @return [Integer]
    attr_accessor :country_id

    # The ISO code of the country. Mandatory if IsNewDeliveryAddress and
    # OrderReplacement are passed. If the option to clear personal details is
    # set in the Shell Card Platform, then this value will be cleared from the
    # record after processing the request .
    # @return [String]
    attr_accessor :country_iso_code

    # Country name.
    # @return [String]
    attr_accessor :country

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['contact_fore_name'] = 'ContactForeName'
      @_hash['contact_middle_name'] = 'ContactMiddleName'
      @_hash['contact_last_name'] = 'ContactLastName'
      @_hash['contact_title'] = 'ContactTitle'
      @_hash['company_name'] = 'CompanyName'
      @_hash['address_id'] = 'AddressId'
      @_hash['address_line1'] = 'AddressLine1'
      @_hash['address_line2'] = 'AddressLine2'
      @_hash['address_line3'] = 'AddressLine3'
      @_hash['zip_code'] = 'ZipCode'
      @_hash['city'] = 'City'
      @_hash['region_id'] = 'RegionId'
      @_hash['region'] = 'Region'
      @_hash['country_id'] = 'CountryId'
      @_hash['country_iso_code'] = 'CountryISOCode'
      @_hash['country'] = 'Country'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        contact_fore_name
        contact_middle_name
        contact_last_name
        contact_title
        address_line2
        address_line3
        city
        region_id
        region
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        region_id
      ]
    end

    def initialize(company_name = nil,
                   address_id = nil,
                   address_line1 = nil,
                   zip_code = nil,
                   country_id = nil,
                   country_iso_code = nil,
                   country = nil,
                   contact_fore_name = SKIP,
                   contact_middle_name = SKIP,
                   contact_last_name = SKIP,
                   contact_title = SKIP,
                   address_line2 = SKIP,
                   address_line3 = SKIP,
                   city = SKIP,
                   region_id = SKIP,
                   region = SKIP)
      @contact_fore_name = contact_fore_name unless contact_fore_name == SKIP
      @contact_middle_name = contact_middle_name unless contact_middle_name == SKIP
      @contact_last_name = contact_last_name unless contact_last_name == SKIP
      @contact_title = contact_title unless contact_title == SKIP
      @company_name = company_name
      @address_id = address_id
      @address_line1 = address_line1
      @address_line2 = address_line2 unless address_line2 == SKIP
      @address_line3 = address_line3 unless address_line3 == SKIP
      @zip_code = zip_code
      @city = city unless city == SKIP
      @region_id = region_id unless region_id == SKIP
      @region = region unless region == SKIP
      @country_id = country_id
      @country_iso_code = country_iso_code
      @country = country
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      company_name = hash.key?('CompanyName') ? hash['CompanyName'] : nil
      address_id = hash.key?('AddressId') ? hash['AddressId'] : nil
      address_line1 = hash.key?('AddressLine1') ? hash['AddressLine1'] : nil
      zip_code = hash.key?('ZipCode') ? hash['ZipCode'] : nil
      country_id = hash.key?('CountryId') ? hash['CountryId'] : nil
      country_iso_code =
        hash.key?('CountryISOCode') ? hash['CountryISOCode'] : nil
      country = hash.key?('Country') ? hash['Country'] : nil
      contact_fore_name =
        hash.key?('ContactForeName') ? hash['ContactForeName'] : SKIP
      contact_middle_name =
        hash.key?('ContactMiddleName') ? hash['ContactMiddleName'] : SKIP
      contact_last_name =
        hash.key?('ContactLastName') ? hash['ContactLastName'] : SKIP
      contact_title = hash.key?('ContactTitle') ? hash['ContactTitle'] : SKIP
      address_line2 = hash.key?('AddressLine2') ? hash['AddressLine2'] : SKIP
      address_line3 = hash.key?('AddressLine3') ? hash['AddressLine3'] : SKIP
      city = hash.key?('City') ? hash['City'] : SKIP
      region_id = hash.key?('RegionId') ? hash['RegionId'] : SKIP
      region = hash.key?('Region') ? hash['Region'] : SKIP

      # Create object from extracted values.
      CardDetailsResponseCardDeliveryAddress.new(company_name,
                                                 address_id,
                                                 address_line1,
                                                 zip_code,
                                                 country_id,
                                                 country_iso_code,
                                                 country,
                                                 contact_fore_name,
                                                 contact_middle_name,
                                                 contact_last_name,
                                                 contact_title,
                                                 address_line2,
                                                 address_line3,
                                                 city,
                                                 region_id,
                                                 region)
    end
  end
end
