
# Cart Type Account

## Structure

`CartTypeAccount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account Id of the customer. |
| `account_number` | `String` | Optional | Account Number of the customer. |
| `is_default` | `TrueClass \| FalseClass` | Optional | Whether card type is default or not. |
| `customer_card_type_id` | `Integer` | Optional | Customer Card Type Id in Cards Platform. |
| `is_visible_to_customers` | `TrueClass \| FalseClass` | Optional | True/False – Whether the card type can be used for card ordering. <br><br> Note - IsVisibleToCustomers will be set as ‘false’ when the card type is not active or. configured in MS to be not visible. |
| `emboss_account_name` | `String` | Optional | Default Name to be embossed on the card. |
| `default_purchase_category_id` | `Integer` | Optional | Default Purchase category of the card type. |
| `usage_restrictions` | [`CardUsageRestrictions`](../../doc/models/card-usage-restrictions.md) | Optional | - |
| `day_time_restrictions` | [`CardDayTimeRestrictions`](../../doc/models/card-day-time-restrictions.md) | Optional | - |

## Example (as JSON)

```json
{
  "AccountId": 1234,
  "AccountNumber": "GB000000123",
  "IsDefault": true,
  "CustomerCardTypeId": 1,
  "IsVisibleToCustomers": true,
  "EmbossAccountName": "abcd1234",
  "DefaultPurchaseCategoryId": 34
}
```

