
# Account Access

## Structure

`AccountAccess`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `colco_id` | `Integer` | Optional | Collecting company id. |
| `colco_code` | `Integer` | Optional | Collecting company code. |
| `payer_id` | `Integer` | Optional | Payer Id to which the user has access |
| `payer_number` | `String` | Optional | Payer Number to which the user has access |
| `payer_name` | `String` | Optional | Name of the Payer to which the user has access |
| `account_id` | `Integer` | Optional | Account Id to which the user has access |
| `account_number` | `String` | Optional | Account Number to which the user has access |
| `account_name` | `String` | Optional | Name of the Account to which the user has access |

## Example (as JSON)

```json
{
  "ColcoId": 14,
  "ColcoCode": 14,
  "PayerId": 854,
  "PayerNumber": "DE26688504",
  "PayerName": "TK MobilPlus",
  "AccountId": 435,
  "AccountNumber": "DE26688504",
  "AccountName": "TK Sub Account"
}
```

