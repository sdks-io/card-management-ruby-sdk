
# Filters 1

## Structure

`Filters1`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account ID of the customer.<br/> Optional.<br/> This input is a search criterion, if given. |
| `account_number` | `String` | Optional | Account Number of the customer.<br/> Optional.<br/> This input is a search criterion, if given. |
| `col_co_code` | `Integer` | Optional | Collecting Company Code (Shell Code) of the selected payer. <br /><br>Optional If ColCo Id or ColCoCountryCode is passed else Mandatory.<br /> |
| `col_co_country_code` | `String` | Optional | The 2 character ISO Code for the customer and card owning country.<br /><br>Optional If ColCoId or ColCoCode is passed else Mandatory.<br /> |
| `col_co_id` | `Integer` | Optional | Collecting Company Id (in ) of the selected payer.<br /><br>Optional If ColCo Codeor ColCoCountryCode is passed else Mandatory <br /> |
| `payer_id` | `Integer` | Optional | Payer Id (i.e. Customer Id of the Payment Customer ) of the selected payer.<br /><br>Optional if PayerNumber is passed else Mandatory |
| `payer_number` | `String` | Optional | Payer Number of the selected payer.<br /><br>Optional if PayerId is passed else Mandatory |
| `card_group_id` | `Integer` | Optional | Card group id.<br /><br>Optional. <br /><br>This input is a search criterion, if given.<br /><br>When -1 is passed, those cards that does not belong to any card group will be returned. |
| `card_group_name` | `String` | Optional | Card group name.<br /><br>Optional.<br /><br>This input is a search criterion, if given.<br /><br>If CardGroupId is provided then this search criterion will be ignored, else, those cards that have the card group name completely matching with the entered value will be returned |
| `card_status` | `Array<String>` | Required | Status of the card.<br /><br>Mandatory.<br /><br>Multiple statuses are allowed to be included in the search criteria.<br /><br>CardStatus filter accepts either of the two values for each status as described below. However, the output field “StatusDescription” is aligned with second value highlighted in italics.<br /><br>Below are the possible allowed statuses: <br /><br>• ACTIVE or Active – Cards at status Active (The result will include all the cards having the following intermediate statuses as defined s, if the IncludeIntermediateStatus flag is true: Active (Block in progress), Active (Cancel in progress), Active (Marked as damaged)), New (Cancel in progress).<br /><br>• ON_ORDER or New – Cards at status New <br /><br>• EXPIRED or Expired – Cards at status Expired<br /><br>• BLOCKED or Blocked Card – Cards at status Block (The result will include all cards having the following intermediate status as defined, if the IncludeIntermediateStatus flag is true: Blocked card (Unblock in progress))<br /><br>• TEMP_BLOCKED_CUSTOMER or Temporary Block(Customer) – Cards at status Temporary Blocked By Customer<br /><br>• TEMP_BLOCKED_SHELL or Temporary Block (Shell) – Cards at Status Temporary Blocked by Shell<br /><br>• CANCELLED or Cancelled – Cards at status Cancelled<br /><br>• PENDING_RENEWAL or Pending Renewal - Cards that are in renewal process<br /><br>• REPLACED or Replaced – Cards at Status Replaced<br /><br>• FRAUD or Fraud – Cards at Status FRAUD<br /><br>• ALL |
| `expiring_in_days` | `Integer` | Optional | Cards active and expiring in given number of days.<br /><br>Optional<br /><br>Note: When a value is passed in this parameter, only active cards will be considered while searching. |
| `issued_after` | `String` | Optional | If provided, only list cards issued after the given date<br /><br>Optional<br /><br>Format: yyyyMMdd<br /><br>Note: Clients to convert this to appropriate DateTime type. |
| `pan_ends_with` | `String` | Optional | Last digits of the PAN number<br /><br>Minimum 4 last digits of the card should be sent for this field to be considered as part of the search criteria.<br /><br>Optional<br /><br>Max Length: 50 |
| `driver_name` | `Array<String>` | Optional | Driver Name embossed on the card<br /><br>Optional<br /><br>Up to 10 driver names could be passed in the parameter.<br /><br>Minimum of 4 characters should be provided for each driver name else not considered.<br /><br>Those cards will be returned when part of the driver name matches with any of the string passed in the list.<br /><br>Max Length for each Driver name: 50 |
| `vehicle_registration_number` | `Array<String>` | Optional | Vehicle Registration embossed on the card<br /><br>Optional<br /><br>Up to 10 vehicle registration numbers could be passed in the parameter.<br /><br>Minimum of 4 characters should be provided for each VRN else not considered<br /><br>Those cards will be returned when part of the VRN matches with any of the string passed in the list.<br /><br>Max Length for each VRN: 50 |
| `include_cards` | [`Array<SearchCard>`](../../doc/models/search-card.md) | Optional | List of SearchCard entity i.e., Card Id or PAN, which needs to be included in the response.<br /><br>Details of the SerachCard entity are given below. |
| `exclude_cards` | [`Array<SearchCard>`](../../doc/models/search-card.md) | Optional | List of SearchCard entity i.e., Card Id or PAN, which needs to be excluded in the response. <br /><br>Details of the SerachCard entity are given below. |
| `exclude_bundle_id` | `String` | Optional | Bundle Id for the Card, which needs to be excluded in the response.<br /><br>Optional |
| `card_segment` | `String` | Optional | Market segment to which card belongs to.<br /><br>Optional.<br /><br>Allowed values<br /><br>• CRT<br /><br>• Fleet |
| `purchase_category_code` | `String` | Optional | Purchase category code of the card.<br /><br>Optional. |
| `card_type_code` | `String` | Optional | ISO code of the card i.e. first 7 digits of the PAN<br /><br>Optional. |
| `exclude_pending_renewal_cards` | `TrueClass \| FalseClass` | Optional | Default value is True.<br /><br>When true, the API will not return cards that are at Pending Renewal Status in Cards Platform |
| `exclude_cancelled_cards` | `TrueClass \| FalseClass` | Optional | Default value is True.<br /><br>When true, the API will not return cards that are at Cancelled Status in Cards Platform |
| `exclude_replaced_cards` | `TrueClass \| FalseClass` | Optional | Default value is False.<br /><br>When true, the API will not return cards that are at Replaced Status in Cards Platform |
| `exclude_fraud_cards` | `TrueClass \| FalseClass` | Optional | Default value is False.<br /><br>When true, the API will not return cards that are at Fraud Status in Cards Platform |
| `exclude_card_group_id` | `Integer` | Optional | Optional<br /><br>When passed, the API will not return cards that are currently in the Card Group specified |
| `exclude_card_group_name` | `String` | Optional | Optional<br /><br>When passed, the API will not return cards that are currently in the Card Group specified |
| `creation_date` | `String` | Optional | Card Creation Date<br /><br>Optional<br /><br>Format: yyyyMMdd |
| `effective_date` | `String` | Optional | Effective date for the Card<br /><br>Optional<br /><br>Format: yyyyMMdd |
| `network` | `String` | Optional | Cards allowed to be used in site.<br /><br>Optional.<br /><br>Allowed values<br /><br>• ShellSitesOnly<br /><br>• PartnersSitesIncluded<br /> |
| `coverage` | `String` | Optional | Cards allowed to used nationally/internationally.<br /><br>Optional.<br /><br>Allowed values<br /><br><br>-National<br /><br><br>-International |
| `expiry_month` | `String` | Optional | Month in which the card is expiring.<br /><br>Optional.<br /><br>Format: MMYYYY |
| `exclude_old_cards` | `TrueClass \| FalseClass` | Optional | Default Value: False<br /><br>When this field is set to True, cards with below status 2 years (configurable) ago and earlier are excluded from the result<br /><br><br>-Blocked Card<br /><br><br>-Expired<br /><br><br>-Cancelled<br /><br><br>-Suspended<br /><br><br>-Blocked<br /><br><br>-Expired and Cancelled<br /><br><br>-Replaced<br /><br><br>-Replaced By<br /><br><br>-Closed<br /><br><br>-Fraud<br /> |
| `reissue_setting` | `String` | Optional | Default Value: All<br /><br>Optional<br /><br>This option is used to filter the list of cards with ‘ReissueSetting’.<br /><br>If ‘True’, the API will return cards with ReIssueSetting value is true.<br /><br>If ‘False’, the API will return cards with ReIsssueSetting value is false.<br /><br>If ‘ALL’, API will return cards with ReIssueSetting value True &amp; False both.<br /><br>Allowed Values:<br /><br><br>1. All<br /><br>2. True<br /><br>3. False |
| `request_id` | `String` | Required | - |

## Example (as JSON)

```json
{
  "AccountId": 38,
  "AccountNumber": "AccountNumber0",
  "ColCoCode": 200,
  "ColCoCountryCode": "ColCoCountryCode6",
  "ColCoId": 186,
  "CardStatus": [
    "CardStatus9",
    "CardStatus8",
    "CardStatus7"
  ],
  "RequestId": "RequestId8"
}
```

