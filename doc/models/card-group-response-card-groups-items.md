
# Card Group Response Card Groups Items

## Structure

`CardGroupResponseCardGroupsItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account Id for the associated card group |
| `account_number` | `String` | Optional | Account number for the associated card group |
| `account_short_name` | `String` | Optional | Account short name for the associated card group |
| `active_cards` | `Integer` | Optional | Total number of active cards for the given search criteria |
| `blocked_cards` | `Integer` | Optional | Total number of cards for the given search criteria that are permanently blocked |
| `cancelled_cards` | `Integer` | Optional | Total number of cards for the given search criteria that are cancelled |
| `card_delivery_point` | `TrueClass \| FalseClass` | Optional | card delivery point enabled or not |
| `card_group_id` | `Integer` | Optional | Id of the card group matching the search criteria. |
| `card_group_name` | `String` | Optional | Name of the card group matching the search criteria. |
| `card_type_code` | `String` | Optional | Card Type Code |
| `card_type_id` | `Integer` | Optional | Card Type Id |
| `card_type_name` | `String` | Optional | Card Type Name |
| `expired_cards` | `Integer` | Optional | Total number of expired cards for the given search criteria |
| `expiry_date` | `String` | Optional | Expiry date of the card.<br>Format: yyyyMMdd<br>Note: Clients to convert this to appropriate DateTime type. |
| `print_on_card` | `TrueClass \| FalseClass` | Optional | PrintOnCard true/false |
| `renewal_pending_cards` | `Integer` | Optional | Total number of Renewal Pending Cards for the given search criteria |
| `replaced_cards` | `Integer` | Optional | - |
| `status` | `String` | Optional | Status of the card group. |
| `temporary_block_by_customer` | `Integer` | Optional | Total number of cards for the given search criteria that are temporarily blocked by customer |
| `temporary_block_by_shell` | `Integer` | Optional | Total number of cards for the given search criteria that are temporarily blocked by Shell |
| `terminated_date` | `String` | Optional | Terminated Date.<br>Format: yyyyMMdd<br>Note: Clients to convert this to appropriate Date Time type. |
| `total_cards` | `Integer` | Optional | Total number of cards for the given search criteria |

## Example (as JSON)

```json
{
  "AccountId": 1229,
  "AccountNumber": "CZ00000929",
  "AccountShortName": "Dominica South1",
  "ActiveCards": 0,
  "BlockedCards": 1,
  "CancelledCards": 0,
  "CardGroupId": 1234,
  "CardGroupName": "1234T",
  "CardTypeCode": "0123",
  "CardTypeId": 123,
  "CardTypeName": "test",
  "ExpiredCards": 0,
  "ExpiryDate": "20231231",
  "RenewalPendingCards": 5,
  "ReplacedCards": 0,
  "Status": "TERMINATED",
  "TemporaryBlockByCustomer": 0,
  "TemporaryBlockByShell": 0,
  "TerminatedDate": "20210712",
  "TotalCards": 10
}
```

