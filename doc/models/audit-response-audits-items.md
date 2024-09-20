
# Audit Response Audits Items

## Structure

`AuditResponseAuditsItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_id` | `Integer` | Optional | Account id of the customer.<br>It will be the source account id in case of “Fund Transfer |
| `account_number` | `String` | Optional | Account number of the customer.<br>It will be the source account number in case of “Fund Transfer” |
| `additional_information_1` | `String` | Optional | Additional information in the request. |
| `additional_information_2` | `String` | Optional | Additional information in the request. |
| `additional_information_3` | `String` | Optional | Additional information in the request. |
| `additional_information_4` | `String` | Optional | Additional information in the request. |
| `additional_information_5` | `String` | Optional | Additional information in the request. |
| `additional_information_6` | `String` | Optional | Additional information in the request. |
| `additional_information_7` | `String` | Optional | Additional information in the request. |
| `additional_information_8` | `String` | Optional | Additional information in the request. |
| `additional_information_9` | `String` | Optional | Additional information in the request. |
| `card_group_id` | `Integer` | Optional | Additional information in the request. |
| `card_group_name` | `String` | Optional | Card group name in the request. |
| `card_id` | `Integer` | Optional | Card Id in the request |
| `col_co_code` | `Integer` | Optional | Collecting company code of the customer |
| `col_co_id` | `Integer` | Optional | Collecting company id of the customer. |
| `error_code` | `String` | Optional | Error code of the request |
| `error_string` | `String` | Optional | Error description of the request |
| `global_request_id` | `String` | Optional | Global unique request reference provided by client application. |
| `pan` | `String` | Optional | PAN in the request.<br>If Mask PAN is enabled at Microservices configuration then all digits of the PAN, except the last 6 digits, will be masked. |
| `payer_id` | `Integer` | Optional | Payer id of the customer. |
| `payer_number` | `String` | Optional | Payer number of the customer. |
| `processed_on` | `String` | Optional | Request processed date.<br>Format: yyyyMMdd HH:mm: ss |
| `requested_by` | `String` | Optional | vUUID of the user who submitted this request.<br>It will be the UUID of the Driver in the case of “MobilePaymentRegistration” |
| `requested_operation` | `String` | Optional | User requested operation.<br>Possible values:<br>•    OrderCard<br>•    CreateCardGroup<br>•    PINReminder<br>•    MoveCard<br>•    UpdateCardStatus<br>•    UpdateCardGroup<br>•    AutoRenew<br>•    BulkCardOrder<br>•    BulkCardBlock<br>•    BulkCardOrderMultiAccount<br>•    MobilePaymentRegistration<br>•    UpdateCompanyInfo<br>•    BCOSummary<br>•    BCOMultiAccountSummary<br>•    BCBSummary<br>•    FundTransfer<br>•    DeliveryAddressUpdate |
| `request_reference` | `Integer` | Optional | Reference number for the requested operation. |
| `request_type` | `String` | Optional | Request type initiated under the requested operation.<br>Possible values:<br>•    OrderCard<br>•    CreateCardGroup<br>•    PINReminder<br>•    MoveCard<br>•    UpdateCardStatus<br>•    UpdateCardGroup<br>•    AutoRenew<br>•    BulkCardOrder<br>•    BulkCardBlock<br>•    BulkCardOrderMultiAccount<br>•    MobilePaymentRegistration<br>•    UpdateCompanyInfo<br>•    BCOSummary<br>•    BCOMultiAccountSummary<br>•    BCBSummary<br>•    FundTransfer<br>•    DeliveryAddressUpdate |
| `status` | `String` | Optional | Status of the request.<br>Possible values:<br>•    Success<br>•    Failed<br>•    InProgress<br>•    Submitted<br>•    Rejected<br>•    PendingApproval<br>•    MailedToCSC |
| `submitted_on` | `String` | Optional | Request submitted date.<br>Format: yyyyMMdd HH:mm: ss |
| `sub_request_reference` | `Integer` | Optional | Reference number for the individual request type. |
| `user_display_name` | `String` | Optional | Display name of the user who submitted this request.<br>It will be the Display Name of the Driver in the case of “MobilePaymentRegistration” in the below format: |

## Example (as JSON)

```json
{
  "AccountId": 123,
  "AccountNumber": "BE00000113",
  "AdditionalInformation1": "922",
  "AdditionalInformation2": "2016",
  "AdditionalInformation3": "MERCEDES GLE KLASSE SEGM. L",
  "AdditionalInformation4": "408135/3",
  "AdditionalInformation5": "API TEST CUSTOMER 113",
  "AdditionalInformation6": "408135/3",
  "AdditionalInformation7": "null",
  "AdditionalInformation8": "null",
  "AdditionalInformation9": "null",
  "CardGroupId": 123,
  "CardGroupName": "test",
  "CardId": 10594,
  "ColCoCode": 9,
  "ColCoId": 9,
  "ErrorCode": "0000",
  "ErrorString": "null",
  "GlobalRequestID": "6f1473ea-7f68-4ccb-acee-4b5b997aad5a",
  "PAN": "7002097550439850717",
  "PayerId": 123,
  "PayerNumber": "BE00000113",
  "ProcessedOn": "20240201 14:30:26",
  "RequestedBy": "EWyIv8LpjgW3LlKDDUo0VZMN6JKpqRc",
  "RequestedOperation": "OrderCard",
  "RequestReference": 519876,
  "RequestType": "OrderCard",
  "Status": "Success",
  "SubmittedOn": "20240201 14:29:16",
  "SubRequestReference": 720061,
  "UserDisplayName": "Supriya-ThridPartyAgent"
}
```

