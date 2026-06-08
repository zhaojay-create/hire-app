
CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    is_client BOOLEAN DEFAULT FALSE,
    
    is_freelancer BOOLEAN DEFAULT FALSE,

    phone VARCHAR(20) UNIQUE,

    wechat_openid VARCHAR(128) UNIQUE,

    verification_status VARCHAR(50) NOT NULL DEFAULT 'unverified',

    deleted_at TIMESTAMPTZ NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);