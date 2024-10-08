# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # OrderCardResponse Model.
  class OrderCardResponse < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique request identifier passed from end user. This identifier helps in
    # tracing a transaction
    # @return [String]
    attr_accessor :request_id

    # Indicates overall status of the request. Allowed values: SUCCESS, FAILED
    # @return [String]
    attr_accessor :status

    # Indicates overall status of the request. Allowed values: SUCCESS, FAILED
    # @return [Array[CreateCardResponse]]
    attr_accessor :data

    # Main order reference number for tracking.
    # @return [Integer]
    attr_accessor :main_reference

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_id'] = 'RequestId'
      @_hash['status'] = 'Status'
      @_hash['data'] = 'Data'
      @_hash['main_reference'] = 'MainReference'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        request_id
        status
        data
        main_reference
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(request_id = SKIP, status = SKIP, data = SKIP,
                   main_reference = SKIP)
      @request_id = request_id unless request_id == SKIP
      @status = status unless status == SKIP
      @data = data unless data == SKIP
      @main_reference = main_reference unless main_reference == SKIP
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_id = hash.key?('RequestId') ? hash['RequestId'] : SKIP
      status = hash.key?('Status') ? hash['Status'] : SKIP
      # Parameter is an array, so we need to iterate through it
      data = nil
      unless hash['Data'].nil?
        data = []
        hash['Data'].each do |structure|
          data << (CreateCardResponse.from_hash(structure) if structure)
        end
      end

      data = SKIP unless hash.key?('Data')
      main_reference = hash.key?('MainReference') ? hash['MainReference'] : SKIP

      # Create object from extracted values.
      OrderCardResponse.new(request_id,
                            status,
                            data,
                            main_reference)
    end
  end
end
