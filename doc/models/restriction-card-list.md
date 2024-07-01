
# Restriction Card List

## Structure

`RestrictionCardList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_id` | `Integer` | Optional | Unique Card Id |
| `pan` | `String` | Optional | Card PAN |
| `expiry_date` | `String` | Optional | Expiry date of the card<br>Format: yyyyMMdd<br>Note: Clients to convert this to appropriate DateTime type. |
| `status_id` | `Integer` | Optional | Card Status id |
| `status_description` | `String` | Optional | Status Description (Active, Temporarily Blocked, etc.,) |
| `driver_name` | `String` | Optional | Driver name<br>Example:  ANDREW GILBERRY |
| `vrn` | `String` | Optional | Vehicle registration number<br>Example: MV65YLH |
| `issue_date` | `String` | Optional | Issue date<br>Format: yyyyMMdd<br>Note: Clients to convert this to appropriate DateTime type. |
| `issue_number` | `Integer` | Optional | Issue Number |
| `account_id` | `Integer` | Optional | Account ID<br>Example: 29484 |
| `account_number` | `String` | Optional | Account Number<br>Example: GB99215176 |
| `account_name` | `String` | Optional | Account Name<br>Example: MATTHEW ALGIE & COMPANY LIMITED |
| `account_short_name` | `String` | Optional | Account Short Name |
| `currency_code` | `String` | Optional | ISO currency code of the Customer Currency<br>Example: GBP |
| `col_co_currency_code` | `String` | Optional | ISO currency code of the country.<br>Example: GBP |
| `col_co_currency_symbol` | `String` | Optional | Currency symbol of the country.<br>Example: £, $ |
| `restriction_currency_code` | `String` | Optional | ISO currency code of the country.<br>Example: GBP |
| `restriction_currency_symbol` | `String` | Optional | Currency symbol of the country.<br>Example: £, $ |
| `purchase_category_id` | `String` | Optional | Purchase category Id<br>Example: 123, 124, etc., |
| `purchase_category_code` | `String` | Optional | Purchase category code<br>Example:<br>0 - All Fuels (without VP) and Lubricants<br>1 - FuelSave only<br>2 - FuelSave and Lubricants<br>3 - No Restrictions<br>4 - VP and FuelSave<br>5 - Diesel ONLY<br>6 - Diesel and Lubricants<br>7 - VP and Lubricants<br>8 - VP and FuelSave and Lubricants |
| `purchase_category_name` | `String` | Optional | Purchase category name<br>Example:<br>0 - All Fuels (without VP) and Lubricants<br>1 - FuelSave only<br>2 - FuelSave and Lubricants<br>3 - No Restrictions<br>4 - VP and FuelSave<br>5 - Diesel ONLY<br>6 - Diesel and Lubricants<br>7 - VP and Lubricants<br>8 - VP and FuelSave and Lubricants |
| `is_superseded` | `TrueClass \| FalseClass` | Optional | True/False<br>True if a new card is issued with the same PAN, else false |
| `is_virtual_card` | `TrueClass \| FalseClass` | Optional | True/False<br>True if it is a virtual card, else false |
| `is_national` | `TrueClass \| FalseClass` | Optional | True/False<br>True if it is a national card, else false |
| `is_international` | `TrueClass \| FalseClass` | Optional | True/False<br>True if it is an international card, else false |
| `is_crt` | `TrueClass \| FalseClass` | Optional | True/False<br>True if it is a CRT type card, else false |
| `is_fleet` | `TrueClass \| FalseClass` | Optional | True/False<br>True if it is a Fleet type card, else false |
| `is_shell_sites_only` | `TrueClass \| FalseClass` | Optional | True/False<br>True if it is only allowed at Shell sites, else false |
| `is_partner_sites_included` | `TrueClass \| FalseClass` | Optional | True/False<br>True if it is allowed at all partner sites, else false |
| `card_type_id` | `Integer` | Optional | Card Type ID<br>Example Id & Description:<br>1 - Philippines CRT 7077861<br>2- Philippines Fleet 7002861<br>5-SHELL FLEET- HONG KONG 7002821<br>6-SHELL NHF- HONG KONG 7002821<br>7-SHELL CRT- HONG KONG 7077821 |
| `card_type_code` | `String` | Optional | ISO code of the card i.e. first 7 digits of the PAN |
| `card_type_name` | `String` | Optional | Card Type Name<br>Example Id & Description:<br>1 - Philippines CRT 7077861<br>2- Philippines Fleet 7002861<br>5-SHELL FLEET- HONG KONG 7002821<br>6-SHELL NHF- HONG KONG 7002821<br>7-SHELL CRT- HONG KONG 7077821 |
| `bundle_id` | `String` | Optional | Bundle Id associated with card in the Gateway.<br>This field will have a null value if the card is not associated with any bundle of IncludeBundleDetails in request is false.<br>If the search is based on a bundle Id, the same will be returned. |
| `medium_type_id` | `Integer` | Optional | Id of the medium type identifier.<br>Example: 1,2,4<br>Full list below:<br>1 - Fuel Card<br>2 - Fuel Card with EV<br>4 - Fuel Card and Key fob Card<br>5 - Key fob<br>6 - Virtual Card<br>7 - NPII Token<br>8 – Smartpay |
| `medium_type` | `String` | Optional | Name of the medium type identifier.<br><br>Example: Fuel Card, Fuel Card with EV, Key fob  <br>Full list below:<br>1 - Fuel Card<br>2 - Fuel Card with EV<br>4 - Fuel Card and Key fob Card<br>5 - Key fob<br>6 - Virtual Card<br>7 - NPII Token<br>8 - Smartpay |

## Example (as JSON)

```json
{
  "CardId": 110,
  "PAN": "PAN8",
  "ExpiryDate": "ExpiryDate8",
  "StatusId": 178,
  "StatusDescription": "StatusDescription4"
}
```

