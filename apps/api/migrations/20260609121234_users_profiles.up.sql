CREATE TABLE user_profiles (
    user_id UUID PRIMARY KEY,

    display_name VARCHAR(64) NOT NULL DEFAULT '',
    avatar_url TEXT,
    bio TEXT,
    portfolio_urls TEXT[],

    location VARCHAR(128),

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);