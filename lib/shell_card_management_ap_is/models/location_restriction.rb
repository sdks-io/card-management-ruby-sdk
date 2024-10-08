# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # LocationRestriction Model.
  class LocationRestriction < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [CountryRestriction]
    attr_accessor :country_restrictions

    # TODO: Write general description for this method
    # @return [Array[NetworkRestriction]]
    attr_accessor :network_restrictions

    # TODO: Write general description for this method
    # @return [Array[ShellSiteRestriction]]
    attr_accessor :shell_site_restrictions

    # TODO: Write general description for this method
    # @return [Array[PartnerSiteRestriction]]
    attr_accessor :partner_site_restrictions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country_restrictions'] = 'CountryRestrictions'
      @_hash['network_restrictions'] = 'NetworkRestrictions'
      @_hash['shell_site_restrictions'] = 'ShellSiteRestrictions'
      @_hash['partner_site_restrictions'] = 'PartnerSiteRestrictions'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        country_restrictions
        network_restrictions
        shell_site_restrictions
        partner_site_restrictions
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(country_restrictions = SKIP, network_restrictions = SKIP,
                   shell_site_restrictions = SKIP,
                   partner_site_restrictions = SKIP)
      @country_restrictions = country_restrictions unless country_restrictions == SKIP
      @network_restrictions = network_restrictions unless network_restrictions == SKIP
      @shell_site_restrictions = shell_site_restrictions unless shell_site_restrictions == SKIP
      unless partner_site_restrictions == SKIP
        @partner_site_restrictions =
          partner_site_restrictions
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country_restrictions = CountryRestriction.from_hash(hash['CountryRestrictions']) if
        hash['CountryRestrictions']
      # Parameter is an array, so we need to iterate through it
      network_restrictions = nil
      unless hash['NetworkRestrictions'].nil?
        network_restrictions = []
        hash['NetworkRestrictions'].each do |structure|
          network_restrictions << (NetworkRestriction.from_hash(structure) if structure)
        end
      end

      network_restrictions = SKIP unless hash.key?('NetworkRestrictions')
      # Parameter is an array, so we need to iterate through it
      shell_site_restrictions = nil
      unless hash['ShellSiteRestrictions'].nil?
        shell_site_restrictions = []
        hash['ShellSiteRestrictions'].each do |structure|
          shell_site_restrictions << (ShellSiteRestriction.from_hash(structure) if structure)
        end
      end

      shell_site_restrictions = SKIP unless hash.key?('ShellSiteRestrictions')
      # Parameter is an array, so we need to iterate through it
      partner_site_restrictions = nil
      unless hash['PartnerSiteRestrictions'].nil?
        partner_site_restrictions = []
        hash['PartnerSiteRestrictions'].each do |structure|
          partner_site_restrictions << (PartnerSiteRestriction.from_hash(structure) if structure)
        end
      end

      partner_site_restrictions = SKIP unless hash.key?('PartnerSiteRestrictions')

      # Create object from extracted values.
      LocationRestriction.new(country_restrictions,
                              network_restrictions,
                              shell_site_restrictions,
                              partner_site_restrictions)
    end
  end
end
