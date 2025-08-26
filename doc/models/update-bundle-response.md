
# Update Bundle Response

## Structure

`UpdateBundleResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_action_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `day_time_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `location_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `product_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `usage_restriction_status` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestActionStatus": {
    "Code": "Code6",
    "Description": "Description0"
  },
  "DayTimeRestrictionStatus": {
    "Code": "Code4",
    "Description": "Description2"
  },
  "LocationRestrictionStatus": {
    "Code": "Code6",
    "Description": "Description0"
  },
  "ProductRestrictionStatus": {
    "Code": "Code8",
    "Description": "Description8"
  },
  "UsageRestrictionStatus": {
    "Code": "Code4",
    "Description": "Description8"
  }
}
```

