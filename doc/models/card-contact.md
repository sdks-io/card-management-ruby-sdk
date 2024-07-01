
# Card Contact

## Structure

`CardContact`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `delivery_contact_title` | `String` | Optional | Title of the contact person <br /><br>Optional<br>Max field length: 10<br>**Constraints**: *Maximum Length*: `10` |
| `delivery_contact_name` | `String` | Required | Name of the contact person <br /><br>Mandatory  <br /><br>Max field length: 50<br>**Constraints**: *Maximum Length*: `50` |
| `delivery_company_name` | `String` | Required | Company name <br /><br>Mandatory  <br /><br>Max field length: 50<br>**Constraints**: *Maximum Length*: `50` |
| `delivery_address_line_1` | `String` | Required | Address line 1 <br /><br>Mandatory<br /><br>Max field length: 40<br>**Constraints**: *Maximum Length*: `40` |
| `delivery_address_line_2` | `String` | Optional | Address line 2 <br /><br>Optional <br /><br>Max field length: 40  <br /><br>Optional<br>**Constraints**: *Maximum Length*: `40` |
| `delivery_address_line_3` | `String` | Optional | Address line 3 <br /><br>Optional <br /><br>Max field length: 40  <br /><br>Optional<br>**Constraints**: *Maximum Length*: `40` |
| `delivery_zip_code` | `String` | Required | ZIP code <br /><br>Mandatory  <br /><br>Max field length: 10  <br /><br>Optional<br>**Constraints**: *Maximum Length*: `10` |
| `delivery_city` | `String` | Required | City  <br /><br>Mandatory  <br /><br>Max field length: 40<br>**Constraints**: *Maximum Length*: `40` |
| `delivery_region_id` | `Integer` | Optional | Region Id  <br /><br>Optional |
| `delivery_region` | `String` | Optional | Region  <br /><br>Optional<br /><br>When region is passed |
| `delivery_country` | `String` | Required | The ISO code of the country.<br /> |
| `phone_number` | `String` | Optional | Phone number for courier delivery.<br /><br>Optional.<br /><br>Max field length: 20<br>**Constraints**: *Maximum Length*: `20` |
| `email_address` | `String` | Optional | Email address for courier delivery.<br /><br>Optional.<br /><br>Max field length: 90 <br/>Note:Based on the international standard that there can be Max Length 64 before the @ (the 'Local part’) =64(minimum of 1) Max Lenth after the (the domain) = 88 (Minimum of 2)<br>**Constraints**: *Maximum Length*: `90` |
| `save_for_card_reissue` | `TrueClass \| FalseClass` | Optional | If this is specified, the contact address will be saved in cards platform for card reissue processing.<br /><br>Optional |

## Example (as JSON)

```json
{
  "DeliveryContactTitle": "DeliveryContactTitle4",
  "DeliveryContactName": "DeliveryContactName0",
  "DeliveryCompanyName": "DeliveryCompanyName2",
  "DeliveryAddressLine1": "DeliveryAddressLine18",
  "DeliveryAddressLine2": "DeliveryAddressLine20",
  "DeliveryAddressLine3": "DeliveryAddressLine32",
  "DeliveryZipCode": "DeliveryZipCode0",
  "DeliveryCity": "DeliveryCity2",
  "DeliveryRegionId": 152,
  "DeliveryRegion": "DeliveryRegion4",
  "DeliveryCountry": "DeliveryCountry0"
}
```

