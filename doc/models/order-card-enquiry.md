
# Order Card Enquiry

This entity models the data that is sent in the https

## Structure

`OrderCardEnquiry`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account ID on the card request |
| `account_number` | `String` | Optional | AccountNumber |
| `bco_reference` | `Integer` | Optional | Bulk card order request refrence numer.<br /><br>This field will be null if the order is not through BCO. |
| `bco_row_number` | `Integer` | Optional | Row number of the request in the BCO file.<br /><br>This field will be null if the order is not through BCO. |
| `card_group_id` | `Integer` | Optional | Card group ID |
| `card_group_name` | `String` | Optional | Card group name |
| `card_id` | `Integer` | Optional | Unique Card Id.<br /><br>The field will be null if the card order request is not successly processed. |
| `card_pan` | `String` | Optional | Card PAN.<br /><br>Mask PAN (Mask all digits except the Last 6 digits of the PAN).<br /><br>The field will be null if the card order request is not successly processed. |
| `card_type_code` | `String` | Optional | CardTypeCode<br /><br>ISO code of the card i.e. first 7 digits of the PAN |
| `card_type_id` | `Integer` | Optional | CardTypeId |
| `card_type_name` | `String` | Optional | CardTypeName |
| `driver_name` | `String` | Optional | Driver name |
| `error_code` | `String` | Optional | Error code for the order card request.<br /><br>The value will be 0000 if it is processed without errors. |
| `error_description` | `String` | Optional | Error description for the order card request.<br /><br>The value will be empty string if it is processed without errors. |
| `gateway_sync_error_code` | `String` | Optional | Error code for the Gateway sync error.<br /><br>The value will be 0000 if it is processed without errors. |
| `gateway_sync_error_description` | `String` | Optional | Error description for the Gateway sync error.<br /><br>The value will be empty string if it is processed without errors. |
| `gateway_sync_status` | `String` | Optional | GatewaySyncStatus<br /><br>Status of the card sync with CFGW.<br /><br>Possible values:<br /><br>-Success<br /><br>-Failed<br /><br>-In Progress<br /><br>-Not Submitted |
| `main_reference` | `Integer` | Optional | Main reference number for the order card request.<br /><br>This field will be null if the order is through BCO. |
| `order_card_reference` | `Integer` | Optional | Indivitual card reference number for the order card request.<br /><br>This field will be null if the order is through BCO. |
| `order_status` | `String` | Optional | Order status.<br /><br>Possible values:<br /><br>P   Pending<br /><br>I   Picked up for processing<br /><br>PX	Failed at Queue but retry attempts pending<br /><br>X	Failed  at Queue<br /><br>R	Card is processed, awaiting for PAN update.<br /><br>S	Processed<br /><br>F	Failed |
| `payer_id` | `Integer` | Optional | Payer ID on the card request. |
| `payer_number` | `String` | Optional | Payer Number on the card request |
| `processed_date` | `String` | Optional | Date and time (in cutomers local time) when the card order request is processed<br /><br>Format: yyyyMMdd HH:mm:ss<br /><br>Note: The client application to convert the string to appropriate date/time type. |
| `purchase_category_code` | `String` | Optional | PurchaseCategoryCode |
| `purchase_category_id` | `Integer` | Optional | PurchaseCategoryId <br /><br>Note: Not Purchase code. This is a unique purchase category id assigned |
| `purchase_category_name` | `String` | Optional | PurchaseCategoryName |
| `submitted_date` | `String` | Optional | Date and time (in cutomers local time) when the card order request is submitted.<br /><br>Format: yyyyMMdd HH:mm:ss<br /><br>Note: The client application to convert the string to appropriate date/time type. |
| `sync_processed_date` | `String` | Optional | SyncProcessedDate<br /><br>Date and time (in cutomers local time) when the sync card request is processed.<br /><br>Format: yyyyMMdd HH:mm:ss<br /><br>Note: The client application to convert the string to appropriate date/time type. |
| `sync_requested_date` | `String` | Optional | SyncRequestedDate<br /><br>Date and time (in cutomers local time) when the sync card request is submitted.<br /><br>Format: yyyyMMdd HH:mm:ss <br /><br>Note: The client application to convert the string to appropriate date/time type. |
| `vrn` | `String` | Optional | Vehicle registration number |
| `order_request_id` | `String` | Optional | Unique Id of the Original Order card request, the status of which is enquired by this API. <br /><br>This is returned for end to end traceability of a request based on the original Order Card request. |
| `expiry_date` | `String` | Optional | Expiry date of the card.<br>Format: yyyymmdd hh:mm:ss<br>(Clients to convert this to appropriate DateTime type.)<br>Note: This is the Expiry Date saved DB.<br>If the Order Card request is still not processed, i.e. PAN is not yet issued, this field will be null or empty.<br>For a Card Order with a custom Expiry Date passed in the request, this value will be returned after it is updated successfully in GFN by the background process. |
| `client_reference_id` | `String` | Optional | This is the Client Reference Id of card in the order which needs to be passed by the client. |
| `status_description` | `String` | Optional | Order status.<br /><br>Possible values<br /><br><br>Success<br /><br><br>Failed<br /><br><br>InProgress<br /> |
| `col_co_id` | `Integer` | Optional | Colcoid |

## Example (as JSON)

```json
{
  "AccountId": 206,
  "AccountNumber": "AccountNumber0",
  "BCOReference": 154,
  "BCORowNumber": 80,
  "CardGroupId": 252
}
```

