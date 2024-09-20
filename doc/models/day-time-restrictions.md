
# Day Time Restrictions

## Structure

`DayTimeRestrictions`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `monday` | `TrueClass \| FalseClass` | Optional | True if card could be used on a Monday, else false |
| `tuesday` | `TrueClass \| FalseClass` | Optional | True if card could be used on a Tuesday, else false. |
| `wednesday` | `TrueClass \| FalseClass` | Optional | True if card could be used on a Wednesday, else false. |
| `thursday` | `TrueClass \| FalseClass` | Optional | True if card could be used on a Thursday, else false |
| `friday` | `TrueClass \| FalseClass` | Optional | True if card could be used on a Friday, else false |
| `saturday` | `TrueClass \| FalseClass` | Optional | True if card could be used on a Saturday, else false |
| `sunday` | `TrueClass \| FalseClass` | Optional | True if card could be used on a Sunday, else false. |
| `time_from` | `String` | Optional | Card could be used from this time in a day.<br>Format: HH:mm (24-hour format)<br>Note:<br><br>1. Clients to convert this to appropriate DateTime or TimeSpan type.<br>   “00:00” is the lowest time value and “23:59” is the highest time value. |
| `time_to` | `String` | Optional | Card could be used up to this time in a day.<br>Format: HH:mm (24-hour format)<br>Note:<br><br>1. Clients to convert this to appropriate DateTime or TimeSpan type.<br>   “00:00” is the lowest time value and “23:59” is the highest time value. |

## Example (as JSON)

```json
{
  "Monday": false,
  "Tuesday": false,
  "Wednesday": false,
  "Thursday": false,
  "Friday": false
}
```

