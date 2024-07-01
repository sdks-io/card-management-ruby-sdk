
# Location Restriction

## Structure

`LocationRestriction`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `country_restrictions` | [`CountryRestriction`](../../doc/models/country-restriction.md) | Optional | - |
| `network_restrictions` | [`Array<NetworkRestriction>`](../../doc/models/network-restriction.md) | Optional | - |
| `shell_site_restrictions` | [`Array<ShellSiteRestriction>`](../../doc/models/shell-site-restriction.md) | Optional | - |
| `partner_site_restrictions` | [`Array<PartnerSiteRestriction>`](../../doc/models/partner-site-restriction.md) | Optional | - |

## Example (as JSON)

```json
{
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
```

