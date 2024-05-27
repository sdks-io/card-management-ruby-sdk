
# Delivery Addresses

## Structure

`DeliveryAddresses`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `address_id` | `Integer` | Optional | Address Id |
| `address_line_1` | `String` | Optional | AddressLine1 |
| `address_line_2` | `String` | Optional | AddressLine2 |
| `address_line_3` | `String` | Optional | AddressLine3 |
| `city` | `String` | Optional | City |
| `company_name` | `String` | Optional | Account Name |
| `contact_fore_name` | `String` | Optional | Contact fore name of the delivery address. |
| `contact_last_name` | `String` | Optional | Contact last name of the delivery address. |
| `contact_middle_name` | `String` | Optional | Contact middle name of the delivery address. |
| `contact_title` | `String` | Optional | ContactTitle |
| `country` | `String` | Optional | Country |
| `country_id` | `Integer` | Optional | Country Id |
| `country_iso_code` | `String` | Optional | Country ISO code |
| `fax` | `String` | Optional | Fax number of the address contact. |
| `region` | `String` | Optional | Region of the Card Delivery address |
| `region_id` | `Integer` | Optional | Region Id of the address. |
| `telephone` | `String` | Optional | Telephone number of the address contact |
| `zip_code` | `String` | Optional | Delivery Zip code |
| `address_type` | `Integer` | Optional | Delivery address type.<br>Possible Values:<br>1 – Card and PIN delivery address<br>2 – Card delivery address<br>3 – PIN delivery address |

## Example (as JSON)

```json
{
  "AddressId": 1,
  "AddressLine1": "AddressLine1",
  "AddressLine2": "AddressLine2",
  "AddressLine3": "AddressLine3",
  "City": "germany",
  "CompanyName": "5.11.3 DE",
  "ContactForeName": "5.11.13 DE",
  "ContactLastName": "SAM",
  "ContactMiddleName": "SAM",
  "ContactTitle": "Mr",
  "Country": "Germany",
  "CountryId": 9,
  "CountryISOCode": "DE",
  "Fax": "657875",
  "Region": "Germany",
  "RegionId": 133,
  "Telephone": "78787786868",
  "ZipCode": "E14 5HQ",
  "AddressType": 1
}
```

