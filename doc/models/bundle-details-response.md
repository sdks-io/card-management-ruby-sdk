
# Bundle Details Response

## Structure

`BundleDetailsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payer_id` | `Integer` | Optional | Payer Id of the bundles and cards.<br>Example: 123456 |
| `payer_number` | `String` | Optional | Payer Number of the bundles and cards.<br>Example: GB000000123 |
| `account_id` | `Integer` | Optional | Account ID of the bundle.<br>Example: 123456 |
| `account_number` | `String` | Optional | Account Number of the bundle.<br>Example: GB000000123 |
| `bundle_id` | `String` | Optional | unique identifier for the Card Bundle |
| `external_bundle_id` | `String` | Optional | External system allocated Card Bundle identifier for Card Bundle. |
| `description` | `String` | Optional | Card Bundle Description. |
| `pans` | `Array<String>` | Optional | List of Card Pans added to the card bundle. |
| `restriction_currency_code` | `String` | Optional | ISO currency code of the country.<br>Example: GBP |
| `restriction_currency_symbol` | `String` | Optional | Currency symbol of the country.<br>Example: £, $ |
| `restrictions` | [`BundledRestrictionsList`](../../doc/models/bundled-restrictions-list.md) | Optional | - |
| `error` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `request_id` | `String` | Optional | API Request Id |

## Example (as JSON)

```json
{
  "PayerId": 172,
  "PayerNumber": "PayerNumber4",
  "AccountId": 232,
  "AccountNumber": "AccountNumber6",
  "BundleId": "BundleId4"
}
```

