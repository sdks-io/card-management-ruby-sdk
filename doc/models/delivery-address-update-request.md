
# Delivery Address Update Request

## Structure

`DeliveryAddressUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `col_co_id` | `Integer` | Optional | Collecting Company Id of the selected payer.<br>Optional if ColCoCode is passed else Mandatory. |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code) of the selected payer.<br>Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia, Ukraine etc. It is optional for other countries if ColCoID is provided. |
| `payer_id` | `Integer` | Optional | Payer Id (i.e. Customer Id of the Payment Customer) of the selected payer.<br>Optional if PayerNumber is passed else Mandatory |
| `payer_number` | `String` | Optional | Payer Number (Ex: GB000000123) of the selected payer.<br>Optional if PayerId is passed else Mandatory |
| `account_id` | `Integer` | Optional | Account ID of the customer.<br>Optional if AccountNumber is passed, else mandatory. |
| `account_number` | `String` | Optional | Account Number of the customer.<br>Optional if AccountId is passed, else mandatory.<br>This input is a search criterion, if given. |
| `delivery_address_updates` | [`Array<DeliveryAddressUpdate>`](../../doc/models/delivery-address-update.md) | Optional | - |

## Example (as JSON)

```json
{
  "ColCoId": 5,
  "ColCoCode": 5,
  "PayerId": 123456,
  "PayerNumber": "GB000000123",
  "AccountId": 12356,
  "AccountNumber": "GB000000124"
}
```

