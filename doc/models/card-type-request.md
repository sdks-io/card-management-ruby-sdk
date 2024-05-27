
# Card Type Request

## Structure

`CardTypeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `col_co_id` | `Integer` | Optional | Collecting Company Id of the selected payer.<br>Optional if ColCoCode is passed else Mandatory. |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code) of the selected payer.<br>Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia, Ukraine etc. It is optional for other countries if ColCoID is provided. |
| `payer_id` | `Integer` | Optional | Payer Id of the selected payer. |
| `payer_number` | `String` | Optional | Payer Number of the selected payer. |
| `account_id` | `Integer` | Optional | Account Id of the customer.<br>Optional if AccountNumber is passed else Mandatory. |
| `account_number` | `String` | Optional | Account Number of the customer.<br>Optional if AccountId is passed else Mandatory<br>Example: GB000000124 |
| `include_usage_restrictions` | `TrueClass \| FalseClass` | Optional | Include usage restrictions in the response.<br>Optional field– default value is False.<br>Possible values: True/False |
| `include_purchase_categories` | `TrueClass \| FalseClass` | Optional | Include purchase categories in the response.<br>Optional field– default value is False.<br>Possible values: True/False |

## Example (as JSON)

```json
{
  "ColCoId": 14,
  "ColCoCode": 14,
  "PayerId": 2343,
  "PayerNumber": "GB000000124",
  "AccountId": 343,
  "AccountNumber": "GB000000124"
}
```

