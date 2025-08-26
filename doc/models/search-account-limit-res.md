
# Search Account Limit Res

## Structure

`SearchAccountLimitRes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique identifier for the request. This will be played back in the response from the request. |
| `status` | `String` | Optional | Status of the request |
| `data` | [`Array<SearchAccountLimitResponse>`](../../doc/models/search-account-limit-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "0e6fb42a-51b0-43b2-f010-92f822657f6a",
  "Status": "SUCCESS",
  "Data": [
    {
      "RequestId": "RequestId4",
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "ReferenceProduct": "ReferenceProduct8",
      "RestrictionCondition": "RestrictionCondition4"
    },
    {
      "RequestId": "RequestId4",
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "ReferenceProduct": "ReferenceProduct8",
      "RestrictionCondition": "RestrictionCondition4"
    },
    {
      "RequestId": "RequestId4",
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "ReferenceProduct": "ReferenceProduct8",
      "RestrictionCondition": "RestrictionCondition4"
    }
  ]
}
```

