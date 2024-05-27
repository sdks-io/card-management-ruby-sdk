
# Logged in User Request

This entity models the data that is sent in the http request body for Logged In User operation. This class inherits RequestBase class.

## Structure

`LoggedInUserRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `include_payer_group` | `TrueClass \| FalseClass` | Optional | True/False. The output will include the payer group information only when true is passed.<br>**Default**: `false` |
| `include_eid_details` | `TrueClass \| FalseClass` | Optional | True/False. The output will include the EID (Electronic Invoice data) information only when true is passed..<br>**Default**: `false` |
| `requested_api_name` | `String` | Optional | Name of the API on which user access needs to be validated<br>Optional. |
| `payer_id` | `Integer` | Optional | Payer id of the customer.</br><br>Optional.</br><br>This input is a search criterion.</br><br>Note: If PayerId or PayerNumber is provided in the input, the given payer will be available in the output if the user has access to the given payer. |
| `payer_number` | `String` | Optional | PayerNumber of the customer.</br><br>Optional</br><br>This input is a search criterion.</br><br>Note: If Payerid or PayerNumber is provided in the input, the given payer will be available in the output if the user has access to the given payer. |

## Example (as JSON)

```json
{
  "IncludePayerGroup": false,
  "IncludeEIDDetails": false,
  "RequestedAPIName": "Name of the API",
  "PayerId": 123456,
  "PayerNumber": "GB00123456"
}
```

