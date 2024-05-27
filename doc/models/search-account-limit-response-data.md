
# Search Account Limit Response Data

## Structure

`SearchAccountLimitResponseData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | - |
| `account_number` | `String` | Optional | Account Number |
| `reference_product` | `String` | Optional | 3 digit Shell global fuel product code, if already set up. |
| `restriction_condition` | `String` | Optional | The restriction condition code. |
| `velocity_limits` | [`Array<AccountVelocityLimit>`](../../doc/models/account-velocity-limit.md) | Optional | - |

## Example (as JSON)

```json
{
  "AccountId": 29484,
  "AccountNumber": "GB99215176",
  "ReferenceProduct": "021",
  "RestrictionCondition": "DECLINE_ALERT",
  "VelocityLimits": [
    {
      "Type": "Type0",
      "Period": "Period2",
      "Limit": 24.94,
      "Accumulation": 132.24,
      "Balance": 189.6
    },
    {
      "Type": "Type0",
      "Period": "Period2",
      "Limit": 24.94,
      "Accumulation": 132.24,
      "Balance": 189.6
    }
  ]
}
```

