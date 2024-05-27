
# Card Details Response PIN Delivery Address

Delivery address.

## Structure

`CardDetailsResponsePINDeliveryAddress`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `contact_fore_name` | `String` | Optional | Fore name of the contact person |
| `contact_middle_name` | `String` | Optional | Middle name of the contact person |
| `contact_last_name` | `String` | Optional | Last name of the contact person |
| `contact_title` | `String` | Optional | Title of the contact person Optional Max field length- 10 Note- If the Shell Card Platform configuration is set to clear the personal details captured on card orders, this value will be cleared from the record after processing the request.<br>**Constraints**: *Maximum Length*: `10` |
| `company_name` | `String` | Required | Company name Mandatory if IsNewDeliveryAddress and OrderReplacement are passed. True, Note- If the Shell Card Platform configuration is set to clear the personal details captured on card orders, this value will be cleared from the record after processing the request. |
| `address_id` | `Integer` | Required | Address Id in cards platform. |
| `address_line_1` | `String` | Required | Address line 1 Mandatory if IsNewDeliveryAddress and OrderReplacement are passed True. Max field length- 40 Note- If the Shell Card Platform configuration is set to clear the personal details captured on card orders, this value will be cleared from the record after processing the request.<br>**Constraints**: *Minimum Length*: `1` |
| `address_line_2` | `String` | Optional | Address line 2 Optional Max field length- 40 Note- If the Shell Card Platform configuration is set to clear the personal details captured on card orders, this value will be cleared from the record after processing the request. |
| `address_line_3` | `String` | Optional | Address line Optional Max field length- 40 Note- If the Shell Card Platform configuration is set to clear the personal details captured on card orders, this value will be cleared from the record after processing the request. |
| `zip_code` | `String` | Required | ZIP code Mandatory if IsNewDeliveryAddress and OrderReplacement are passed. True, Max field length- 10 Note- If the Shell Card Platform configuration is set to clear the personal details captured on card orders, this value will be cleared from the record after processing the request.<br>**Constraints**: *Maximum Length*: `10` |
| `city` | `String` | Optional | City Max field length- 40 Note- If the Shell Card Platform configuration is set to clear the personal details captured on card orders, this value will be cleared from the record after processing the request.<br>**Constraints**: *Maximum Length*: `40` |
| `region_id` | `Integer` | Optional | Region Id |
| `region` | `String` | Optional | Region Optional When region is passed, Shell Card Platform will look up for the region id for the given region.  If the option to clear personal details is set in the Shell Card Platform, then this value will be cleared from the record after processing the request . |
| `country_id` | `Integer` | Required | Country Id in cards platform. |
| `country_iso_code` | `String` | Required | The ISO code of the country. Mandatory if IsNewDeliveryAddress and OrderReplacement are passed. If the option to clear personal details is set in the Shell Card Platform, then this value will be cleared from the record after processing the request . |
| `country` | `String` | Required | Country name. |

## Example (as JSON)

```json
{
  "ContactForeName": "ROBERT",
  "ContactMiddleName": "M",
  "ContactLastName": "Langdon",
  "ContactTitle": "Mr.",
  "CompanyName": "PARKLEY Philippines",
  "AddressId": 1768,
  "AddressLine1": "No 345, 1st cross,",
  "AddressLine2": "10th avenue",
  "AddressLine3": "makati city",
  "ZipCode": "1630",
  "City": "manila",
  "Region": "EU",
  "CountryId": 1,
  "CountryISOCode": "PH",
  "Country": "Philippines"
}
```

