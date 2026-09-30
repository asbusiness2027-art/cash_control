# Permanent Rules for Cash Control

## Project Overview
- **App**: "Cash Control", an Arabic-first (RTL) Flutter app for a shop's shift closure and cash control (NOT a POS).
- **Users**: Two primary user types (accountant + owner) syncing in real time.

## Tech Stack
- Flutter stable
- `flutter_riverpod`
- `go_router`
- `supabase_flutter`
- `intl` (ar-EG)
- (*Note*: Drift and `firebase_messaging` will come in future tasks).

## Directory Structure
`lib/features/{auth,shift,vendors,expenses,reports,settings}/{data,domain,presentation}`

## Financial & Money Handling Rules
- **Money Representation**: Money values MUST be stored and computed as `int` (piasters / قرش) ONLY.
- **Never use `double`** for monetary values or financial calculations.
- Format monetary amounts into major units (e.g. EGP / جنيه) ONLY for display.
- Every financial action MUST include input validation and a confirmation dialog before execution.

## UI / Localization Rules
- Arabic RTL default (`ar-EG`).
- Material 3 theme supporting Light and Dark modes.

## Environment & Supabase Configuration
- Supabase configuration parameters MUST ONLY be retrieved via `--dart-define` (`SUPABASE_URL`, `SUPABASE_ANON_KEY`).
- **NEVER** hardcode API keys or credentials in code or repository files.
- **NEVER** use `service_role` keys in client-side code.

## Database Schema & Permissions
- Database is pre-deployed on Supabase.
- **Tables**: `profiles`, `employees`, `revenue_sources`, `shifts`, `shift_extra_revenues`, `vendors`, `vendor_transactions`, `cash_outs`, `wallet_movements`, `audit_log`.
- **Views**: `vendor_balances`.
- **Functions**: `is_owner()`, `has_perm(text)`, `set_fcm_token(token text)`.
- **Permission Keys**: `close_shift`, `edit_closed`, `pay_vendor`, `view_reports`, `manage_users`.
- **Schema Modification Constraint**: NEVER alter or change the database schema directly. If a database change is strictly required, append the proposed SQL queries to `docs/sql-requests.md` and stop.

## Development & Task Execution Constraints
- For every task, ensure `flutter analyze` is completely clean (0 errors, 0 warnings, 0 lints) and all tests pass (`flutter test`).
- Keep code changes strictly limited to the scope of the assigned task.
