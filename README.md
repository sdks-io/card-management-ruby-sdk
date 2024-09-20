
# Getting Started with Shell Card Management APIs

## Introduction

The Shell Card Management API is REST-based and employs OAUTH 2.0,Basic and ApiKey authentication.
The API endpoints accept JSON-encoded request bodies, return JSON-encoded responses and use standard HTTP response codes.  
All resources are located in the Shell Card Platform.  The Shell Card Platform is the overall platform that encompasses all the internal Shell systems used to manage resources.
The internal workings of the platform are not important when interacting with the API. However, it is worth noting that the platform uses a microservice architecture to communicate with various backend systems and some API calls are processed asynchronously.
All endpoints use the `POST` verb for retrieving, updating, creating and deleting resources in the Shell Card Platform. The endpoints that retrieve resources from the Shell Card Platform allow flexible search parameters in the API request body.

Go to the Shell Developer Portal: [https://developer.shell.com](https://developer.shell.com)

## Install the Package

Install the gem from the command line:

```ruby
gem install card-management-sdk -v 1.2.0
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'card-management-sdk', '1.2.0'
```

For additional gem details, see the [RubyGems page for the card-management-sdk gem](https://rubygems.org/gems/card-management-sdk/versions/1.2.0).

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| `environment` | `Environment` | The API environment. <br> **Default: `Environment.SIT`** |
| `connection` | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| `adapter` | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| `timeout` | `Float` | The value to use for connection timeout. <br> **Default: 60** |
| `max_retries` | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| `retry_interval` | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| `backoff_factor` | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| `retry_statuses` | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| `retry_methods` | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| `http_callback` | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| `basic_auth_credentials` | [`BasicAuthCredentials`](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/auth/basic-authentication.md) | The credential object for Basic Authentication |
| `bearer_token_credentials` | [`BearerTokenCredentials`](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/auth/oauth-2-client-credentials-grant.md) | The credential object for OAuth 2 Client Credentials Grant |

The API client can be initialized as follows:

```ruby
client = ShellCardManagementApIs::Client.new(
  basic_auth_credentials: BasicAuthCredentials.new(
    username: 'Username',
    password: 'Password'
  ),
  bearer_token_credentials: BearerTokenCredentials.new(
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

* [`BasicAuth (Basic Authentication)`](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/auth/basic-authentication.md)
* [`BearerToken (OAuth 2 Client Credentials Grant)`](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/auth/oauth-2-client-credentials-grant.md)

## List of APIs

* [Customer](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/controllers/customer.md)
* [Restriction](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/controllers/restriction.md)
* [Card](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/controllers/card.md)

## Classes Documentation

* [Utility Classes](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/utility-classes.md)
* [HttpResponse](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/card-management-ruby-sdk/tree/1.2.0/doc/http-request.md)

