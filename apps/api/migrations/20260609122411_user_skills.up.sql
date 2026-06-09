CREATE TABLE user_skills (
    user_id UUID NOT NULL,

    skill_id UUID NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    PRIMARY KEY (user_id, skill_id)
);