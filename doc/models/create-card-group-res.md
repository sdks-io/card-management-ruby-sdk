
# Create Card Group Res

## Structure

`CreateCardGroupRes`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request_id` | `String` | Optional | Unique identifier for the request. This will be played back in the response from the request. |
| `status` | `String` | Optional | Status of the request |
| `data` | [`Array<CreateCardGroupResponse>`](../../doc/models/create-card-group-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "RequestId": "0e6fb42a-51b0-43b2-f010-92f822657f6a",
  "Status": "SUCCESS",
  "Data": [
    {
      "MainReference": 166,
      "NewCardGroupReference": 112,
      "SuccessfulRequests": [
        {
          "CardId": 18,
          "PAN": "PAN0",
          "Reference": 228
        }
      ],
      "ErrorCards": [
        {
          "CardId": 136,
          "PAN": "PAN6",
          "ErrorCode": "ErrorCode0",
          "ErrorDescription": "ErrorDescription6"
        },
        {
          "CardId": 136,
          "PAN": "PAN6",
          "ErrorCode": "ErrorCode0",
          "ErrorDescription": "ErrorDescription6"
        }
      ]
    },
    {
      "MainReference": 166,
      "NewCardGroupReference": 112,
      "SuccessfulRequests": [
        {
          "CardId": 18,
          "PAN": "PAN0",
          "Reference": 228
        }
      ],
      "ErrorCards": [
        {
          "CardId": 136,
          "PAN": "PAN6",
          "ErrorCode": "ErrorCode0",
          "ErrorDescription": "ErrorDescription6"
        },
        {
          "CardId": 136,
          "PAN": "PAN6",
          "ErrorCode": "ErrorCode0",
          "ErrorDescription": "ErrorDescription6"
        }
      ]
    }
  ]
}
```

