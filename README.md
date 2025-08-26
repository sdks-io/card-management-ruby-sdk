
# Getting Started with Shell Card Management APIs

## Introduction

The Shell Card Management API provides secure and structured access to the Shell Card Platform, enabling integration with Shell’s internal systems for managing card-related resources.

This REST-based API uses the POST method for all operations—including retrieval, creation, update, and deletion of resources. It supports flexible search capabilities through JSON-encoded request bodies and returns JSON-formatted responses. Standard HTTP status codes are used to indicate the outcome of each request.

Authentication is handled via OAuth 2.0 using the Client Credentials flow. Access tokens must be included in the Authorization header of each request.

All resources are managed within the Shell Card Platform, which abstracts the complexity of backend systems. Some operations may be processed asynchronously, and clients should be prepared to handle delayed responses or polling mechanisms where applicable.

Go to the Shell Developer Portal: [https://developer.shell.com](https://developer.shell.com)

## Install the Package

Install the gem from the command line:

```bash
gem install card-management-sdk -v 2.0.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'card-management-sdk', '2.0.0'
```

For additional gem details, see the [RubyGems page for the card-management-sdk gem](https://rubygems.org/gems/card-management-sdk/versions/2.0.0).

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| environment | `Environment` | The API environment. <br> **Default: `Environment.SIT`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| client_credentials_auth_credentials | [`ClientCredentialsAuthCredentials`](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |

The API client can be initialized as follows:

```ruby
require 'shell_card_management_ap_is'
include ShellCardManagementApIs

client = Client.new(
  client_credentials_auth_credentials: ClientCredentialsAuthCredentials.new(
    o_auth_client_id: 'OAuthClientId',
    o_auth_client_secret: 'OAuthClientSecret'
  ),
  environment: Environment::SIT
)
```

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| SIT | **Default** |
| Production | - |

## Authorization

This API uses the following authentication schemes.

* [`BearerToken (OAuth 2 Client Credentials Grant)`](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/auth/oauth-2-client-credentials-grant.md)

## List of APIs

* [Customer](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/controllers/customer.md)
* [Restriction](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/controllers/restriction.md)
* [Card](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/controllers/card.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/proxy-settings.md)

### HTTP

* [HttpResponse](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/http-request.md)

### Utilities

* [ApiHelper](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/2.0.0/doc/date-time-helper.md)

