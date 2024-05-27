
# Audit Response

## Structure

`AuditResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `audits` | [`Array<AuditResponseAuditsItems>`](../../doc/models/audit-response-audits-items.md) | Optional | - |
| `current_page` | `Integer` | Optional | Current Page |
| `row_count` | `Integer` | Optional | Total row count matched for the given input criteria |
| `total_pages` | `Integer` | Optional | Calculated page count based on page size from the incoming API request and total number of rows matched for the given input criteria |
| `error` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `request_id` | `String` | Optional | API RequestId |

## Example (as JSON)

```json
{
  "CurrentPage": 1,
  "RowCount": 1,
  "TotalPages": 1,
  "RequestId": "14915cff-5d37-4ee9-cb32-bd77b9d271cf",
  "Audits": [
    {
      "AccountId": 178,
      "AccountNumber": "AccountNumber2",
      "AdditionalInformation1": "AdditionalInformation16",
      "AdditionalInformation2": "AdditionalInformation26",
      "AdditionalInformation3": "AdditionalInformation30"
    },
    {
      "AccountId": 178,
      "AccountNumber": "AccountNumber2",
      "AdditionalInformation1": "AdditionalInformation16",
      "AdditionalInformation2": "AdditionalInformation26",
      "AdditionalInformation3": "AdditionalInformation30"
    },
    {
      "AccountId": 178,
      "AccountNumber": "AccountNumber2",
      "AdditionalInformation1": "AdditionalInformation16",
      "AdditionalInformation2": "AdditionalInformation26",
      "AdditionalInformation3": "AdditionalInformation30"
    }
  ],
  "Error": {
    "Code": "Code4",
    "Description": "Description2"
  }
}
```

