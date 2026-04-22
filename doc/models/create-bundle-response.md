
# Create Bundle Response

## Structure

`CreateBundleResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bundle_creation_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `bundle_id` | `String` | Optional | Identifier of the newly created bundle |
| `day_time_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `day_time_restriction_profile_id` | `String` | Optional | Identifier of the day/time restriction profile created |
| `location_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `location_restriction_profile_id` | `String` | Optional | Identifier of the location restriction profile created |
| `usage_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `product_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `product_restriction_profile_id` | `String` | Optional | Identifier of the product restriction profile created |
| `cards` | [`Array[BundleCardRestrictionStatus]`](../../doc/models/bundle-card-restriction-status.md) | Optional | - |

## Example (as JSON)

```json
{
  "BundleId": "1",
  "DayTimeRestrictionProfileId": "2",
  "LocationRestrictionProfileId": "3",
  "ProductRestrictionProfileId": "4",
  "BundleCreationStatus": {
    "Code": "Code8",
    "Description": "Description8"
  },
  "DayTimeRestrictionStatus": {
    "Code": "Code4",
    "Description": "Description2"
  },
  "LocationRestrictionStatus": {
    "Code": "Code6",
    "Description": "Description0"
  }
}
```

