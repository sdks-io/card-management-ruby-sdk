
# Card Management V1 Pinreminder Request

## Structure

`CardManagementV1PinreminderRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account Id of the customer.<br /><br>Optional if AccountNumber is passed, else Mandatory.<br /><br>This input is a search criterion, if given. |
| `account_number` | `String` | Optional | Account Number of the customer.<br /><br>Optional if AccountId is passed, else Mandatory.<br /><br>This input is a search criterion, if given. |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code) of the selected payer. <br /><br>Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia, Ukraine etc. <br /><br>It is optional for other countries if ColCoID is provided. |
| `col_co_id` | `Integer` | Optional | Collecting Company Id of the selected payer<br /><br>Optional if ColCoCode is passed else Mandatory. |
| `payer_id` | `Integer` | Optional | Payer Id (i.e. Customer Id of the Payment Customer of the selected payer.<br /><br>Optional if PayerNumber is passed else Mandatory |
| `payer_number` | `String` | Optional | Payer Number (Ex: GB000000123) of the selected payer.<br /><br>Optional if PayerId is passed else Mandatory |
| `pin_reminder_card_details` | [`Array<PINReminderCardDetails>`](../../doc/models/pin-reminder-card-details.md) | Optional | List of PINReminderCardDetails entity. The fields of this entity are described below. |

## Example (as JSON)

```json
{
  "AccountId": 18,
  "AccountNumber": "AccountNumber6",
  "ColCoCode": 180,
  "ColCoId": 166,
  "PayerId": 214
}
```

