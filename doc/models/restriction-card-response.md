
# Restriction Card Response

## Structure

`RestrictionCardResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `main_reference` | `Integer` | Optional | Main reference number for tracking.<br>Example: 123455 |
| `request_id` | `String` | Optional | API Request Id |
| `status` | `String` | Optional | API Response Status |
| `data` | [`Array<RestrictionCardResponseDataItems>`](../../doc/models/restriction-card-response-data-items.md) | Optional | List of card restriction requests validated and submitted successfully for processing. |

## Example (as JSON)

```json
{
  "MainReference": 104,
  "RequestId": "RequestId0",
  "Status": "Status6",
  "Data": [
    {
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "CardId": 224,
      "DayTimeRestrictionDescription": "DayTimeRestrictionDescription8",
      "DayTimeRestrictionStatus": "DayTimeRestrictionStatus8"
    },
    {
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "CardId": 224,
      "DayTimeRestrictionDescription": "DayTimeRestrictionDescription8",
      "DayTimeRestrictionStatus": "DayTimeRestrictionStatus8"
    }
  ]
}
```

