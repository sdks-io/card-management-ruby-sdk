# shell_card_management_ap_is
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ShellCardManagementApIs
  # RestrictionController
  class RestrictionController < BaseController
    # This API will allows querying card details including the day/time and
    # product restrictions.
    # #### Supported operations
    #   * Search by list of cards or bundle
    #   * Include card bundle details (optional)
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [SearchCardRestrictionReq] body Optional parameter: Restriction
    # search card request body
    # @return [SearchCardRestrictionRes] response from the API call.
    def search_card_restriction(apikey,
                                request_id,
                                body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v2/restriction/searchcard',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SearchCardRestrictionRes.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 FleetmanagementV2RestrictionSearchcard401ErrorException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 FleetmanagementV2RestrictionSearchcard500ErrorException))
        .execute
    end

    # The Card Limit and Restriction API is REST-based and employs Basic and
    # ApiKey authentication. The API endpoints accept JSON-encoded request
    # bodies, return JSON-encoded responses and use standard HTTP response
    # codes.
    # All resources are located in the Shell Card Platform.  The Shell Card
    # Platform is the overall platform that encompasses all the internal Shell
    # systems used to manage resources. The internal workings of the platform
    # are not important when interacting with the API. However, it is worth
    # noting that the platform uses a microservice architecture to communicate
    # with various backend systems and some API calls are processed
    # asynchronously.
    # All endpoints use the `POST` verb for retrieving, updating, creating and
    # deleting resources in the Shell Card Platform. The endpoints that retrieve
    # resources from the Shell Card Platform allow flexible search parameters in
    # the API request body.
    # **Important Note** - This operation allows setting or updating the
    # restrictions on existing cards. (For up to 3 cards in a single call).
    # All restrictions of the cards are submitted and executed after successful
    # below condition.
    # •    The card exists.
    # •    Day time restriction cannot be set to restrict the use of a card on
    # all days of the week i.e., the values for all the days in the restriction
    # cannot be set to false.
    # •    Either of the usage, daytime, location or product restriction ‘Reset’
    # is set to ‘True’ or applied on the card.
    # •    All the limits in the usage restriction profile for a card is not set
    # to ‘0’/null.
    # •    If IsVelocityCeiling is ‘true’, API will validate below condition:
    # Usage restrictions for a card are lower than Customer Card Type level
    # limits, if there are no customer level overrides available then lower than
    # OU card type limits.
    # •    In usage restrictions, the limits per transaction should be less than
    # or equal to Daily, Daily should be less than or equal to Weekly, Weekly
    # should be less than or equal to Monthly, Monthly should be less than or
    # equal to Yearly (Annually). Exception being null/blank will be skipped.
    # i.e., Daily value should be less than equal to Monthly value if Weekly
    # value is null/blank. Lifetime limit is not considered for usage
    # restrictions limits validation.
    # •    Apply the card type limit to Gateway when a value is NULL in the
    # input. However, if the card type limit is NULL for the same field, then no
    # limit will be applied in Gateway.
    # •    If ‘SetDefaultOnVelocityUpdate’ is ‘true’ then the operation will
    # apply customer cardtype or OU level velocity limits on existing cards when
    # restrictions are modified without providing custom values for all fields.
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [CardRestrictionReq] body Optional parameter: Card Restriction
    # request body
    # @return [CardRestrictionResponse] response from the API call.
    def apply_restriction(apikey,
                          request_id,
                          body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v2/restriction/card',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CardRestrictionResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end

    # This API enables clients to create a new card bundle and apply
    # restrictions.
    # #### Supported operations
    #   * Create bundle and include mandatory -
    #     * Usage, day/time, product and location restrictions
    #     * List of cards to add to bundle
    #   * Create bundle and include optional identifier of bundle in external
    # system
    # #### Validation rules
    #   The following are the key validation rules with the associated error
    # codes for failed validation-
    #   * `7012` - At least one card must be added to the bundle
    #   *  `7011` - The total number of cards passed in the input must be 500 or
    # less.
    #   *  `7014` - All the cards passed in the input are part of the selected
    # account.
    #   *  `7013` - At least one restriction must be applied to the bundle i.e.
    # either of usage, day/time, location or product restriction.
    #   *  `7005` - Day time restriction cannot be set to restrict the use of a
    # card on all days of the week.
    #   *  `7000` - Usage restriction of the bundle is not open ended i.e. all
    # the limits within the usage restriction must not be set to 0/null.
    #   *  `7004` - In the usage restrictions, the limits per transaction should
    # be less than or equal to Daily, Daily should be less than or equal to
    # Weekly, Weekly should be less than or equal to Monthly. Exception being
    # 0/blank will be skipped, i.e. Daily value should be less than equal to
    # Monthly value if Weekly value is 0/blank.
    #   *  `0007` - Error returned if request parameters fail validation e.g.
    # mandatory check.
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [CreateBundleRequest] body Optional parameter: CreateBundle request
    # body
    # @return [CreateBundleResponse] response from the API call.
    def create_bundle(apikey,
                      request_id,
                      body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v1/restriction/createbundle',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CreateBundleResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end

    # This API enables clients to update an existing card bundle and its
    # associated restrictions.
    # #### Supported operations
    #   * Add new cards to an existing bundle
    #   * Remove cards from existing bundle
    #   * Update restrictions applied to existing bundle
    #   The following are the key validation rules with the associated error
    # codes for failed validation-
    # #### Validation rules
    #   *  `9007` - The cards must exist in the cards platform for adding or
    # removing cards.
    #   *  `7014` - All the cards passed in the input are part of the selected
    # account.
    #   *  `7018` - All the cards passed in the input are part of the selected
    # bundle.
    #   *  `7011` - The total number of cards passed in the input must be 500 or
    # less.
    #   *  `7012` - The action to remove cards should not result in removing all
    # the cards from the bundle.
    #   *  `7016` - At least one restriction must be modified for â€œUpdateâ€
    # request action.
    #   *  `7013` - All restrictions cannot be marked for â€œResetâ€ for
    # â€œUpdateâ€ request action.
    #   *  `7005` - Day time restriction cannot be set to restrict the use of a
    # card on all days of the week. This validation is applicable for Update
    # request action.
    #   *  `7000` - Usage restriction of the bundle is not open ended i.e., all
    # the limits within the usage restriction must not be set to 0/null. This
    # validation is applicable for Update request action.
    #   *  `7004` - In the usage restrictions, the limits per transaction should
    # be less than or equal to Daily, Daily should be less than or equal to
    # Weekly, Weekly should be less than or equal to Monthly. Exception being
    # 0/blank will be skipped, i.e., Daily value should be less than equal to
    # Monthly value if Weekly value is 0/blank. This validation is applicable
    # for Update request action.
    #   *  `0007` - Error returned if request parameters fail validation e.g. at
    # least one card must be provided in the input.
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [UpdateBundleRequest] body Optional parameter: Update Bundle
    # request body
    # @return [UpdateBundleResponse] response from the API call.
    def update_bundle(apikey,
                      request_id,
                      body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v1/restriction/updatebundle',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(UpdateBundleResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end

    # This API enables clients to delete an existing card bundle in the Shell
    # Card Platform. Once the card bundle is deleted the usage and product
    # restrictions of the cards that were present in the bundle will be reset
    # based on the request.
    # #### Supported operations
    #   * Delete card bundle by bundle Id
    # #### Validation rules
    #   The following are the key validation rules with the associated error
    # codes for failed validation-
    #   *  `7019` - The given card bundle is not available in the Shell Card
    # Platform.
    #   *  `0007` - Error returned if request parameters fail validation e.g.
    # mandatory check.
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [DeleteBundleRequest] body Optional parameter: Update Bundle
    # request body
    # @return [DeleteBundleResponse] response from the API call.
    def delete_bundle(apikey,
                      request_id,
                      body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v1/restriction/deletebundle',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(DeleteBundleResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end

    # This API allows clients to get a summary of card bundles associated with
    # Payer/Account. This API will return the basic bundle details including
    # card and restriction details. Optionally the API will also include a count
    # of cards that are not associated with the bundle but returned by the
    # search criteria.
    # Note - to include count of cards of an account that are not associated
    # with any bundles, in the input parameter SearchCardBundles either pass all
    # the bundles of the account in the list or pass only account with bundle id
    # left blank/null.
    # #### Supported operations
    #   * Get summary of bundles by list of bundle Ids
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [SummaryofbundlerRequest] body Optional parameter: Summary of
    # Bundle request body
    # @return [SummaryofbundleResponse] response from the API call.
    def summaryofbundles(apikey,
                         request_id,
                         body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v1/restriction/summaryofbundles',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SummaryofbundleResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end

    # This API allows setting or updating the usage restrictions of an existing
    # account.
    # Then validation rules applied for this API.
    # •    The account exists.
    # •    Day time restriction cannot be set to restrict the use of a card,
    # under the account, on all days of the week.
    # •    Either of the usage, daytime or location is either marked for reset
    # or new restriction values provided for the account.
    # •    In usage restrictions, the limits per transaction should be less than
    # or equal to Daily, Daily should be less than or equal to Weekly, Weekly
    # should be less than or equal to Monthly. Exception being 0/blank will be
    # skipped, i.e., Daily value should be less than equal to Monthly value if
    # Weekly value is 0/blank.
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [AccountRestrictionRequest] body Optional parameter: Account
    # Restriction request body
    # @return [AccountRestrictionResponse] response from the API call.
    def restriction_account(apikey,
                            request_id,
                            body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v1/restriction/account',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BearerToken')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(AccountRestrictionResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end

    # This API will allow user to get account level limits for the given
    # account. It returns the velocity limits if its overridden at the account
    # else the values will be null/empty.
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [SearchAccountLimitRequest] body Optional parameter: Search Account
    # Limit RequestBody
    # @return [SearchAccountLimitResponse] response from the API call.
    def search_account_limit(apikey,
                             request_id,
                             body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v1/restriction/searchaccountlimit',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SearchAccountLimitResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end

    # This API allows to get the details of a specific card bundle. It returns
    # the bundle basic details along with the cards in the bundle and
    # restrictions applied on them.
    # @param [String] apikey Required parameter: This is the API key of the
    # specific environment which needs to be passed by the client.
    # @param [String] request_id Required parameter: Mandatory UUID (according
    # to RFC 4122 standards) for requests and responses. This will be played
    # back in the response from the request.
    # @param [BudleDetailsRequest] body Optional parameter: Bundle Details
    # Request body
    # @return [BundleDetailsResponse] response from the API call.
    def bundledetails(apikey,
                      request_id,
                      body: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/fleetmanagement/v1/restriction/bundledetails',
                                     Server::SHELL)
                   .header_param(new_parameter(apikey, key: 'apikey'))
                   .header_param(new_parameter(request_id, key: 'RequestId'))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('BasicAuth')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(BundleDetailsResponse.method(:from_hash))
                    .local_error('400',
                                 "The server cannot or will not process the request  due to'\
                                  ' something that is perceived to be a client\r\n error (e.g.,'\
                                  ' malformed request syntax, invalid \r\n request message'\
                                  ' framing, or deceptive request routing).",
                                 APIException)
                    .local_error('401',
                                 'The request has not been applied because it lacks valid '\
                                  ' authentication credentials for the target resource.',
                                 APIException)
                    .local_error('403',
                                 'The server understood the request but refuses to authorize it'\
                                  '.',
                                 APIException)
                    .local_error('404',
                                 'The origin server did not find a current representation  for'\
                                  ' the target resource or is not willing to disclose  that one'\
                                  ' exists.',
                                 APIException)
                    .local_error('500',
                                 'The server encountered an unexpected condition the prevented'\
                                  ' it from fulfilling the request.',
                                 APIException))
        .execute
    end
  end
end
