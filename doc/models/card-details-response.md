
# Card Details Response

## Structure

`CardDetailsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payer_id` | `Integer` | Optional | Payer Id (i.e. Customer Id of the Payment Customer in the Shell Card Platform) of the selected payer. |
| `payer_number` | `String` | Optional | Payer Number of the selected payer. |
| `account_id` | `Integer` | Optional | Account Id (i.e. Customer Id of the Customer in the Shell Card Platform) of the customer. |
| `account_number` | `String` | Optional | Account Number of the customer. |
| `account_short_name` | `String` | Optional | Account short name. |
| `col_co_country_code` | `String` | Optional | ISO 3166 Alpha-2 Country Code for the customer and card owning country. |
| `local_currency_code` | `String` | Optional | ISO 4217 Curreny Code of the local currency. |
| `local_currency_symbol` | `String` | Optional | Currency symbol of local currency. |
| `card_id` | `Integer` | Optional | Unique Card Id in Cards platform. |
| `pan` | `String` | Optional | Card PAN. In the response body the PAN will be masked if the option is enabled in the Shell Card Platform. |
| `status_id` | [`CardDetailsResponseStatusIdEnum`](../../doc/models/card-details-response-status-id-enum.md) | Optional | Possible Id’s and description:<br><br>* 1  Active<br>* 7  Blocked Card<br>* 8  Expired<br>* 9  Cancelled<br>* 10  New<br>* 23  Pending Renewal<br>* 31  Replaced<br>* 41  Temporary Block (Customer)<br>* 42  Temporary Block (Shell)<br>* 43  Fraud<br>* 101 Active (Block in progress) *<br>* 102 Blocked Card (Unblock in progress) *<br>* 103 Active (Cancel in progress) *<br>* 104 Active (Marked as damaged) *<br>* 105 New (Cancel as damaged) *<br>* 106 Active(Scheduled for block) ”#<br>* 107 Blocked Card(Scheduled for unblock)*#<br>* 108 Blocked Card (Cancel in progress) *<br><br>> Note:<br>> •  Items marked with * are intermediate statuses  to indicate that there are pending requests in progress. , The response can contain these intermediate statuses only if the IncludeIntermediateStatus flag is true.<br>> •  The placeholder “<Shell Card Platform Status>” in the items marked with # will be replaced with the Shell Card Platform status description. E.g., “Active (Scheduled for block)” |
| `status` | `String` | Optional | Possible Id’s and description:<br><br>* 1  Active<br>* 7  Blocked Card<br>* 8  Expired<br>* 9  Cancelled<br>* 10  New<br>* 23  Pending Renewal<br>* 31  Replaced<br>* 41  Temporary Block (Customer)<br>* 42  Temporary Block (Shell)<br>* 43  Fraud<br>* 101 Active (Block in progress) *<br>* 102 Blocked Card (Unblock in progress) *<br>* 103 Active (Cancel in progress) *<br>* 104 Active (Marked as damaged) *<br>* 105 New (Cancel as damaged) *<br>* 106 Active(Scheduled for block) ”#<br>* 107 Blocked Card(Scheduled for unblock) *#<br>* 108 Blocked Card (Cancel in progress) *<br><br>> Note:<br>> •  Items marked with * are intermediate statuses  to indicate that there are pending requests in progress. , The response can contain these intermediate statuses only if the IncludeIntermediateStatus flag is true.<br>> •  The placeholder “<Shell Card Platform Status>” in the items marked with # will be replaced with the Shell Card Platform status description. E.g., “Active (Scheduled for block)” |
| `odometer_prompt` | `TrueClass \| FalseClass` | Optional | True if odometer input is enabled on the card, else false |
| `fleet_id_prompt` | `TrueClass \| FalseClass` | Optional | True if fleet id input is enabled, else false |
| `pin_type` | [`CardDetailsResponsePINTypeEnum`](../../doc/models/card-details-response-pin-type-enum.md) | Optional | PIN type:<br><br>* `Card` - Card PIN<br>* `Fleet` - Fleet PIN |
| `has_pin` | `TrueClass \| FalseClass` | Optional | True if card has PIN, else false |
| `is_self_selected_pin` | `TrueClass \| FalseClass` | Optional | True if card has Self Selected PIN, else false |
| `temporary_block_allowed` | `TrueClass \| FalseClass` | Optional | True if card can be blocked temporarily, else false |
| `unblock_allowed` | `TrueClass \| FalseClass` | Optional | True/False True if card can be Unblocked, else false |
| `permanent_block_allowed` | `TrueClass \| FalseClass` | Optional | True if card can be blocked permanently, else false |
| `issue_number` | `Integer` | Optional | Issue number of the card |
| `reissue_setting` | [`CardDetailsResponseReissueSettingEnum`](../../doc/models/card-details-response-reissue-setting-enum.md) | Optional | Reissue setting of the card. If the card is superseded (i.e. a replacement/new card is issued) then reissue setting of the latest card issued. Reissue setting:<br><br>* `True` - Card will be Reissued when nearing its expiry date<br>* `False` - Card will not be Reissued |
| `international_pos_language_id` | [`CardDetailsResponseInternationalPOSLanguageIDEnum`](../../doc/models/card-details-response-international-pos-language-id-enum.md) | Optional | POS language identifier. Language Id:<br><br>* `1` - German<br>* `2` - French<br>* `3` - Bulgarian<br>* `4` - Croatian<br>* `5` - Czech<br>* `6` - Danish<br>* `7` - Finnish<br>* `8` - English<br>* `9` - Greek<br>* `10` - Chinese<br>* `11` - Hungarian<br>* `12` - Italian<br>* `13` - Luxembourgish<br>* `14` - Malay<br>* `15` - Dutch<br>* `16` - Norwegian, Bokmal<br>* `17` - Urdu<br>* `18` - Polish<br>* `19` - Portuguese<br>* `20` - Romanian<br>* `21` - Russian<br>* `22` - Slovak<br>* `23` - Slovenian<br>* `24` - Spanish<br>* `25` - Swedish<br>* `26` - Turkish<br>* `27` - Thai<br>* `28` - Filipino<br>* `29` - Estonian<br>* `30` - Latvian<br>* `31` - Lithuanian |
| `international_pos_language_code` | [`CardDetailsResponseInternationalPOSLanguageCodeEnum`](../../doc/models/card-details-response-international-pos-language-code-enum.md) | Optional | POS language code. Language code:<br><br>* `deu` - German<br>* `fra` - French<br>* `bul` - Bulgarian<br>* `hrv` - Croatian<br>* `ces` - Czech<br>* `dan` - Danish<br>* `fin` - Finnish<br>* `eng` - English<br>* `ell` - Greek<br>* `zho` - Chinese<br>* `hun` - Hungarian<br>* `ita` - Italian<br>* `ltz` - Luxembourgish<br>* `msa` - Malay<br>* `nld` - Dutch<br>* `nob` - Norwegian, Bokmal<br>* `urd` - Urdu<br>* `pol` - Polish<br>* `por` - Portuguese<br>* `ron` - Romanian<br>* `rus` - Russian<br>* `slk` - Slovak<br>* `slv` - Slovenian<br>* `spa` - Spanish<br>* `swe` - Swedish<br>* `tur` - Turkish<br>* `tha` - Thai<br>* `fil` - Filipino<br>* `est` - Estonian<br>* `lav` - Latvian<br>* `lit` - Lithuanian |
| `local_pos_language_id` | [`CardDetailsResponseLocalPOSLanguageIDEnum`](../../doc/models/card-details-response-local-pos-language-id-enum.md) | Optional | POS language identifier. Language Id:<br><br>* `1` - German<br>* `2` - French<br>* `3` - Bulgarian<br>* `4` - Croatian<br>* `5` - Czech<br>* `6` - Danish<br>* `7` - Finnish<br>* `8` - English<br>* `9` - Greek<br>* `10` - Chinese<br>* `11` - Hungarian<br>* `12` - Italian<br>* `13` - Luxembourgish<br>* `14` - Malay<br>* `15` - Dutch<br>* `16` - Norwegian, Bokmal<br>* `17` - Urdu<br>* `18` - Polish<br>* `19` - Portuguese<br>* `20` - Romanian<br>* `21` - Russian<br>* `22` - Slovak<br>* `23` - Slovenian<br>* `24` - Spanish<br>* `25` - Swedish<br>* `26` - Turkish<br>* `27` - Thai<br>* `28` - Filipino<br>* `29` - Estonian<br>* `30` - Latvian<br>* `31` - Lithuanian |
| `local_pos_language_code` | [`CardDetailsResponseLocalPOSLanguageCodeEnum`](../../doc/models/card-details-response-local-pos-language-code-enum.md) | Optional | POS language code. Language code:<br><br>* `deu` - German<br>* `fra` - French<br>* `bul` - Bulgarian<br>* `hrv` - Croatian<br>* `ces` - Czech<br>* `dan` - Danish<br>* `fin` - Finnish<br>* `eng` - English<br>* `ell` - Greek<br>* `zho` - Chinese<br>* `hun` - Hungarian<br>* `ita` - Italian<br>* `ltz` - Luxembourgish<br>* `msa` - Malay<br>* `nld` - Dutch<br>* `nob` - Norwegian, Bokmal<br>* `urd` - Urdu<br>* `pol` - Polish<br>* `por` - Portuguese<br>* `ron` - Romanian<br>* `rus` - Russian<br>* `slk` - Slovak<br>* `slv` - Slovenian<br>* `spa` - Spanish<br>* `swe` - Swedish<br>* `tur` - Turkish<br>* `tha` - Thai<br>* `fil` - Filipino<br>* `est` - Estonian<br>* `lav` - Latvian<br>* `lit` - Lithuanian |
| `card_type_code` | `String` | Optional | ISO code of the card i.e. first 7 digits of the PAN. |
| `card_type_id` | `Integer` | Optional | Card Type ID |
| `card_type_name` | `String` | Optional | Card Type Name |
| `token_type_id` | `Integer` | Optional | Token Type ID configured for the Card |
| `token_type_name` | `String` | Optional | Token Type Name configured for the Card |
| `is_chip_card` | `TrueClass \| FalseClass` | Optional | True if a chip card, else false |
| `is_mag_strip_card` | `TrueClass \| FalseClass` | Optional | True if it is a magnetic stripe card, else false |
| `is_virtual_card` | `TrueClass \| FalseClass` | Optional | True if it is a virtual card, else false |
| `purchase_category_code` | `String` | Optional | Purchase category code of the card.<br>**Constraints**: *Maximum Length*: `1` |
| `purchase_category_id` | `Integer` | Optional | Purchase category identifier in the Shell Card Platform. |
| `purchase_category_name` | `String` | Optional | Purchase category name |
| `is_crt` | `TrueClass \| FalseClass` | Optional | True if it is a Commercial Road Transport (CRT) card, else false |
| `is_fleet` | `TrueClass \| FalseClass` | Optional | True if it is a Fleet card, else false |
| `is_international` | `TrueClass \| FalseClass` | Optional | True if it is an international card, else false |
| `is_national` | `TrueClass \| FalseClass` | Optional | True if it is a national card, else false |
| `is_partner_sites_included` | `TrueClass \| FalseClass` | Optional | True if it is allowed at all partner sites, else false |
| `is_shell_sites_only` | `TrueClass \| FalseClass` | Optional | True if it is only allowed at Shell sites, else false |
| `fuel_sets` | [`Array<CardDetailsResponseFuelSetsItems>`](../../doc/models/card-details-response-fuel-sets-items.md) | Optional | List of active fuel type product restrictions applied on the card.<br>**Constraints**: *Unique Items Required* |
| `non_fuel_sets` | [`Array<CardDetailsResponseNonFuelSetsItems>`](../../doc/models/card-details-response-non-fuel-sets-items.md) | Optional | List of active non-fuel type product restrictions applied on the card.<br>**Constraints**: *Unique Items Required* |
| `issued_date` | `String` | Optional | Card issue date. |
| `expiry_date` | `String` | Optional | Expiry date of the card. |
| `last_used_date` | `String` | Optional | Card last used date. |
| `misuse_date` | `String` | Optional | Last misused date of the card. |
| `temperature` | `String` | Optional | Hot-list status |
| `driver_name` | `String` | Optional | Driver name of the card. Note- While ordering card, optional when VRN is passed else mandatory.<br>**Constraints**: *Maximum Length*: `27` |
| `vrn` | `String` | Optional | Vehicle registration number of the card. Note- While ordering card, optional when DriverName is passed else mandatory.<br>**Constraints**: *Maximum Length*: `16` |
| `emboss_text` | `String` | Optional | Text printed on the card as account name.<br>**Constraints**: *Maximum Length*: `25` |
| `card_group_id` | `Integer` | Optional | Existing Card Group ID, under which the replacement card is to be created.<br>Pass “-1” if the replacement card should not be assigned to any card group.<br>Optional.<br>If not provided, the replacement card will be created under the same card group as the current card.<br>Example- 156 |
| `card_group_name` | `String` | Optional | Card group name. Note- 1. While ordering card this field is mandatory when IsNewCardGroup is true.<br>**Constraints**: *Maximum Length*: `30` |
| `renewal_date` | `String` | Optional | Renewal date of the card. Applicable if ReissueSetting is set to True. |
| `renewed_card_id` | `Integer` | Optional | Renewed card id. |
| `renewed_card_status_id` | `Integer` | Optional | Renewed card status id. |
| `renewed_card_status` | `String` | Optional | Renewed card status description. |
| `renewed_card_expiry_date` | `String` | Optional | Renewed card expiry date. |
| `renewed_card_issue_number` | `Integer` | Optional | Renewed card issue number. |
| `renewed_card_reissue_setting` | [`CardDetailsResponseRenewedCardReissueSettingEnum`](../../doc/models/card-details-response-renewed-card-reissue-setting-enum.md) | Optional | Reissue setting of the renewed new card. Reissue Setting:<br><br>* `True` - Card will be sent to production<br>* `False` - Parent Card is Dormant or the Card is not to be produced |
| `creation_date` | `String` | Optional | Card Creation Date time |
| `effective_date` | `String` | Optional | Effective date for the Card |
| `last_modified_date` | `String` | Optional | Card last modified date |
| `bundle_id` | `String` | Optional | Bundle Id associated with card in the Gateway. This field will have a null value if the card is not associated with any bundle in Gateway or the value of IncludeBundleDetails in request is false. |
| `card_delivery_address` | [`CardDetailsResponseCardDeliveryAddress`](../../doc/models/card-details-response-card-delivery-address.md) | Optional | Delivery address. |
| `pin_delivery_address` | [`CardDetailsResponsePINDeliveryAddress`](../../doc/models/card-details-response-pin-delivery-address.md) | Optional | Delivery address. |
| `card_block_schedules` | [`Array<CardDetailsResponseCardBlockSchedulesItemsAllOf0>`](../../doc/models/card-details-response-card-block-schedules-items-all-of-0.md) | Optional | **Constraints**: *Unique Items Required* |
| `error` | [`ErrorStatus`](../../doc/models/error-status.md) | Optional | - |
| `request_id` | `String` | Optional | API Request |

## Example (as JSON)

```json
{
  "PayerId": 853,
  "PayerNumber": "PH50000843",
  "AccountId": 854,
  "AccountNumber": "PH50000844",
  "AccountShortName": "PARKLEY",
  "ColCoCountryCode": "PH",
  "LocalCurrencyCode": "EUR",
  "LocalCurrencySymbol": "€",
  "CardId": 125,
  "PAN": "7002861007636000020",
  "OdometerPrompt": true,
  "FleetIdPrompt": true,
  "PINType": "Card",
  "HasPIN": true,
  "IsSelfSelectedPIN": true,
  "TemporaryBlockAllowed": true,
  "UnblockAllowed": true,
  "PermanentBlockAllowed": true,
  "IssueNumber": 1,
  "InternationalPOSLanguageID": 8,
  "InternationalPOSLanguageCode": "eng",
  "LocalPOSLanguageID": 8,
  "LocalPOSLanguageCode": "eng",
  "CardTypeCode": "7077861",
  "CardTypeId": 1,
  "CardTypeName": "Philippines CRT 7077861",
  "TokenTypeId": 107,
  "TokenTypeName": "PH FLE NAT SIN R1",
  "IsChipCard": false,
  "IsMagStripCard": true,
  "IsVirtualCard": true,
  "PurchaseCategoryCode": "6",
  "PurchaseCategoryId": 54,
  "PurchaseCategoryName": "2 - FuelSave and Lubricants",
  "IsCRT": true,
  "IsFleet": true,
  "IsInternational": true,
  "IsNational": true,
  "IsPartnerSitesIncluded": true,
  "IsShellSitesOnly": true,
  "IssuedDate": "20181001",
  "ExpiryDate": "20181031",
  "LastUsedDate": "20181001 13:23:55",
  "MisuseDate": "20181001 13:23:55",
  "Temperature": "10-Warm",
  "DriverName": "ROBERT",
  "VRN": "MV65YLH",
  "EmbossText": "PARKLEY",
  "CardGroupId": 5,
  "CardGroupName": "GROUP1",
  "RenewalDate": "20181001",
  "RenewedCardId": 1325,
  "RenewedCardStatusId": 10,
  "RenewedCardStatus": "New",
  "RenewedCardExpiryDate": "20181031",
  "RenewedCardIssueNumber": 2,
  "CreationDate": "20181001",
  "EffectiveDate": "20181001",
  "LastModifiedDate": "20181001 13:23:55",
  "RequestId": "ed557f02-c7d7-4c01-b3e5-11bf3239c8ed"
}
```

