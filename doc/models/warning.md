
# Warning

## Structure

`Warning`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `message` | `String` | Required | A custom message giving the detailed outage information. The message will contain the duration and the reason for the outage. |
| `type` | `String` | Required | Type of warning |

## Example (as JSON)

```json
{
  "Message": "System is down for upgradation.",
  "Type": "System Outage"
}
```

