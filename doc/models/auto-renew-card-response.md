
# Auto Renew Card Response

## Structure

`AutoRenewCardResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `main_reference` | `Integer` | Optional | Main reference number for tracking.<br>Example: 123455 |
| `request_id` | `String` | Optional | API |
| `status` | `String` | Optional | Indicates overall status of the request. Allowed values: SUCCES, FAILED, PARTIAL_SUCCESS |
| `data` | [`Array<AutoRenewCardResponseDataItems>`](../../doc/models/auto-renew-card-response-data-items.md) | Optional | List of Auto Renew reference entity. The fields of this entity are described below. |

## Example (as JSON)

```json
{
  "MainReference": 14,
  "RequestId": "RequestId6",
  "Status": "Status2",
  "Data": [
    {
      "AutoRenewReferenceId": 102,
      "CardIdAndPAN": "CardIdAndPAN4",
      "PANID": 176.64
    }
  ]
}
```

