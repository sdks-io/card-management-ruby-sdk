
# Purchase Category Res

## Structure

`PurchaseCategoryRes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique identifier for the request. This will be played back in the response from the request. |
| `status` | `String` | Optional | Status of the request |
| `data` | [`Array<PurchaseCategoryResponse>`](../../doc/models/purchase-category-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "0e6fb42a-51b0-43b2-f010-92f822657f6a",
  "Status": "SUCCESS",
  "Data": [
    {
      "PurchaseCategories": [
        {
          "Id": 166,
          "Code": "Code6",
          "Name": "Name4",
          "IsVisible": false,
          "ProductGroups": [
            {
              "ReferenceId": 82,
              "ProductGroupId": "ProductGroupId6",
              "Name": "Name0",
              "IsDefault": false,
              "IsFuelType": false
            }
          ],
          "Title": "Title4",
          "Description": "Description0"
        }
      ]
    },
    {
      "PurchaseCategories": [
        {
          "Id": 166,
          "Code": "Code6",
          "Name": "Name4",
          "IsVisible": false,
          "ProductGroups": [
            {
              "ReferenceId": 82,
              "ProductGroupId": "ProductGroupId6",
              "Name": "Name0",
              "IsDefault": false,
              "IsFuelType": false
            }
          ],
          "Title": "Title4",
          "Description": "Description0"
        }
      ]
    },
    {
      "PurchaseCategories": [
        {
          "Id": 166,
          "Code": "Code6",
          "Name": "Name4",
          "IsVisible": false,
          "ProductGroups": [
            {
              "ReferenceId": 82,
              "ProductGroupId": "ProductGroupId6",
              "Name": "Name0",
              "IsDefault": false,
              "IsFuelType": false
            }
          ],
          "Title": "Title4",
          "Description": "Description0"
        }
      ]
    }
  ]
}
```

