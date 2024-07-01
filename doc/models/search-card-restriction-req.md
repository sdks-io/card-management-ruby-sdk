
# Search Card Restriction Req

## Structure

`SearchCardRestrictionReq`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `col_co_id` | `Integer` | Optional | Collecting Company Id of the selected payer.<br>Optional if ColCoCode is passed else Mandatory.<br>Example:<br>1 for Philippines<br>5 for UK |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code) of the selected payer.<br>Mandatory for serviced OUs such as Romania, Latvia, Lithuania, Estonia, Ukraine etc. It is optional for other countries if ColCoID is provided.<br>Example:<br>86 for Philippines<br>5 for UK |
| `payer_id` | `Integer` | Optional | Payer Id (i.e. Customer Id of the Payment Customer) of the selected payer.<br>Optional if PayerNumber is passed else Mandatory<br>Example: 123456 |
| `payer_number` | `String` | Optional | Payer Number of the selected payer.<br>Optional if PayerId is passed else Mandatory<br>Example: GB000000123 |
| `accounts` | [`Accounts`](../../doc/models/accounts.md) | Optional | - |
| `bundle_id` | `String` | Optional | Identifier of the Card bundle<br>Optional if cards list is given, else mandatory.<br>This input is a search criterion, if given. |
| `cards` | [`SearchCardRestriction`](../../doc/models/search-card-restriction.md) | Optional | - |
| `include_location_restrictions` | `TrueClass \| FalseClass` | Optional | True/False<br>Whether to include location restriction of the cards in the response.<br>Optional<br>Default ‘false’ |
| `include_bundle_details` | `TrueClass \| FalseClass` | Optional | Default value is False,<br>When the value is True, API will return bundle Id associated with cards in the response, if available.<br>Note: Use ‘Null’ or ‘False’ for optimum performance. A delay in response is expected when set to ‘True’. |
| `include_inherited_limits` | `TrueClass \| FalseClass` | Optional | Default value is True,<br>When True: service will return the inherited values for the usage limits (from card-program or account as available) when it is not overridden on the card. |

## Example (as JSON)

```json
{
  "ColCoId": 90,
  "ColCoCode": 104,
  "PayerId": 138,
  "PayerNumber": "PayerNumber0",
  "Accounts": {
    "AccountId": 28,
    "AccountNumber": "AccountNumber0"
  }
}
```

