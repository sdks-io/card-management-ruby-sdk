
# Auto Renew Card Response Data Items

## Structure

`AutoRenewCardResponseDataItems`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `auto_renew_reference_id` | `Integer` | Optional | CardId and PAN of the card. ;( Semicolon is used as delimiter. |
| `card_id_and_pan` | `String` | Optional | Reference number for each individual auto renew card in the order. |
| `panid` | `Float` | Optional | PANID of the card |

## Example (as JSON)

```json
{
  "AutoRenewReferenceId": 84,
  "CardIdAndPAN": "CardIdAndPAN6",
  "PANID": 48.46
}
```

