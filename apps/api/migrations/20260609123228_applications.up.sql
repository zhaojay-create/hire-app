CREATE TABLE applications (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    task_id UUID NOT NULL,

    client_id UUID NOT NULL,

    freelancer_id UUID NOT NULL,

    status VARCHAR(50) NOT NULL DEFAULT 'pending',

    message TEXT,

    -- 消耗的邀约点数
    cp_consumed INT NOT NULL DEFAULT 0,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    UNIQUE(task_id, freelancer_id)
);