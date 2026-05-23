# Idempotency key contract template (.NET)

This kit provides a minimal contract and storage checklist to prevent duplicate side effects.

## Files

- idempotency-contract-template.md
- idempotency-key-strategy.md
- request-cache-schema.sql

## How to use

1. Require Idempotency-Key on side effect endpoints.
2. Store the key, request hash, and response before returning success.
3. Return the stored response on repeat keys.
