
# Create Bundle Res

## Structure

`CreateBundleRes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique identifier for the request. This will be played back in the response from the request. |
| `status` | `String` | Optional | Status of the request |
| `data` | [`Array<CreateBundleResponse>`](../../doc/models/create-bundle-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "0e6fb42a-51b0-43b2-f010-92f822657f6a",
  "Status": "SUCCESS",
  "Data": [
    {
      "BundleCreationStatus": {
        "Code": "Code8",
        "Description": "Description8"
      },
      "BundleId": "BundleId6",
      "DayTimeRestrictionStatus": {
        "Code": "Code4",
        "Description": "Description2"
      },
      "DayTimeRestrictionProfileId": "DayTimeRestrictionProfileId4",
      "LocationRestrictionStatus": {
        "Code": "Code6",
        "Description": "Description0"
      }
    },
    {
      "BundleCreationStatus": {
        "Code": "Code8",
        "Description": "Description8"
      },
      "BundleId": "BundleId6",
      "DayTimeRestrictionStatus": {
        "Code": "Code4",
        "Description": "Description2"
      },
      "DayTimeRestrictionProfileId": "DayTimeRestrictionProfileId4",
      "LocationRestrictionStatus": {
        "Code": "Code6",
        "Description": "Description0"
      }
    }
  ]
}
```

