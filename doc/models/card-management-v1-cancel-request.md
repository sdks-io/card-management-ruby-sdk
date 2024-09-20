
# Card Management V1 Cancel Request

## Structure

`CardManagementV1CancelRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cards` | [`Array<UpdateCard>`](../../doc/models/update-card.md) | Required | List of CancelCardRequest entity.<br>Each card in the list will be Cancelled.<br>The details of the entity are given below. |
| `reason_id` | `Integer` | Optional | Reason id for cancelling the card.<br /><br>Optional if ReasonText is passed, else mandatory<br /><br>When passed, the reason Id will be validated with the allowed reason id’s configured for the card type of the card.<br /><br>If the reason Id is not allowed, then it will be included on the error cards response.<br><br>Possible values:<br>1 (Lost)<br>2 (Stolen)<br>3 (Card no longer required) |
| `reason_text` | `String` | Optional | Reason text for cancelling the card.<br /><br>Optional if ReasonId is passed, else mandatory<br /><br>When Reason Id is not known to the client, the reason text can be passed.<br /><br>When Reason Text is passed and the Target Status is either Block or Damaged, the text will be validated with the allowed list of values configured for the card type of the card.<br>If the text is not allowed, then it will be included on the error cards response.<br>However, if the Target status is Temporary block or Unblock then the text will be submitted<br><br>Possible Values:<br><br>1) Lost<br>2) Stolen<br>3) Card no longer required |

## Example (as JSON)

```json
{
  "Cards": [
    {
      "Caller": "Caller4",
      "IsReplacementChargeable": false,
      "NotifyCaller": false,
      "NotifyCallerOnSync": false,
      "OrderCardReplacement": false
    }
  ],
  "ReasonId": 144,
  "ReasonText": "ReasonText8"
}
```

