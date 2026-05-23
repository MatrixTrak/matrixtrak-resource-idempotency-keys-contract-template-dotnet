CREATE TABLE idempotency_keys (
  id BIGINT IDENTITY PRIMARY KEY,
  client_id NVARCHAR(100) NOT NULL,
  idempotency_key NVARCHAR(100) NOT NULL,
  request_hash NVARCHAR(128) NOT NULL,
  response_status INT NOT NULL,
  response_body NVARCHAR(MAX) NULL,
  created_at DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
  expires_at DATETIME2 NOT NULL
);

CREATE UNIQUE INDEX IX_idempotency_keys_client_key
  ON idempotency_keys (client_id, idempotency_key);
