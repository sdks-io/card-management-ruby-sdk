
# Order Card Response

## Structure

`OrderCardResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique request identifier passed from end user. This identifier helps in tracing a transaction |
| `status` | `String` | Optional | Indicates overall status of the request. Allowed values: SUCCESS, FAILED |
| `data` | [`Array<CreateCardResponse>`](../../doc/models/create-card-response.md) | Optional | - |
| `main_reference` | `Integer` | Optional | Main order reference number for tracking. |

## Example (as JSON)

```json
{
  "RequestId": "RequestId2",
  "Status": "Status8",
  "Data": [
    {
      "DriverAndVRN": "DriverAndVRN6",
      "OrderCardReference": 86
    }
  ],
  "MainReference": 110
}
```

