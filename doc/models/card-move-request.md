
# Card Move Request

## Structure

`CardMoveRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `col_co_code` | `Integer` | Optional | - |
| `col_co_id` | `Integer` | Optional | - |
| `col_co_country_code` | `String` | Optional | - |
| `payer_number` | `String` | Optional | - |
| `payer_id` | `Integer` | Optional | - |
| `cards` | [`Array<CardMoveRequestCardsItems>`](../../doc/models/card-move-request-cards-items.md) | Optional | - |
| `target_account_id` | `Integer` | Optional | - |
| `target_account_number` | `String` | Optional | - |
| `target_card_group_id` | `Integer` | Optional | - |
| `target_new_card_group_name` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "ColCoCode": 166,
  "ColCoId": 152,
  "ColCoCountryCode": "ColCoCountryCode0",
  "PayerNumber": "PayerNumber2",
  "PayerId": 200
}
```

