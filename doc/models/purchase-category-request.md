
# Purchase Category Request

## Structure

`PurchaseCategoryRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the request. |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code). |
| `col_co_id` | `Integer` | Optional | Collecting Company Id (in Shell Cards Platform). |
| `card_type_id` | `Integer` | Optional | Card type Id |
| `purchase_category_id` | `Integer` | Optional | Purchase category Id<br>Optional.<br>Example: 123, 124, etc., |
| `language_code` | `String` | Optional | Language code for the Title and Description.<br>Language codes should be same as SFH supported language<br>Optional.<br>Default: en-GB<br>Example:<br>en-GB – English (UK)<br>nl-NL – Dutch (Netherlands) |

## Example (as JSON)

```json
{
  "PurchaseCategoryId": 123,
  "LanguageCode": "en-GB",
  "RequestId": "RequestId6",
  "ColCoCode": 30,
  "ColCoId": 16,
  "CardTypeId": 82
}
```

