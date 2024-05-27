
# Search Card

SearchCard

## Structure

`SearchCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_id` | `Integer` | Optional | Unique Card Id<br>Optional if PAN is given, else mandatory. |
| `pan` | `String` | Optional | Card PAN.<br>Optional if CardId is given, else mandatory.<br>Note: PAN is ignored if CardId is given. |

## Example (as JSON)

```json
{
  "CardId": 32,
  "PAN": "PAN2"
}
```

