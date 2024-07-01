
# Search Account Limit Response

## Structure

`SearchAccountLimitResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Request Id of the API call |
| `account_id` | `Integer` | Optional | Account ID of the customer. |
| `account_number` | `String` | Optional | Account Number<br>Example: GB99215176 |
| `reference_product` | `String` | Optional | 3 digit Shell global fuel product code, if already set up.<br>Example: 021 |
| `restriction_condition` | `String` | Optional | The restriction condition code.<br>Example: DECLINE_ALERT |
| `velocity_limits` | [`Array<AccountVelocityLimit>`](../../doc/models/account-velocity-limit.md) | Optional | - |
| `error` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "2ace3991-5d03-4a68-ac68-ca9119b25101",
  "AccountId": 114,
  "AccountNumber": "AccountNumber2",
  "ReferenceProduct": "ReferenceProduct2",
  "RestrictionCondition": "RestrictionCondition0"
}
```

