
# Update Bundle Res

## Structure

`UpdateBundleRes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique identifier for the request. This will be played back in the response from the request. |
| `status` | `String` | Optional | Status of the request |
| `data` | [`Array[UpdateBundleResponse]`](../../doc/models/update-bundle-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "0e6fb42a-51b0-43b2-f010-92f822657f6a",
  "Status": "SUCCESS",
  "Data": [
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
    },
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
  ]
}
```

