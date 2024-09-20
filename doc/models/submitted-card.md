
# Submitted Card

Response entity object for SubmittedCard list <br/>Note: This list will be empty for status 9006 and 9012 i.e., request for all the cards failed.

## Structure

`SubmittedCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `replacement_card_reference` | `Integer` | Optional | Reference number for tracking of replacement card order request of the specific card,<br /><br>This is applicable for requests with target status as Block and OrderReplacement passed as True. |
| `update_card_reference` | `Integer` | Optional | Reference number for tracking of update status request of the specific card, |
| `account_id` | `Integer` | Optional | Account Id of the customer.<br /><br>Optional if AccountNumber is passed, else Mandatory. |
| `account_number` | `String` | Optional | Account Number of the customer.<br /><br>Optional if AccountId is passed, else Mandatory. |
| `card_expiry_date` | `String` | Optional | Expiry date of the card.<br /><br>Mandatory if PAN is passed, else optional.<br /><br>Format: yyyyMMdd |
| `card_id` | `Integer` | Optional | Card Id of the card.<br /><br>Optional if PAN is passed, else Mandatory. |
| `col_co_code` | `Integer` | Optional | Collecting company code of the customer. <br /><br>Optional if ColCoId is passed, else Mandatory.<br /> |
| `col_co_id` | `Integer` | Optional | Collecting company id of the customer. <br /><br>Optional if ColCoCode is passed, else Mandatory.<br /> |
| `pan` | `String` | Optional | PAN of the card.<br /><br>Optional if CardId is passed, else Mandatory.<br /> |
| `panid` | `Float` | Optional | PANID of the card |
| `masked_pan` | `String` | Optional | Card PAN |
| `payer_id` | `Integer` | Optional | Payer id of the customer.<br /><br>Optional if PayerNumber is passed, else Mandatory. |
| `payer_number` | `String` | Optional | PayerNumber of the customer.<br /><br>Optional if PayerId is passed, else Mandatory. |

## Example (as JSON)

```json
{
  "ReplacementCardReference": 234,
  "UpdateCardReference": 140,
  "AccountId": 124,
  "AccountNumber": "AccountNumber8",
  "CardExpiryDate": "CardExpiryDate6"
}
```

