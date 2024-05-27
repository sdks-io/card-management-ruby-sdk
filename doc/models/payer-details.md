
# Payer Details

## Structure

`PayerDetails`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `col_co_id` | `Integer` | Optional | Collecting company id of the customer. |
| `col_co_code` | `Integer` | Optional | Collecting company code of the customer. |
| `country_code` | `String` | Optional | ISO code of the customer country. |
| `country` | `String` | Optional | Country of the customer |
| `payer_id` | `Integer` | Optional | Payer id of the customer |
| `payer_number` | `String` | Optional | Payer Number of the customer |
| `payer_full_name` | `String` | Optional | Full Name of the Payer |
| `payer_short_name` | `String` | Optional | Short name of the payer |
| `payer_group_id` | `Integer` | Optional | Payer Group Id |
| `amount_due` | `Float` | Optional | Invoiced amount and due for payment from the last SOA. |
| `amount_overdue` | `Float` | Optional | Invoiced amount and overdue for payment from the last SOA. |
| `amount_not_overdue` | `Float` | Optional | Invoiced amount and not overdue for payment from the last SOA. |
| `outstanding_balance` | `Float` | Optional | Current outstanding balance amount from the last SOA. |
| `unallocated_payment` | `Float` | Optional | Unallocated payment.<br>When negative, indicates overdue amount from the last SOA. |
| `soa_currency_code` | `String` | Optional | Currency ISO code |
| `soa_currency_symbol` | `String` | Optional | Currency symbol |
| `soa_credit_limit_currency_code` | `String` | Optional | Currency ISO code |
| `soa_credit_limit_currency_symbol` | `String` | Optional | Currency symbol |
| `last_payment_currency_code` | `String` | Optional | Currency ISO code |
| `last_payment_currency_symbol` | `String` | Optional | currency symbol |
| `last_payment_amount` | `Float` | Optional | Latest payment amount for the requested payer. |
| `last_payment_date` | `String` | Optional | Latest payment date for the requested payer. |
| `soa_last_payment_amount` | `Float` | Optional | Last payment amount in statement of account for the requested payer. |
| `soa_last_payment_date` | `String` | Optional | Last payment date in statement of account for the requested payer. |
| `currency_code` | `String` | Optional | Currency ISO code |
| `currency_symbol` | `String` | Optional | Currency Symbol |
| `col_co_country_code` | `String` | Optional | The 2-character ISO Code for the customer and card owning country. |
| `local_currency_code` | `String` | Optional | Currency ISO code of the local country. |
| `local_currency_symbol` | `String` | Optional | Currency Symbol of the local country |
| `local_currency_exchange_rate` | `Float` | Optional | Exchange rate from OU base currency to local currency. |
| `local_currency_exchange_rate_so_a` | `Float` | Optional | Exchange rate from SoA credit limit currency to local currency |
| `billing_frequency_type_id` | `Integer` | Optional | Billing/Invoice frequency Identifier. Indicates the frequency in which the transactions will be considered for invoicing in a bulling run<br>E.g.: 1, 2, 3, etc. |
| `billing_frequency_type` | `String` | Optional | Billing/Invoice frequency. The frequency in which the transactions will be considered for invoicing in a bulling run<br>E.g.:<br>1	Daily (all days)<br>2	Daily (only working days)<br>3	Weekly - Monday<br>4	Weekly – Tuesday<br>Etc. |
| `billing_run_frequency_type_id` | `Integer` | Optional | Frequency at which the billing process is triggered.<br>E.g.: 1, 2, 3, etc. |
| `billing_run_frequnecy` | `String` | Optional | Frequency at which the billing process is triggered.E.g.:<br>1	Daily (all days)<br>2	Daily (only working days)<br>3	Weekly - Monday<br>4	Weekly – Tuesday<br>Etc. |
| `day_1_run` | `Integer` | Optional | The first day in a month when the billing should run in case of multiple billing runs configured with in a single month. |
| `day_2_run` | `Integer` | Optional | The second day in a month when the billing should run in case of multiple billing runs configured with in a single month. |
| `day_3_run` | `Integer` | Optional | The third day in a month when the billing should run in case of multiple billing runs configured with in a single month. |
| `day_4_run` | `Integer` | Optional | The fourth day in a month when the billing should run in case of multiple billing runs configured with in a single month. |
| `invoice_distribution_methods` | [`Array<InvoiceDistributionMethod>`](../../doc/models/invoice-distribution-method.md) | Optional | - |
| `output_type` | `String` | Optional | Invoice output type (Id-Description)<br>E.g.:<br>1-PDF<br>6-Print |
| `invoice_account_id` | `Integer` | Optional | The Account ID of the account on which the invoice is generated. |
| `invoice_account_number` | `String` | Optional | The Account Number of the account on which the invoice is generated. |
| `invoice_account_short_name` | `String` | Optional | The Account Short Name of the account on which the invoice is generated. |
| `best_of_indicator` | `TrueClass \| FalseClass` | Optional | Best of Indicator of the Pricing customer/account configured.<br>**Default**: `false` |
| `is_international` | `TrueClass \| FalseClass` | Optional | Whether the account is international.<br>**Default**: `false` |
| `total_accounts` | `Integer` | Optional | Total number of accounts under the payer. |
| `total_active_accounts` | `Integer` | Optional | Total number of active accounts under the payer. |
| `total_cards` | `Integer` | Optional | Total number of cards under the payer. |
| `total_active_cards` | `Integer` | Optional | Total number of active cards under the payer. |
| `total_blocked_cards` | `Integer` | Optional | Total number of cards under the payer that are permanently blocked |
| `total_cancelled_cards` | `Integer` | Optional | Total number of cards under the payer that are cancelled |
| `total_expired_cards` | `Integer` | Optional | Total number of expired cards under the payer. |
| `total_renewal_pending_cards` | `Integer` | Optional | Total number of Renewal Pending cards under the payer. |
| `total_replaced_cards` | `Integer` | Optional | Total number of cards under the payer with status as “Replaced |
| `total_temporary_block_cards_by_customer` | `Integer` | Optional | Total number of cards under the payer that are temporarily blocked by customer. |
| `total_temporary_block_cards_by_shell` | `Integer` | Optional | Total number of cards under the payer that are temporarily blocked by Shell. |
| `total_new_cards` | `Integer` | Optional | Total number of cards in “New” status |
| `total_fraud_cards` | `Integer` | Optional | Total number of cards in Fraud status |
| `total_blocked_accounts` | `Integer` | Optional | Total number of accounts in Blocked status |
| `total_cancelled_accounts` | `Integer` | Optional | Total number of accounts in Cancel status |
| `payer_trading_name` | `String` | Optional | Trading name for the Payer |
| `status` | `String` | Optional | Payer current status id and description<br>e.g. (Id – Description):<br>1-Active<br>2-Requested from UTA<br>3-Awaiting embossing<br>4-Manufactured<br>5-Awaiting despatch |
| `billing_language` | `String` | Optional | Payer Billing Language id and description |
| `legal_entity` | `String` | Optional | Legal entity id and description of the Payer |
| `date_established` | `String` | Optional | Payer/Company Established Date. |
| `customer_classification` | `String` | Optional | Payer/Company Classification id and description |
| `industry_class` | `String` | Optional | Payer/Company Industry class id and description |
| `marketing_segmentation` | `String` | Optional | Marketing Segmentation id and description |
| `line_of_business` | `String` | Optional | Payer/Company Line of Business Id and Description |
| `print_credit_limit` | `TrueClass \| FalseClass` | Optional | Is Credit Limit printed on the statement of account: True/False<br>If True Credit Limit is printed on invoice/SOA<br>**Default**: `false` |
| `card_group_type` | `String` | Optional | Card Group Type configured for Payer<br>e.g. (Id – Description):<br>1-Horizontal only<br>2-Vertical only<br>3-Both |
| `renew_cards` | `TrueClass \| FalseClass` | Optional | If set to True cards will be automatically renewed on expiry<br>**Default**: `false` |
| `allow_select_pin` | `TrueClass \| FalseClass` | Optional | If set to True then Self Select PIN is allowed for Payer<br>**Default**: `false` |
| `use_fleet_pin` | `TrueClass \| FalseClass` | Optional | If set to True then Fleet PIN is applied for the cards directly under payer |
| `vat_reg_number` | `String` | Optional | Payer/Company VAT registration number. |
| `vat_reg_number_2` | `String` | Optional | Payer/Company VAT registration number 2. |
| `registration_number` | `String` | Optional | Payer/Company Registration number |
| `registration_number_2` | `String` | Optional | Payer/Company Registration number2 |
| `sales_ledger_balance` | `Float` | Optional | Sales Ledger Balance (Billed) |
| `exposure` | `Float` | Optional | Exposure after guarantee |
| `outstanding_debt` | `Float` | Optional | Total outstanding debt (including billed and unbilled sales and fee items) |
| `available_credit` | `Float` | Optional | The available credit for the payer.<br>This is the credit limit minus the outstanding debt. |
| `band` | `String` | Optional | Band Id and Description of the Payer in Card Platform.<br>e.g. (Id – Description):<br>1-Platinum<br>2-Gold<br>3-Silver<br>4-Bronze |
| `global_customer_reference_id` | `String` | Optional | Global Customer reference id configured in card platform for Payer (Same as Payer Group) |
| `credit_limit` | `Float` | Optional | Payment Credit limit of Payer. |
| `credit_limit_in_customer_currency` | `Float` | Optional | Credit limit in Customer currency.<br>Note: For currency details refer the parameters CurrencyCode & CurrencySymbol in the PayerDetail response. |
| `billing_currency_code` | `String` | Optional | Customer Billing currency ISO code. |
| `billing_currency_symbol` | `String` | Optional | Customer Billing currency Symbol. |
| `payment_method` | `String` | Optional | Payment method Id and Description as configured for Payer in Card Platform |
| `payment_terms` | `String` | Optional | Payment terms Id and Description as configured for Payer in Card Platform |
| `temporary_credit_limit_increase` | `Float` | Optional | Temporary Credit limit increase value |
| `temporary_credit_limit_increase_in_customer_currency` | `Float` | Optional | Temporary Credit limit increase value |
| `temporary_credit_limit_expiry_date` | `String` | Optional | Temporary Credit limit expiry date |
| `payer_bank_account` | [`Array<BankAccount>`](../../doc/models/bank-account.md) | Optional | - |
| `card_delivery_address` | [`Address`](../../doc/models/address.md) | Optional | - |
| `correspondance_address` | [`Address`](../../doc/models/address.md) | Optional | - |
| `billing_address` | [`Address`](../../doc/models/address.md) | Optional | - |
| `has_active_vol_based_pricing` | `TrueClass \| FalseClass` | Optional | True, if the payer is setup for volume-based pricing and is active on the current date, else false.<br><br>This field is returned only when IncludeBonusParameters is set to True in the request. Else set to null. |
| `has_active_vol_based_bonus` | `TrueClass \| FalseClass` | Optional | True, if the payer is setup for volume-based bonus and is active on the current date, else false.<br>This field is returned only when IncludeBonusParameters is set to True in the request. Else set to null. |
| `has_active_vol_based_association_bonus` | `TrueClass \| FalseClass` | Optional | True, if the payer is setup for volume-based association bonus and is active on the current date, else false.<br>This field is returned only when IncludeBonusParameters is set to True in the request. Else set to null. |
| `finance_currency` | [`FinanceCurrency`](../../doc/models/finance-currency.md) | Optional | This entity will not be present in the response if the ‘IncludeFinanceCurrency’ flag in the request is ‘false’ |
| `tolls_customer_id` | `String` | Optional | Customer id in e-TM system<br>This field will have value only when ReturnTollsCustomerId is set to true in the request else set to null or empty. |
| `tolls_colco_country_type_id` | `String` | Optional | String	Colco country type id in e-TM system<br>This field will have value only when ReturnTollsCustomerId is set to true in the request else set to null or empty. |
| `contracts` | [`Array<CustomerContract>`](../../doc/models/customer-contract.md) | Optional | - |

## Example (as JSON)

```json
{
  "ColCoId": 14,
  "ColCoCode": 14,
  "CountryCode": "DE",
  "Country": "Germany",
  "PayerId": 12345,
  "PayerNumber": "DE000000123",
  "PayerFullName": "ABC Company",
  "PayerShortName": "ABC",
  "PayerGroupId": 456,
  "AmountDue": 1500,
  "AmountOverdue": 450,
  "AmountNotOverdue": 4546.76,
  "OutstandingBalance": 456,
  "UnallocatedPayment": 123,
  "SOACurrencyCode": "EUR",
  "SOACurrencySymbol": "€",
  "SOACreditLimitCurrencyCode": "EUR",
  "SOACreditLimitCurrencySymbol": "€",
  "LastPaymentCurrencyCode": "EUR",
  "LastPaymentCurrencySymbol": "€",
  "LastPaymentAmount": 5465,
  "LastPaymentDate": "20230405",
  "SOALastPaymentAmount": 45443,
  "SOALastPaymentDate": "20230805",
  "CurrencyCode": "EUR",
  "CurrencySymbol": "€",
  "ColCoCountryCode": "DE",
  "LocalCurrencyCode": "EUR",
  "LocalCurrencySymbol": "€",
  "LocalCurrencyExchangeRate": 1.45,
  "LocalCurrencyExchangeRate_SoA": 1.2,
  "BillingFrequencyTypeId": 1,
  "BillingFrequencyType": "weekly",
  "BillingRunFrequencyTypeId": 1,
  "BillingRunFrequnecy": "weekly",
  "Day1Run": 0,
  "Day2Run": 0,
  "Day3Run": 0,
  "Day4Run": 0,
  "OutputType": "PDF",
  "InvoiceAccountID": 12345,
  "InvoiceAccountNumber": "1234567",
  "InvoiceAccountShortName": "Test Account",
  "BestOfIndicator": false,
  "IsInternational": false,
  "TotalAccounts": 5,
  "TotalActiveAccounts": 4,
  "TotalCards": 567,
  "TotalActiveCards": 560,
  "TotalBlockedCards": 6,
  "TotalCancelledCards": 0,
  "TotalExpiredCards": 1,
  "TotalRenewalPendingCards": 0,
  "TotalReplacedCards": 0,
  "TotalTemporaryBlockCardsByCustomer": 0,
  "TotalTemporaryBlockCardsByShell": 0,
  "TotalNewCards": 0,
  "TotalBlockedAccounts": 0,
  "TotalCancelledAccounts": 0,
  "PayerTradingName": "ABC Company",
  "Status": "Active",
  "BillingLanguage": "1-German",
  "LegalEntity": "20-Unlimited Corporation",
  "DateEstablished": "19880504",
  "CustomerClassification": "3-10049 Domestic",
  "IndustryClass": "4-Growing of sugar cane",
  "MarketingSegmentation": "1-National CRT",
  "LineOfBusiness": "1-CRT",
  "PrintCreditLimit": false,
  "CardGroupType": "1-Horizontal only",
  "RenewCards": false,
  "AllowSelectPIN": false,
  "VATRegNumber": "4534545",
  "VATRegNumber2": "45345545",
  "RegistrationNumber": "453543",
  "RegistrationNumber2": "35435",
  "SalesLedgerBalance": 0,
  "Exposure": 0,
  "OutstandingDebt": 0,
  "AvailableCredit": 0,
  "Band": "Gold",
  "GlobalCustomerReferenceId": "1234",
  "CreditLimit": 3434,
  "BillingCurrencyCode": "EUR",
  "BillingCurrencySymbol": "€",
  "PaymentMethod": "Incoming - Bank Transfer",
  "PaymentTerms": "0 days after invoice",
  "TemporaryCreditLimitIncrease": 0,
  "TemporaryCreditLimitIncreaseInCustomerCurrency": 0,
  "TemporaryCreditLimitExpiryDate": "20230504",
  "TollsCustomerId": "2332",
  "TollsColcoCountryTypeId": "33"
}
```

