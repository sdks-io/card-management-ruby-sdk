
# Payer Access

## Structure

`PayerAccess`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `is_default` | `TrueClass \| FalseClass` | Optional | Whether this payer is the default payer of the user.<br>**Default**: `false` |
| `colco_id` | `Integer` | Optional | Collecting company id. |
| `colco_code` | `Integer` | Optional | Collecting company code.<br>Example:<br>86-Philippines<br>5-UK |
| `col_co_country_code` | `String` | Optional | The 2-character ISO Code for the customer and card owning country |
| `payer_group_id` | `Integer` | Optional | Payer Group Id of the payer. |
| `payer_group` | `String` | Optional | Payer group of the payer.<br>The value of this parameter will always be null when the input parameter “IncludePayerGroup” is false. |
| `payer_id` | `Integer` | Optional | Payer Id to which the user has access<br>Example: 123456 |
| `payer_number` | `String` | Optional | Payer Number to which the user has access<br>Example: GB000000123 |
| `payer_name` | `String` | Optional | Name of the Payer to which the user has access |

## Example (as JSON)

```json
{
  "IsDefault": false,
  "ColcoId": 14,
  "ColcoCode": 14,
  "ColCoCountryCode": "DE",
  "PayerGroupId": 123,
  "PayerGroup": "null",
  "PayerId": 854,
  "PayerNumber": "DE26688504",
  "PayerName": "TK MobilPlus"
}
```

