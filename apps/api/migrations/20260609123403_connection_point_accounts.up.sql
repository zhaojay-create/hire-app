CREATE TABLE connection_point_accounts (
    user_id UUID PRIMARY KEY,

    balance INT NOT NULL DEFAULT 0,

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);