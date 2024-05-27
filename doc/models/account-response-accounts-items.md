
# Account Response Accounts Items

## Structure

`AccountResponseAccountsItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `account_full_name` | `String` | Optional | Account Full Name |
| `account_id` | `Integer` | Optional | Account Id |
| `account_number` | `String` | Optional | Account Number |
| `account_short_name` | `String` | Optional | Account Short Name |
| `best_of_indicator` | `TrueClass \| FalseClass` | Optional | Best of Indicator of the Pricing customer/account configured. |
| `billing_frequency_type` | `String` | Optional | Billing/Invoice frequency. The frequency in which the transactions will be considered for invoicing in a bulling run<br>E.g.:<br>1	Daily (all days)<br>2	Daily (only working days)<br>3	Weekly - Monday<br>4	Weekly – Tuesday<br>Etc. |
| `billing_frequency_type_id` | `Integer` | Optional | Billing/Invoice frequency Identifier. Indicates the frequency in which the transactions will be considered for invoicing in a bulling run |
| `billing_run_frequency` | `String` | Optional | Frequency at which the billing process is triggered. E.g.:<br>1	Daily (all days)<br>2	Daily (only working days)<br>3	Weekly - Monday<br>4	Weekly – Tuesday<br>Etc. |
| `billing_run_frequency_type_id` | `Integer` | Optional | Frequency at which the billing process is triggered.<br>E.g.: 1, 2, 3, etc. |
| `col_co_country_code` | `String` | Optional | The 2-character ISO Code for the customer and card owning country. |
| `currency_code` | `String` | Optional | ISO code of customer currency. |
| `currency_symbol` | `String` | Optional | € |
| `day_1_run` | `Integer` | Optional | The first day in a month when the billing should run in case of multiple billing runs configured with in a single month |
| `day_2_run` | `Integer` | Optional | The second day in a month when the billing should run in case of multiple billing runs configured with in a single month |
| `day_3_run` | `Integer` | Optional | The third day in a month when the billing should run in case of multiple billing runs configured with in a single month |
| `day_4_run` | `Integer` | Optional | The fourth day in a month when the billing should run in case of multiple billing runs configured with in a single month |
| `frequency_type` | `String` | Optional | Frequency type unit id & description<br>E.g.:<br>1 - Daily<br>2 - Weekly<br>3 - Monthly<br>4 - Invoicing<br>6 - Calendar quarter |
| `gross_amount` | `Float` | Optional | Gross amount in customer currency. |
| `international_pos_language_code` | `String` | Optional | POS international language code |
| `international_pos_language_id` | `Integer` | Optional | POS international language ID |
| `invoice_account_id` | `Integer` | Optional | The Account ID of the account on which the invoice is generated. |
| `invoice_account_number` | `String` | Optional | The Account Number of the account on which the invoice is generated. |
| `invoice_account_short_name` | `String` | Optional | The Account Short Name of the account on which the invoice is generated. |
| `invoice_distribution_methods` | [`Array<InvoiceDistributionMethod>`](../../doc/models/invoice-distribution-method.md) | Optional | - |
| `is_international` | `TrueClass \| FalseClass` | Optional | Whether the account is international. |
| `is_invoice_point` | `TrueClass \| FalseClass` | Optional | Whether the account is an invoice point. |
| `last_modified_date` | `String` | Optional | Account last modified date and time |
| `local_currency_code` | `String` | Optional | ISO code of customer currency. |
| `local_currency_symbol` | `String` | Optional | Customer currency symbol. |
| `local_pos_language_code` | `String` | Optional | POS local language code |
| `local_pos_language_id` | `Integer` | Optional | POS local language ID |
| `net_amount` | `Float` | Optional | Net amount in customer currency. |
| `outstanding_balance` | `Float` | Optional | Outstanding balance in customer currency. |
| `paid_amount` | `Float` | Optional | Amount paid in customer currency. |
| `status` | `String` | Optional | Account Status |
| `status_reason` | `String` | Optional | Account status change reason id-description for the Status Reason, if any |
| `total_active_card_groups` | `Integer` | Optional | Total number of active card groups under the account |
| `total_active_cards` | `Integer` | Optional | Total number of active cards under the account. |
| `total_blocked_cards` | `Integer` | Optional | Total number of cards under the account that are permanently blocked |
| `total_cancelled_cards` | `Integer` | Optional | Total number of cards under the account that are cancelled |
| `total_cards` | `Integer` | Optional | Total number of cards under the account. |
| `total_expired_cards` | `Integer` | Optional | Total number of expired cards under the account. |
| `total_fraud_cards` | `Integer` | Optional | Total number of cards in Fraud status. |
| `total_new_cards` | `Integer` | Optional | Total number of cards in “New” status. |
| `total_renewal_pending_cards` | `Integer` | Optional | Total number of Renewal Pending account under the payer |
| `total_replaced_cards` | `Integer` | Optional | Total number of cards under the account with status as “Replaced” |
| `total_temporary_block_cards_by_customer` | `Integer` | Optional | Total number of cards under the account that are temporarily blocked by customer. |
| `total_temporary_block_cards_by_shell` | `Integer` | Optional | Total number of cards under the account that are temporarily blocked by Shell. |
| `vat_amount` | `Float` | Optional | VAT amount in customer currency. |
| `is_partner_card` | `Integer` | Optional | The account / sub-account is partner card account or not.<br>Possible values (1= Non-PC account, 2= PC account, 3= PC Payer with Card Types, 4= PC Payer)<br>Note: A partner card account is assumed to have only partner card card-types associated |
| `tolls_customer_id` | `String` | Optional | Customer id in e-TM system |
| `tolls_colco_country_type_id` | `String` | Optional | Colco country type id in e-TM system |
| `contracts` | [`Array<CustomerContract>`](../../doc/models/customer-contract.md) | Optional | - |
| `is_consortium_member` | `String` | Optional | true |

## Example (as JSON)

```json
{
  "AccountFullName": "CI TEST_Update20 New updated",
  "AccountId": 123,
  "AccountNumber": "DE00000008",
  "AccountShortName": "CI TEST_Update20",
  "BillingFrequencyType": "Monthly - 3rd",
  "BillingFrequencyTypeId": 1,
  "BillingRunFrequency": "Weekly - Monday",
  "BillingRunFrequencyTypeId": 1,
  "ColCoCountryCode": "14",
  "CurrencyCode": "14",
  "CurrencySymbol": "EUR",
  "Day1Run": 1,
  "Day2Run": 31,
  "Day3Run": 2,
  "Day4Run": 3,
  "FrequencyType": "Daily",
  "GrossAmount": 1232,
  "InternationalPOSLanguageCode": "deu",
  "InternationalPOSLanguageID": 1,
  "InvoiceAccountID": 9,
  "InvoiceAccountNumber": "DE00000008",
  "InvoiceAccountShortName": "BCI TEST_Update20",
  "LastModifiedDate": "20240131 11:12:34",
  "LocalCurrencyCode": "EUR",
  "LocalCurrencySymbol": "€",
  "LocalPOSLanguageCode": "deu",
  "LocalPOSLanguageID": 1,
  "NetAmount": 3434,
  "OutstandingBalance": 4354,
  "PaidAmount": 4343,
  "Status": "Blocked",
  "StatusReason": "3 - Customer Request",
  "TotalActiveCardGroups": 198,
  "TotalActiveCards": 544,
  "TotalBlockedCards": 121,
  "TotalCancelledCards": 168,
  "TotalCards": 10966,
  "TotalExpiredCards": 1000,
  "TotalFraudCards": 8,
  "TotalNewCards": 2,
  "TotalRenewalPendingCards": 0,
  "TotalReplacedCards": 20,
  "TotalTemporaryBlockCardsByCustomer": 9,
  "TotalTemporaryBlockCardsByShell": 2,
  "VATAmount": 2322,
  "IsPartnerCard": 1,
  "TollsCustomerId": "332",
  "TollsColcoCountryTypeId": "14",
  "BestOfIndicator": false
}
```

