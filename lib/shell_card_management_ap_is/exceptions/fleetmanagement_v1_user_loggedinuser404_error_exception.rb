# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # Fleetmanagement V1 User Loggedinuser 404 Error class.
  class FleetmanagementV1UserLoggedinuser404ErrorException < APIException
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [Fault]
    attr_accessor :fault

    # The constructor.
    # @param [String] The reason for raising an exception.
    # @param [HttpResponse] The HttpReponse of the API call.
    def initialize(reason, response)
      super(reason, response)
      hash = APIHelper.json_deserialize(@response.raw_body)
      unbox(hash)
    end

    # Populates this object by extracting properties from a hash.
    # @param [Hash] The deserialized response sent by the server in the
    # response body.
    def unbox(hash)
      @fault = Fault.from_hash(hash['fault']) if hash['fault']
    end
  end
end
