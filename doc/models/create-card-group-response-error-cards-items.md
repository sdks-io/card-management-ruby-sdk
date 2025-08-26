
# Create Card Group Response Error Cards Items

## Structure

`CreateCardGroupResponseErrorCardsItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_id` | `Integer` | Optional | Card Id of the card. |
| `pan` | `String` | Optional | PAN of the card. |
| `error_code` | `String` | Optional | Error code for validation failure. |
| `error_description` | `String` | Optional | Description of validation failure. |

## Example (as JSON)

```json
{
  "CardId": 1234,
  "PAN": "7002097550439850718",
  "ErrorCode": "E0001",
  "ErrorDescription": "Card is not active"
}
```

