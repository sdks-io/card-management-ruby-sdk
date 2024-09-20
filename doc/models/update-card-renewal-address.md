
# Update Card Renewal Address

Delivery address of card. This address will be used for card reissue and PIN reminders in future.
Note: Mandatory when ‘UseCustomerDefaultAddress’ is set to ‘false’. The field is ignored otherwise.

## Structure

`UpdateCardRenewalAddress`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `contact_name` | `String` | Required | Contact name<br>Note: Mandatory when ‘UseCustomerDefaultAddress’ is set to ‘false’. The field is ignored otherwise.<br><br>Max Length: 50 |
| `contact_title` | `String` | Optional | Title<br>Max Length: 50 |
| `company_name` | `String` | Required | Company name.<br>Note: Mandatory when ‘UseCustomerDefaultAddress’ is set to ‘false’. The field is ignored otherwise.<br>Max Length: 50 |
| `address_line` | `String` | Required | Address line 1,2 and 3<br>Note: Mandatory when ‘UseCustomerDefaultAddress’ is set to ‘false’. The field is ignored otherwise.<br>Max Length: 128<br>Note: -Each address line should be separated by “\r\n”. |
| `zip_code` | `String` | Required | ZipCode<br>Note: Mandatory when ‘UseCustomerDefaultAddress’ is set to ‘false’. The field is ignored otherwise.<br>Max Length: 10 |
| `city` | `String` | Optional | City<br>Note: Mandatory when ‘UseCustomerDefaultAddress’ is set to ‘false’. The field is ignored otherwise.<br>Max Length: 40 |
| `region_id` | `Integer` | Optional | Region id of card. |
| `country_id` | `Integer` | Required | Country ID<br>Note: Mandatory when ‘UseCustomerDefaultAddress’ is set to ‘false’. The field is ignored otherwise. |
| `email_address` | `String` | Optional | Email Address<br><br>Max Length: 90<br>Note: -<br>Based on the international standard that there can be<br>•    Max Length 64 before the @ (the 'Local part’) =64(minimum of 1)<br>•    Max Lenth after the (the domain) = 88 (Minimum of 2) |
| `phone_number` | `String` | Optional | Phone number<br>Optional<br>Max Length: 16 |

## Example (as JSON)

```json
{
  "ContactName": "Jack",
  "ContactTitle": "Mr",
  "CompanyName": "Travel Transport",
  "AddressLine": "Elm Street 11",
  "ZipCode": "1023EA",
  "City": "London",
  "RegionID": 2,
  "CountryID": 8,
  "EmailAddress": "testmail@gmail.com",
  "PhoneNumber": "+99999999999"
}
```

