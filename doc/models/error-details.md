
# Error Details

## Structure

`ErrorDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Optional | Error code representing the error encountered |
| `title` | `String` | Optional | Error type description |
| `detail` | `String` | Optional | Detailed inforamtion about the error |
| `additional_info` | `Hash[String, String]` | Optional | Applicable when more details related to error to be returned |

## Example (as JSON)

```json
{
  "Code": "Code2",
  "Title": "Title8",
  "Detail": "Detail4",
  "AdditionalInfo": {
    "key0": "AdditionalInfo2"
  }
}
```

