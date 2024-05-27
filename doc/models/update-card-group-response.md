
# Update Card Group Response

## Structure

`UpdateCardGroupResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `main_reference` | `Integer` | Optional | Reference number for tracking the overall request.<br>The value will be null when the validation fails. |
| `update_card_group_reference` | `Integer` | Optional | Reference number for tracking the execution of terminate card-group request.<br>Reference number will be null when the validations fail or TerminateCardGroup in the request object is false. |
| `new_card_group_reference` | `Integer` | Optional | Reference number for tracking the execution of new card group creation in the case when the cards in the terminating card-group have to be moved to a new card-group.<br>Reference number will be null when the validations fail or new card-group creation is not requested. |
| `move_card_references` | [`Array<UpdateCardGroupResponseMoveCardReferencesItems>`](../../doc/models/update-card-group-response-move-card-references-items.md) | Optional | List of cards submitted successfully for processing the move to the target card-group or to change card-group to null.<br>This list will be empty when the validations fail or there are no cards in the card-group that is getting terminated or MoveCards in the request object is false |
| `error` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `request_id` | `String` | Optional | API Request ID |

## Example (as JSON)

```json
{
  "MainReference": 244,
  "UpdateCardGroupReference": 188,
  "NewCardGroupReference": 34,
  "MoveCardReferences": [
    {
      "CardId": 234,
      "PAN": "PAN6",
      "Reference": 188
    },
    {
      "CardId": 234,
      "PAN": "PAN6",
      "Reference": 188
    }
  ],
  "Error": {
    "Code": "Code4",
    "Description": "Description2"
  }
}
```

