
# Cancel Card Response

## Structure

`CancelCardResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique request identifier passed from end user. This identifier helps in tracing a transaction |
| `main_reference` | `Integer` | Optional | Cancel card reference number for tracking the execution of the request. |
| `order_replacement_reference` | `Integer` | Optional | Order replacement reference number for tracking the execution of the order replacement cards request. |
| `status` | `String` | Optional | Indicates overall status of the request. Allowed values: SUCCESS, FAILED, PARTIAL_SUCCESS |
| `data` | [`Array<SubmittedCard>`](../../doc/models/submitted-card.md) | Optional | - |
| `errors` | [`Array<ErrorDetails>`](../../doc/models/error-details.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "RequestId2",
  "MainReference": 166,
  "OrderReplacementReference": 120,
  "Status": "Status8",
  "Data": [
    {
      "ReplacementCardReference": 84,
      "UpdateCardReference": 178,
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "CardExpiryDate": "CardExpiryDate6"
    },
    {
      "ReplacementCardReference": 84,
      "UpdateCardReference": 178,
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "CardExpiryDate": "CardExpiryDate6"
    },
    {
      "ReplacementCardReference": 84,
      "UpdateCardReference": 178,
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "CardExpiryDate": "CardExpiryDate6"
    }
  ]
}
```

