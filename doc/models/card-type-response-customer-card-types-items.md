
# Card Type Response Customer Card Types Items

## Structure

`CardTypeResponseCustomerCardTypesItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_type_id` | `Integer` | Optional | Card Type Id in Cards Platform. |
| `token_type_id` | `Integer` | Optional | Token type identifier. |
| `card_type_name` | `String` | Optional | Card Type Name. |
| `token_type_name` | `String` | Optional | Token Type Name. |
| `pan_length` | `Integer` | Optional | PAN Length. |
| `expiry_period` | `Integer` | Optional | Default Expiry period. |
| `is_national` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is a National Card type or not. |
| `is_international` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is an International Card type or not. |
| `is_crt` | `TrueClass \| FalseClass` | Optional | True/False – Wether it is a CRT Card type or not. |
| `is_fleet` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is it a Fleet Card typeor not. |
| `is_shell_sites_only` | `TrueClass \| FalseClass` | Optional | True/False – Whether it is only allowed in Shell Stations or not. |
| `is_partner_sites_included` | `TrueClass \| FalseClass` | Optional | True/False – Whether this card type is allowed in partner Stations. |
| `can_have_pin` | `TrueClass \| FalseClass` | Optional | True/False – Whether the cards of this card type can have PIN. |
| `is_virtual` | `TrueClass \| FalseClass` | Optional | True/False - Whether it is a Virtual Card type or not. |
| `is_active` | `TrueClass \| FalseClass` | Optional | Whether card type is active or not. |
| `is_card_available_for_download` | `TrueClass \| FalseClass` | Optional | Whether card type is available for download. |
| `col_co_currency_code` | `String` | Optional | ISO currency code of the country. |
| `col_co_currency_symbol` | `String` | Optional | Currency symbol of the country. |
| `emv_contactless` | `TrueClass \| FalseClass` | Optional | Is Europay, MasterCard, and Visa Contactless enabled or not. |
| `rfid` | `TrueClass \| FalseClass` | Optional | Whether the card type is enabled for RFID (Radio Frequency Identification) |
| `pin_change_supported` | `TrueClass \| FalseClass` | Optional | PIN change supported or not. |
| `require_pin` | `TrueClass \| FalseClass` | Optional | Whether a PIN is mandatory for the cards of this card type. |
| `offline_pin` | `TrueClass \| FalseClass` | Optional | Whether offline PIN is enabled or not. |
| `medium_type_id` | `Integer` | Optional | Id of the medium type identifier. <br><br> Full list below - <br> 1 - Fuel Card <br> 2 - Fuel Card with EV <br> 3 - EV only  <br> 4 - Fuel Card and Key Fob <br> 5 - Key Fob <br> 6 - Virtual Card <br> 7 - NPII Token <br> 8 – Smartpay Token |
| `medium_type` | `String` | Optional | Name of the medium type identifier. <br><br> Full list below - <br> 1 - Fuel Card <br> 2 - Fuel Card with EV <br> 3 - EV only  <br> 4 - Fuel Card and Key Fob <br> 5 - Key Fob <br> 6 - Virtual Card <br> 7 - NPII Token <br> 8 – Smartpay Token |
| `cart_type_accounts` | [`Array[CartTypeAccount]`](../../doc/models/cart-type-account.md) | Optional | List of accounts. |
| `purchase_categories` | [`Array[PurchaseCategories]`](../../doc/models/purchase-categories.md) | Optional | - |

## Example (as JSON)

```json
{
  "CardTypeId": 7077861,
  "TokenTypeId": 1234,
  "CardTypeName": "Philippines CRT",
  "TokenTypeName": "PH FLE NAT SIN R1",
  "PANLength": 12,
  "ExpiryPeriod": 30,
  "IsNational": true,
  "IsInternational": true,
  "IsCRT": true,
  "IsFleet": true,
  "IsShellSitesOnly": true,
  "IsPartnerSitesIncluded": true,
  "CanHavePIN": true,
  "IsVirtual": true,
  "IsActive": true,
  "IsCardAvailableForDownload": true,
  "ColCoCurrencyCode": "GBP",
  "ColCoCurrencySymbol": "£",
  "EMVContactless": true,
  "RFID": true,
  "PINChangeSupported": true,
  "RequirePIN": true,
  "OfflinePIN": true,
  "MediumTypeID": 8,
  "MediumType": "Smartpay Token"
}
```

