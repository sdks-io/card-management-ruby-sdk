
# Response Delivery Address Update

## Structure

`ResponseDeliveryAddressUpdate`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `UUID \| String` | Required | Mandatory UUID (according to RFC 4122 standards) for requests and responses. This will be played back in the response from the requests. |
| `status` | [`DeliveryAddressUpdateStatusEnum`](../../doc/models/delivery-address-update-status-enum.md) | Required | Indicates overall status of the request |
| `main_reference` | `Integer` | Optional | Main reference number for tracking. |
| `data` | [`Array<Datum>`](../../doc/models/datum.md) | Optional | List of Delivery address update entity. The fields of this entity are described below. |

## Example (as JSON)

```json
{
  "RequestId": "00001b3c-0000-0000-0000-000000000000",
  "Status": "PARTIAL_SUCCESS",
  "MainReference": 123455,
  "Data": [
    {
      "CardId": 224,
      "CardPAN": "CardPAN2",
      "AccountId": 62,
      "AccountNumber": "AccountNumber8",
      "ReferenceId": 108
    }
  ]
}
```

