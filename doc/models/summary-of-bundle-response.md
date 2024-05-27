
# Summary of Bundle Response

## Structure

`SummaryOfBundleResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `data` | [`Array<SummaryOfBundleResponseDataItems>`](../../doc/models/summary-of-bundle-response-data-items.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "RequestId2",
  "Status": "Status8",
  "Data": [
    {
      "PayerId": 2,
      "PayerNumber": "PayerNumber6",
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "CountOfCardsNotInBundle": 122
    }
  ]
}
```

