CREATE TABLE skills (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name VARCHAR(64) NOT NULL UNIQUE,

    category VARCHAR(64),

    sort_order INT NOT NULL DEFAULT 0,

    deleted_at TIMESTAMPTZ NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);