
# Restriction Search Card Response Data Items

## Structure

`RestrictionSearchCardResponseDataItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bundle_id` | `Integer` | Optional | Bundle Id associated with card |
| `restrictions` | [`SearchCardResponseRestrictions`](../../doc/models/search-card-response-restrictions.md) | Optional | - |
| `restriction_currency_code` | `String` | Optional | ISO currency code of the country. |
| `restriction_currency_symbol` | `String` | Optional | Currency symbol of the country. |
| `account_id` | `Integer` | Optional | Account ID |
| `account_name` | `String` | Optional | Account Name |
| `account_number` | `String` | Optional | Account Number |
| `account_short_name` | `String` | Optional | AccountShortName |
| `card_id` | `Integer` | Optional | Unique Card |
| `card_type_code` | `String` | Optional | ISO code of the card i.e. first 7 digits of the PAN |
| `card_type_id` | `Integer` | Optional | Card Type ID<br>Example Id & Description:<br>1 - Philippines CRT 7077861<br>2- Philippines Fleet 7002861<br>5-SHELL FLEET- HONG KONG 7002821<br>6-SHELL NHF- HONG KONG 7002821<br>7-SHELL CRT- HONG KONG 7077821 |
| `card_type_name` | `String` | Optional | Card Type Name<br>Example Id & Description:<br>1 - Philippines CRT 7077861<br>2- Philippines Fleet 7002861<br>5-SHELL FLEET- HONG KONG 7002821<br>6-SHELL NHF- HONG KONG 7002821<br>7-SHELL CRT- HONG KONG 7077821 |
| `col_co_currency_code` | `String` | Optional | ISO currency code of the country |
| `col_co_currency_symbol` | `String` | Optional | Currency symbol of the country |
| `currency_code` | `String` | Optional | ISO currency code of the Customer Currency |
| `currency_symbol` | `String` | Optional | Currency symbol of the Customer Currency Code |
| `driver_name` | `String` | Optional | Driver name |
| `expiry_date` | `String` | Optional | Expiry date of the card<br>Format: yyyyMMdd |
| `is_crt` | `TrueClass \| FalseClass` | Optional | True if it is a CRT type card, else false |
| `is_fleet` | `TrueClass \| FalseClass` | Optional | True if it is a Fleet type card, else false |
| `is_international` | `TrueClass \| FalseClass` | Optional | True if it is an international card, else false |
| `is_national` | `TrueClass \| FalseClass` | Optional | True if it is a national card, else false |
| `is_partner_sites_included` | `TrueClass \| FalseClass` | Optional | True if it is allowed at all partner sites, else false |
| `is_shell_sites_only` | `TrueClass \| FalseClass` | Optional | True if it is only allowed at Shell sites, else false |
| `issue_date` | `String` | Optional | Issue date<br>Format: yyyyMMdd |
| `issue_number` | `Integer` | Optional | Issue Number |
| `is_superseded` | `TrueClass \| FalseClass` | Optional | True if a new card is issued with the same PAN, else false |
| `is_virtual_card` | `TrueClass \| FalseClass` | Optional | True if it is a virtual card, else false |
| `pan` | `String` | Optional | Card PAN |
| `purchase_category_code` | `String` | Optional | Purchase category code<br>Example:<br>0 - All Fuels (without VP) and Lubricants<br>1 - FuelSave only<br>2 - FuelSave and Lubricants<br>3 - No Restrictions<br>4 - VP and FuelSave<br>5 - Diesel ONLY<br>6 - Diesel and Lubricants<br>7 - VP and Lubricants<br>8 - VP and FuelSave and Lubricants |
| `purchase_category_id` | `Integer` | Optional | Purchase category Id |
| `purchase_category_name` | `String` | Optional | Purchase category name<br>Example:<br>0 - All Fuels (without VP) and Lubricants<br>1 - FuelSave only<br>2 - FuelSave and Lubricants<br>3 - No Restrictions<br>4 - VP and FuelSave<br>5 - Diesel ONLY<br>6 - Diesel and Lubricants<br>7 - VP and Lubricants<br>8 - VP and FuelSave and Lubricants |
| `status_description` | `String` | Optional | Status Description (Active, Temporarily Blocked, etc.,) |
| `status_id` | `Integer` | Optional | Card Status id |
| `vrn` | `String` | Optional | Vehicle registration number |
| `medium_type_id` | `Integer` | Optional | Id of the medium type identifier.<br><br>Example: 1,2,4<br><br>Full list below:<br>1 - Fuel Card<br>2 - Fuel Card with EV<br>4 - Fuel Card and Key fob Card<br>5 - Key fob<br>6 - Virtual Card<br>7 - NPII Token<br>8 – Smartpay |
| `medium_type` | `String` | Optional | Name of the medium type identifier.<br><br>Example: Fuel Card, Fuel Card with EV, Key fob  <br>Full list below:<br>1 - Fuel Card<br>2 - Fuel Card with EV<br>4 - Fuel Card and Key fob Card<br>5 - Key fob<br>6 - Virtual Card<br>7 - NPII Token<br>8 - Smartpay |

## Example (as JSON)

```json
{
  "BundleId": 58,
  "Restrictions": {
    "DayTimeRestrictions": {
      "Friday": false,
      "Monday": false,
      "Saturday": false,
      "Sunday": false,
      "Thursday": false
    },
    "LocationRestrictions": {
      "CountryRestrictions": {
        "Exclusive": false,
        "Countries": [
          "Countries7"
        ]
      },
      "NetworkRestrictions": [
        {
          "Country": "Country6",
          "Exclusive": false,
          "Networks": [
            "Networks3",
            "Networks4",
            "Networks5"
          ]
        },
        {
          "Country": "Country6",
          "Exclusive": false,
          "Networks": [
            "Networks3",
            "Networks4",
            "Networks5"
          ]
        }
      ],
      "ShellSiteRestrictions": [
        {
          "Country": "Country4",
          "Sites": [
            "Sites3",
            "Sites4"
          ],
          "SiteGroups": [
            "SiteGroups9",
            "SiteGroups8",
            "SiteGroups7"
          ],
          "Exclusive": false
        },
        {
          "Country": "Country4",
          "Sites": [
            "Sites3",
            "Sites4"
          ],
          "SiteGroups": [
            "SiteGroups9",
            "SiteGroups8",
            "SiteGroups7"
          ],
          "Exclusive": false
        }
      ],
      "PartnerSiteRestrictions": [
        {
          "NetworkCode": "NetworkCode2",
          "Sites": [
            "Sites3"
          ],
          "SiteGroups": [
            "SiteGroups1",
            "SiteGroups2"
          ],
          "Exclusive": false
        }
      ]
    },
    "ProductRestrictions": {
      "Products": [
        {
          "GlobalProductCode": "GlobalProductCode6",
          "Description": "Description8"
        }
      ],
      "ProductGroups": [
        {
          "ReferenceId": 82,
          "ProductGroupId": "ProductGroupId6",
          "Name": "Name0",
          "IsDefault": false,
          "IsFuelType": false
        },
        {
          "ReferenceId": 82,
          "ProductGroupId": "ProductGroupId6",
          "Name": "Name0",
          "IsDefault": false,
          "IsFuelType": false
        }
      ]
    },
    "UsageRestrictions": {
      "DailySpend": 7.72,
      "WeeklySpend": 10.22,
      "MonthlySpend": 48.66,
      "PerTransactionSpend": 17.28,
      "DailyVolume": 122
    }
  },
  "RestrictionCurrencyCode": "RestrictionCurrencyCode4",
  "RestrictionCurrencySymbol": "RestrictionCurrencySymbol4",
  "AccountId": 172
}
```

