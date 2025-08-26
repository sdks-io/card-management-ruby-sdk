
# Account Restriction Res

## Structure

`AccountRestrictionRes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique identifier for the request. This will be played back in the response from the request. |
| `status` | `String` | Optional | Status of the request |
| `data` | [`Array<AccountRestrictionResponse>`](../../doc/models/account-restriction-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "0e6fb42a-51b0-43b2-f010-92f822657f6a",
  "Status": "SUCCESS",
  "Data": [
    {
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "UsageRestrictionStatus": "UsageRestrictionStatus8",
      "UsageRestrictionDescription": "UsageRestrictionDescription2"
    },
    {
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "UsageRestrictionStatus": "UsageRestrictionStatus8",
      "UsageRestrictionDescription": "UsageRestrictionDescription2"
    }
  ]
}
```

