
# Address

## Structure

`Address`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address_id` | `Integer` | Optional | Address Id in cards platform. |
| `address_line_1` | `String` | Optional | Address line1 |
| `address_line_2` | `String` | Optional | Address line2 |
| `address_line_3` | `String` | Optional | AddressLine3 |
| `zip_code` | `String` | Optional | ZipCode |
| `city` | `String` | Optional | City |
| `region_id` | `Integer` | Optional | Region Id of the address. |
| `country_iso_code` | `String` | Optional | Country ISO code of the address |
| `country` | `String` | Optional | Country for the address |
| `telephone` | `String` | Optional | Telephone number of the address contact |
| `email_address` | `String` | Optional | Email address of the address contact |
| `fax` | `String` | Optional | Fax number of the address contact |

## Example (as JSON)

```json
{
  "AddressId": 1,
  "AddressLine1": "test street",
  "AddressLine2": "Address line2",
  "AddressLine3": "AddressLine3",
  "ZipCode": "667 78",
  "City": "LUMPUR",
  "RegionId": 1234,
  "CountryISOCode": "CZ",
  "Country": "Germany",
  "Telephone": "3245872364823",
  "EmailAddress": "testmail@gmail.com",
  "Fax": "3245872364823"
}
```

