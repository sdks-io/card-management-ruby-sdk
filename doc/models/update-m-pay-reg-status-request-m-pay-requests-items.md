
# Update M Pay Reg Status Request M Pay Requests Items

## Structure

`UpdateMPayRegStatusRequestMPayRequestsItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `global_request_id` | `String` | Optional | List of MPay Request to be updated for Fleet Manager approval status.<br>Mandatory<br>Maximum number of requests that can be submitted are 50 |
| `status` | `String` | Optional | Status of mobile payment registration request<br>Mandatory.<br>Allowed values –<br>•	Approved<br>•   Rejected |
| `approver_user_id` | `String` | Optional | Approver’s User ID<br>ApproverUserID is mandatory when Status is Approved else optional |
| `approver_user_display_name` | `String` | Optional | Approver’s display name<br>Mandatory when Status is Approved else optional. |
| `reason` | `String` | Optional | Reason for Fleet Manager approval/rejection.<br>Optional |

## Example (as JSON)

```json
{
  "GlobalRequestID": "GlobalRequestID4",
  "Status": "Status4",
  "ApproverUserID": "ApproverUserID0",
  "ApproverUserDisplayName": "ApproverUserDisplayName0",
  "Reason": "Reason8"
}
```

