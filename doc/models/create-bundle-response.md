
# Create Bundle Response

## Structure

`CreateBundleResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Request Id |
| `status` | `String` | Optional | Response status |
| `data` | [`Array<CreateBundleResponseDataItems>`](../../doc/models/create-bundle-response-data-items.md) | Optional | - |
| `errors` | [`Array<ErrorDetails>`](../../doc/models/error-details.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "RequestId2",
  "Status": "Status8",
  "Data": [
    {
      "BundleId": "BundleId6",
      "Cards": [
        {
          "PAN": "PAN0"
        }
      ],
      "DayTimeRestrictionProfileId": "DayTimeRestrictionProfileId4",
      "LocationRestrictionProfileId": "LocationRestrictionProfileId6",
      "ProductRestrictionProfileId": "ProductRestrictionProfileId0"
    },
    {
      "BundleId": "BundleId6",
      "Cards": [
        {
          "PAN": "PAN0"
        }
      ],
      "DayTimeRestrictionProfileId": "DayTimeRestrictionProfileId4",
      "LocationRestrictionProfileId": "LocationRestrictionProfileId6",
      "ProductRestrictionProfileId": "ProductRestrictionProfileId0"
    },
    {
      "BundleId": "BundleId6",
      "Cards": [
        {
          "PAN": "PAN0"
        }
      ],
      "DayTimeRestrictionProfileId": "DayTimeRestrictionProfileId4",
      "LocationRestrictionProfileId": "LocationRestrictionProfileId6",
      "ProductRestrictionProfileId": "ProductRestrictionProfileId0"
    }
  ],
  "Errors": [
    {
      "Code": "Code4",
      "Title": "Title6",
      "Detail": "Detail6",
      "AdditionalInfo": {
        "key1": "val1",
        "key2": "val2"
      }
    },
    {
      "Code": "Code4",
      "Title": "Title6",
      "Detail": "Detail6",
      "AdditionalInfo": {
        "key1": "val1",
        "key2": "val2"
      }
    },
    {
      "Code": "Code4",
      "Title": "Title6",
      "Detail": "Detail6",
      "AdditionalInfo": {
        "key1": "val1",
        "key2": "val2"
      }
    }
  ]
}
```

