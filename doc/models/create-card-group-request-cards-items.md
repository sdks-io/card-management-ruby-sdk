
# Create Card Group Request Cards Items

## Structure

`CreateCardGroupRequestCardsItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account Id of the account of the card.<br>Optional if AccountNumber is passed, else Mandatory. |
| `account_number` | `String` | Optional | Account Number of the account of the card.<br>Optional if AccountId is passed, else Mandatory. |
| `card_id` | `Integer` | Optional | Card Id of the card.<br>Optional if PAN is passed, else Mandatory. |
| `pan` | `String` | Optional | PAN of the card.<br>Optional if CardId is passed, else Mandatory. |

## Example (as JSON)

```json
{
  "AccountId": 164,
  "AccountNumber": "AccountNumber4",
  "CardId": 70,
  "PAN": "PAN6"
}
```

