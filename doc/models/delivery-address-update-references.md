
# Delivery Address Update References

List of Delivery address update entity. The fields of this entity are described below.

## Structure

`DeliveryAddressUpdateReferences`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_id` | `Integer` | Optional | CardId |
| `card_pan` | `String` | Optional | PAN of the card. |
| `account_id` | `Integer` | Optional | AccountId |
| `account_number` | `String` | Optional | Account number |
| `reference_id` | `Integer` | Optional | Individual delivery address update reference number for the delivery address update request. |
| `error_info` | `String` | Optional | Individual error information for the delivery address update request. |

## Example (as JSON)

```json
{
  "CardId": 12345,
  "CardPAN": "7002051006629889654",
  "AccountId": 12356,
  "AccountNumber": "GB000000124",
  "ReferenceId": 573567,
  "ErrorInfo": "null"
}
```

