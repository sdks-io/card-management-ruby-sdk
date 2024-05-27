
# Role

## Structure

`Role`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `role_name` | `String` | Optional | Role Name of the user |
| `is_customer_admin` | `TrueClass \| FalseClass` | Optional | Whether the role is an administrator.<br>**Default**: `true` |
| `is_customer_user` | `TrueClass \| FalseClass` | Optional | Whether the role is a customer user.<br>**Default**: `false` |
| `is_shell_admin` | `TrueClass \| FalseClass` | Optional | True if the role is Shell user, else false.<br>**Default**: `false` |
| `is_service_account` | `TrueClass \| FalseClass` | Optional | True/False.<br>True if the role is Service accounts, else false.<br>**Default**: `false` |
| `is_user_admin` | `TrueClass \| FalseClass` | Optional | True/False.<br>True, if the role allows user administration, else false.<br>**Default**: `true` |

## Example (as JSON)

```json
{
  "RoleName": "FleetManager",
  "IsCustomerAdmin": true,
  "IsCustomerUser": false,
  "IsShellAdmin": false,
  "IsServiceAccount": false,
  "IsUserAdmin": true
}
```

