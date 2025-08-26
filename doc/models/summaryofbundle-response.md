
# Summaryofbundle Response

## Structure

`SummaryofbundleResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payer_id` | `Integer` | Optional | Payer Id of the bundles and cards.<br>Example: 123456 |
| `payer_number` | `String` | Optional | Payer Number of the bundles and cards.<br>Example: GB000000123 |
| `account_id` | `Integer` | Optional | - |
| `account_number` | `String` | Optional | Account Number of the bundle.<br>Example: GB000000123 |
| `count_of_cards_not_in_bundle` | `Integer` | Optional | Count of cards that are not part of the bundle in a given account. |
| `card_bundles` | [`CardBundle`](../../doc/models/card-bundle.md) | Optional | - |

## Example (as JSON)

```json
{
  "PayerId": 70,
  "PayerNumber": "PayerNumber2",
  "AccountId": 130,
  "AccountNumber": "AccountNumber4",
  "CountOfCardsNotInBundle": 190
}
```

