CREATE TABLE task_skills (
    task_id UUID NOT NULL,
    skill_id UUID NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    PRIMARY KEY (task_id, skill_id)
);