
# Restriction Card Response Data Items

## Structure

`RestrictionCardResponseDataItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account Id of the customer. |
| `account_number` | `String` | Optional | Account Number of the customer. |
| `card_id` | `Integer` | Optional | Unique Card Id |
| `day_time_restriction_description` | `String` | Optional | This field will have a value only when “DayTimeRestrictionStatus” is “Failed”. |
| `day_time_restriction_status` | `String` | Optional | Status of the card day/time restriction submitted to API. Based on the response from API value will be set as either “Success” or “Failed”. |
| `location_restriction_description` | `String` | Optional | This field will have a value only when “LocationRestrictionStatus” is “Failed”. |
| `location_restriction_status` | `String` | Optional | Card Location restriction submitted to gateway based on gateway response value set as “Success” or “Failed”. |
| `pan` | `String` | Optional | Card PAN |
| `product_restriction_description` | `String` | Optional | This field will have a value only when “ProductRestrictionStatus” is “Failed”. |
| `product_restriction_status` | `String` | Optional | Status of the card product restriction submitted |
| `usage_restriction_description` | `String` | Optional | This field will have a value only when “UsageRestrictionStatus” is “Failed”. |
| `usage_restriction_status` | `String` | Optional | Status of the card usage restriction submitted |
| `validation_error_code` | `String` | Optional | Error code for validation failure.<br>Example error codes:<br>0007, 9007, 7000, 7001. |
| `validation_error_description` | `String` | Optional | Description of validation failure. |

## Example (as JSON)

```json
{
  "AccountId": 182,
  "AccountNumber": "AccountNumber8",
  "CardId": 88,
  "DayTimeRestrictionDescription": "DayTimeRestrictionDescription8",
  "DayTimeRestrictionStatus": "DayTimeRestrictionStatus8"
}
```

