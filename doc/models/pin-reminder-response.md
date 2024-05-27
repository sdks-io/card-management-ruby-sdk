
# PIN Reminder Response

## Structure

`PINReminderResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique request identifier passed from end user. This identifier helps in tracing a transaction |
| `main_reference` | `Integer` | Optional | Service reference number for tracking. |
| `status` | `String` | Optional | Indicates overall status of the request. Allowed values: SUCCESS, FAILED |
| `data` | [`Array<PINReminderReference>`](../../doc/models/pin-reminder-reference.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "RequestId8",
  "MainReference": 42,
  "Status": "Status4",
  "Data": [
    {
      "CardId": 224,
      "PANID": 0,
      "PAN": 154,
      "CardExpiryDate": "CardExpiryDate6",
      "ReferenceId": 108
    },
    {
      "CardId": 224,
      "PANID": 0,
      "PAN": 154,
      "CardExpiryDate": "CardExpiryDate6",
      "ReferenceId": 108
    }
  ]
}
```

