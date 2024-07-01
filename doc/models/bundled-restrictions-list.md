
# Bundled Restrictions List

## Structure

`BundledRestrictionsList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `usage_restrictions` | [`UsageRestriction`](../../doc/models/usage-restriction.md) | Optional | Details of the usage restrictions such as day/week/month value and volume restrictions applied on the card. |
| `day_time_restrictions` | [`DayTimeRestriction`](../../doc/models/day-time-restriction.md) | Optional | Details of the day/time restrictions such as weekdays and time range in which transactions should be allowed on the card. |
| `product_restrictions` | [`BundledDetailsProductList`](../../doc/models/bundled-details-product-list.md) | Optional | - |
| `location_restrictions` | [`LocationRestriction`](../../doc/models/location-restriction.md) | Optional | - |

## Example (as JSON)

```json
{
  "UsageRestrictions": {
    "Level": "Level0",
    "DailySpend": 7.72,
    "DailySpendAccumulated": 127.2,
    "DailySpendBalance": 5.36,
    "DailySpendOverride": false
  },
  "DayTimeRestrictions": {
    "Monday": false,
    "Tuesday": false,
    "Wednesday": false,
    "Thursday": false,
    "Friday": false
  },
  "ProductRestrictions": {
    "PurchaseCategoryId": 120,
    "PurchaseCategoryCode": "PurchaseCategoryCode4",
    "Products": [
      "Products4"
    ],
    "ProductGroups": [
      "ProductGroups3",
      "ProductGroups4"
    ],
    "FuelSetId": "FuelSetId0"
  },
  "LocationRestrictions": {
    "CountryRestrictions": {
      "Countries": [
        "Countries7"
      ],
      "Exclusive": false
    },
    "NetworkRestrictions": [
      {
        "Country": "Country6",
        "Networks": [
          "Networks3",
          "Networks4",
          "Networks5"
        ],
        "Exclusive": false
      },
      {
        "Country": "Country6",
        "Networks": [
          "Networks3",
          "Networks4",
          "Networks5"
        ],
        "Exclusive": false
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
  }
}
```

