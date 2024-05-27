
# Card Type Response Customer Card Types Items

## Structure

`CardTypeResponseCustomerCardTypesItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `can_have_pin` | `TrueClass \| FalseClass` | Optional | True/False – Whether the cards of this card type can have PIN. |
| `card_type_id` | `Integer` | Optional | Card Type Id |
| `card_type_name` | `String` | Optional | Card Type Name. |
| `col_co_currency_code` | `String` | Optional | ISO currency code of the country. |
| `customer_card_type_id` | `Integer` | Optional | Customer Card Type Id |
| `day_time_restrictions` | [`CardDayTimeRestrictions`](../../doc/models/card-day-time-restrictions.md) | Optional | - |
| `default_purchase_category_id` | `Integer` | Optional | Default Purchase category of the card type. |
| `emboss_account_name` | `String` | Optional | Default Name to be embossed on the card |
| `expiry_period` | `Integer` | Optional | Default Expiry period. |
| `is_crt` | `TrueClass \| FalseClass` | Optional | True/False – Wether it is a CRT Card type or not. |
| `is_fleet` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is it a Fleet Card typeor not. |
| `is_international` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is an International Card type or not. |
| `is_national` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is a National Card type or not. |
| `is_partner_sites_included` | `TrueClass \| FalseClass` | Optional | True/False – Whether this card type is allowed in partner Stations. |
| `is_shell_sites_only` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is only allowed in Shell Stations or not. |
| `is_virtual` | `TrueClass \| FalseClass` | Optional | True/False - Whether it is a Virtual Card type or not. |
| `is_visible_to_customers` | `TrueClass \| FalseClass` | Optional | True/False – Whether this card type is visible in SFH for card ordering. |
| `is_active` | `TrueClass \| FalseClass` | Optional | Whether card type is active or not. |
| `is_card_available_for_download` | `TrueClass \| FalseClass` | Optional | - |
| `is_card_visible_to_customers` | `TrueClass \| FalseClass` | Optional | - |
| `pan_length` | `Integer` | Optional | PAN Length |
| `purchase_categories` | [`Array<PurchaseCategories>`](../../doc/models/purchase-categories.md) | Optional | - |
| `token_type_id` | `Integer` | Optional | Token type identifier. |
| `token_type_name` | `String` | Optional | Token Type Name. |
| `usage_restrictions` | [`CardUsageRestrictions`](../../doc/models/card-usage-restrictions.md) | Optional | - |
| `emv_contactless` | `TrueClass \| FalseClass` | Optional | Is Europay, MasterCard, and Visa Contactless enabled or not. |
| `rfid` | `TrueClass \| FalseClass` | Optional | Whether the card type is enabled for RFID (Radio Frequency Identification) |
| `pin_change_supported` | `TrueClass \| FalseClass` | Optional | PIN change supported or not. |
| `require_pin` | `TrueClass \| FalseClass` | Optional | Whether a PIN is mandatory for the cards of this card type. |
| `offline_pin` | `TrueClass \| FalseClass` | Optional | Whether offline PIN is enabled or not. |
| `is_default` | `TrueClass \| FalseClass` | Optional | Whether card type is default or not. |
| `applications_to_show_npii_tokens` | `TrueClass \| FalseClass` | Optional | True/False<br>Note: ApplicationsToShowNPIITokens will be set as ‘True’ when the accessing application API key exists in the “ApplicationsToShowNPIITokens” card type configuration else “False”. |
| `medium_type_id` | `Integer` | Optional | Id of the medium type identifier.<br>Example: 1,2,4<br><br>Full list below:<br>1 - Fuel Card<br>2 - Fuel Card with EV<br>3 - EV only<br>4 - Fuel Card and Key Fob<br>5 - Key Fob<br>6 - Virtual Card<br>7 - NPII Token<br>8 – Smartpay Token |
| `medium_type` | `String` | Optional | Name of the medium type identifier.<br>Example: Fuel Card, Fuel Card with EV, Key Fob<br><br>Full list below:<br>1 - Fuel Card<br>2 - Fuel Card with EV<br>3 - EV only<br>4 - Fuel Card and Key Fob<br>5 - Key Fob<br>6 - Virtual Card<br>7 - NPII Token<br>8 - Smartpay Token |
| `col_co_currency_symbol` | `String` | Optional | Currency symbol of the country. |

## Example (as JSON)

```json
{
  "CardTypeId": 228,
  "CardTypeName": "DE-Kleinfhzg. International Multi",
  "ColCoCurrencyCode": "EUR",
  "CustomerCardTypeId": 1576,
  "DefaultPurchaseCategoryId": 127,
  "EmbossAccountName": "5.11.3 DE",
  "ExpiryPeriod": 48,
  "PANLength": 19,
  "TokenTypeId": 160,
  "TokenTypeName": "DE FLT INT MUL - CHIP",
  "MediumTypeID": 1,
  "MediumType": "Fuel Card",
  "ColCoCurrencySymbol": "£",
  "CanHavePIN": false
}
```

