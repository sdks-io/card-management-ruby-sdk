# Customer

APIs for Retrieve and Update customer specific details

```ruby
customer_controller = client.customer
```

## Class Name

`CustomerController`

## Methods

* [Loggedin User](../../doc/controllers/customer.md#loggedin-user)
* [Customer Payers](../../doc/controllers/customer.md#customer-payers)
* [Customer Detail](../../doc/controllers/customer.md#customer-detail)
* [Post Card Accounts](../../doc/controllers/customer.md#post-card-accounts)
* [Customer Card Type](../../doc/controllers/customer.md#customer-card-type)
* [Card Groups](../../doc/controllers/customer.md#card-groups)
* [Audit Report](../../doc/controllers/customer.md#audit-report)
* [Customer Create Card Group](../../doc/controllers/customer.md#customer-create-card-group)
* [Customer Update Card Group](../../doc/controllers/customer.md#customer-update-card-group)


# Loggedin User

This operation allows querying the user data of the logged in user.
This operation should be called only after successful authentication of the end user in client application. This operation will return the user access details such as payers and/or accounts.
This operation will also validate that logged in user has access to the requested operation, on failure it will return HasAPIAccess flag as false in the response.

```ruby
def loggedin_user(request_id,
                  body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`LoggedInUserReq`](../../doc/models/logged-in-user-req.md) | Body, Required | - |

## Response Type

[`LoggedInUserRes`](../../doc/models/logged-in-user-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = LoggedInUserReq.new(
  FleetmanagementV1UserLoggedinuserRequest.new
)

result = customer_controller.loggedin_user(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Customer Payers

This API allows querying the payer accounts details from the Shell Cards
Platform. It provides flexible search criteria for searching payer
information and supports paging.

Paging is applicable only when all the
payers passed in the input are from the same ColCo.

However, paging will
be ignored and the API will return all the matching data by merging the
data queried from each ColCo when payers passed in the input are from
multiple ColCos.

```ruby
def customer_payers(request_id,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`PayerReq`](../../doc/models/payer-req.md) | Body, Required | - |

## Response Type

[`PayerRes`](../../doc/models/payer-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = PayerReq.new(
  PayerRequest.new(
    []
  ),
  1,
  100
)

result = customer_controller.customer_payers(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Customer Detail

This API allows querying the card delivery addresses of a given account from the Shell Cards Platform. Only active delivery addresses will be returned.

```ruby
def customer_detail(request_id,
                    body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`CustomerReq`](../../doc/models/customer-req.md) | Body, Required | - |

## Response Type

[`CustomerRes`](../../doc/models/customer-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = CustomerReq.new(
  CustomerDetailRequest.new
)

result = customer_controller.customer_detail(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Post Card Accounts

This API allows querying the customer account details from the Shell Cards Platform. It provides a flexible search criterion and supports pagination.

```ruby
def post_card_accounts(request_id,
                       body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`AccountReq`](../../doc/models/account-req.md) | Body, Required | - |

## Response Type

[`AccountRes`](../../doc/models/account-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = AccountReq.new(
  AccountRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    [],
    nil,
    []
  ),
  1,
  100
)

result = customer_controller.post_card_accounts(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Customer Card Type

This API provides allows querying the active card types that are associated to the given account.

The API returns the card type configurations, purchase categories associated with the card type and the card type restriction limits.

```ruby
def customer_card_type(request_id,
                       body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`CardTypeReq`](../../doc/models/card-type-req.md) | Body, Required | - |

## Response Type

[`CardTypeRes`](../../doc/models/card-type-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = CardTypeReq.new(
  CardTypeRequest.new
)

result = customer_controller.customer_card_type(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Card Groups

This API allows querying the card group details from the Shell Cards
Platform. It provides flexible search criteria and supports paging.

When the account is not passed in the input and card group type is configured as
â€˜Verticalâ€™ in the cards platform, this API will return all card groups from
the payer as well as from all the accounts under the payer.

When the account is not passed in the input and card group type is configured as
â€˜Horizontalâ€™ in cards platform, this API will return all card groups
configured directly under the payer.

```ruby
def card_groups(request_id,
                body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`CardGroupReq`](../../doc/models/card-group-req.md) | Body, Required | - |

## Response Type

[`CardGroupRes`](../../doc/models/card-group-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = CardGroupReq.new(
  CardGroupRequest.new(
    nil,
    nil,
    nil,
    nil,
    []
  ),
  1,
  100
)

result = customer_controller.card_groups(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Audit Report

This operation allows users to fetch audit data of account or card operations performed by users of a given customer
The audit data includes details of below API operations

* Order Card
* Create Card Group
* PIN reminder
* Move Cards
* Update Card Status
* Update Card Group
* Auto renew
* Bulk card order
* Bulk card block
* Bulk Card Order (Multi Account)
* BCOSummary
* BCOMultiAccountSummary
* BCBSummary
* Mobile Payment Registration
* Fund Transfer (Scheduled & Realtime)
* Delivery Address Update.

```ruby
def audit_report(request_id,
                 body: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`AuditReq`](../../doc/models/audit-req.md) | Body, Optional | request body |

## Response Type

[`AuditResponse`](../../doc/models/audit-response.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = AuditReq.new(
  AuditRequest.new(
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    Accounts.new,
    []
  ),
  1,
  100
)

result = customer_controller.audit_report(
  request_id,
  body: body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Customer Create Card Group

This API allows creating a new Card Group in the Shell Cards Platform. It will
also allow moving of cards (up to 500 cards) into the newly created
card-group.

Move Card requests are queued after
passing the below validations

- Given PAN matches with only one
  card.
- Card is allowed to be moved to the Target Card Group and/or
  Target account requested.
- There is no pending Move Card request for
  the same card in the queue which is submitted on the same date
  (customerâ€™s local) and is yet to be processed or has been processed
  successfully

```ruby
def customer_create_card_group(request_id,
                               body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`CreateCardGroupRequest`](../../doc/models/create-card-group-request.md) | Body, Required | - |

## Response Type

[`CreateCardGroupRes`](../../doc/models/create-card-group-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = CreateCardGroupRequest.new(
  86,
  1,
  'GB00123456',
  123456,
  123456,
  'GB00123456',
  true,
  nil,
  []
)

result = customer_controller.customer_create_card_group(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |


# Customer Update Card Group

This API allows updating or removing a Card Group in the Shell Cards
Platform.

It also allows moving of cards out of a card group or from one card group to another existing card group.

The request for updating or removing of the card group, creationg of a new card group (where-applicable) and moving of card into another card group will be queued after passing the basic
validations.

```ruby
def customer_update_card_group(request_id,
                               body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Header, Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `body` | [`UpdateCardGroupRequest`](../../doc/models/update-card-group-request.md) | Body, Required | - |

## Response Type

[`UpdateCardGroupRes`](../../doc/models/update-card-group-res.md)

## Example Usage

```ruby
request_id = 'RequestId8'

body = UpdateCardGroupRequest.new(
  86,
  1,
  'GB00123456',
  123456,
  123456,
  'GB00123456',
  1234,
  'test',
  true,
  123,
  true,
  true,
  123456,
  'GB00123452',
  'test1',
  1232
)

result = customer_controller.customer_update_card_group(
  request_id,
  body
)
puts result
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | The server cannot or will not process the request due to something that is perceived to be a client error (e.g., malformed request syntax, invalid request message framing, or deceptive request routing). | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 401 | The request has not been applied because it lacks valid  authentication credentials for the target resource. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 403 | Forbidden | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 404 | The origin server did not find a current representation  for the target resource or is not willing to disclose  that one exists. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |
| 500 | The server encountered an unexpected condition that  prevented it from fulfilling the request. | [`ErrorObjectErrorException`](../../doc/models/error-object-error-exception.md) |

