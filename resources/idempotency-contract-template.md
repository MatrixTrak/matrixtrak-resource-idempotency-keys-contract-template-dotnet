# Idempotency key contract template

## Header

Idempotency-Key: <uuid>

## Required rules

- Client generates a unique key per logical operation.
- Server rejects requests without a key for side effect endpoints.
- Server stores the key and response before returning success.
- Repeated keys return the stored response.
- Conflicts return 409 when the key is reused with a different request body.

## Suggested TTL

- 24 hours to cover retries and delayed responses.

## Scope

- Scope keys by client or account to prevent cross tenant collisions.
