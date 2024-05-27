
# Card Group Request

## Structure

`CardGroupRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `col_co_id` | `Integer` | Optional | Collecting Company Id of the selected payer.<br>Optional if ColCoCode is passed else Mandatory.<br>Example:<br>1 for Philippines<br>5 for UK |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code) of the selected payer.<br>Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia, Ukraine etc. It is optional for other countries if ColCoID is provided.<br>Example:<br>86 for Philippines<br>5 for UK |
| `payer_id` | `Integer` | Optional | Payer id of the customer.<br>Optional if PayerNumber is passed, else Mandatory.<br>This input is a search criterion.<br>Example: 123456 |
| `payer_number` | `String` | Optional | PayerNumber of the customer.<br>Optional if PayerId is passed, else Mandatory.<br>This input is a search criterion.<br>Example: GB00123456 |
| `account` | [`Array<Accounts>`](../../doc/models/accounts.md) | Optional | - |
| `card_group_name` | `String` | Optional | Card Group Name<br>Optional.<br>Minimum of 2 characters should be provided else not considered.<br>CardGroups those have the entered value at any part |
| `status` | `String` | Optional | Card Group Status<br>Mandatory<br>Allowed values:<br>•	ALL<br>•	TERMINATED<br>•	ACTIVE |
| `current_page` | `Integer` | Optional | Page Number (as shown to the users)<br>Optional<br>Default value 1 |
| `page_size` | `Integer` | Optional | Page Size – Number of records to show on a page.<br>Optional<br>Default value 50.<br>Return all rows if -1 is supplied as page size. |

## Example (as JSON)

```json
{
  "ColCoId": 14,
  "ColCoCode": 14,
  "PayerId": 123,
  "PayerNumber": "GB00123456",
  "CardGroupName": "test",
  "Status": "ALL",
  "PageSize": 1,
  "Account": [
    {
      "AccountId": 66,
      "AccountNumber": "AccountNumber2"
    },
    {
      "AccountId": 66,
      "AccountNumber": "AccountNumber2"
    }
  ]
}
```

