
# Create Bundle Request

## Structure

`CreateBundleRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `col_co_id` | `Integer` | Optional | Collecting Company Id of the selected payer.<br>Optional if ColCoCode is passed else Mandatory.<br>Example:<br>1 for Philippines<br>5 for UK |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code) of the selected payer.<br>Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia, Ukraine etc. It is optional for other countries if ColCoID is provided.<br>Example:<br>86 for Philippines<br>5 for UK |
| `payer_id` | `Integer` | Optional | Payer Id of the selected payer.<br>Either PayerId or PayerNumber or both must be passed.<br>Example: 123456 |
| `payer_number` | `String` | Optional | Payer Number of the selected payer.<br>Either PayerId or PayerNumber or both must be passed.<br>Example: GB000000123 |
| `account_id` | `Integer` | Optional | Account ID of the customer.<br>Either AccountId or AccountNumber or both must be passed.<br>Example: 123456 |
| `account_number` | `String` | Optional | Account Number of the customer.<br>Either AccountId or AccountNumber or both must be passed.<br>Example: GB000000123 |
| `external_bundle_id` | `String` | Optional | Identifier of the bundle in external system.<br>Optional. |
| `description` | `String` | Optional | A bundle description.<br>Optional. |
| `cards` | `Array<String>` | Optional | List of Card PANs to be added in the bundle.<br>Mandatory.<br>Example: 7002051006629890645<br>When PAN matches with multiple cards, the restriction will be applied on the latest issued card. |
| `restrictions` | `Object` | Optional | - |

## Example (as JSON)

```json
{
  "ColCoId": 246,
  "ColCoCode": 4,
  "PayerId": 38,
  "PayerNumber": "PayerNumber2",
  "AccountId": 98
}
```

