
# Account Restriction Response

## Structure

`AccountRestrictionResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Request Id of the API call |
| `account_id` | `Integer` | Optional | Account Id on which restriction is applied.<br>Example: 123456 |
| `account_number` | `String` | Optional | Account Number on which restriction is applied.<br>Example: GB000000123 |
| `usage_restriction_status` | `String` | Optional | Status of the card usage restriction submitted to Gateway. Based on the response from Gateway value will be set as either “Success” or “Failed”. |
| `usage_restriction_description` | `String` | Optional | Response for the usage restriction in case of an error. This field will have a value only when “UsageRestrictionStatus” is “Failed”. |
| `error` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "2ace3991-5d03-4a68-ac68-ca9119b25101",
  "AccountId": 130,
  "AccountNumber": "AccountNumber8",
  "UsageRestrictionStatus": "UsageRestrictionStatus8",
  "UsageRestrictionDescription": "UsageRestrictionDescription2"
}
```

