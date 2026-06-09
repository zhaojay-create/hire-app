CREATE TABLE connection_point_logs (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    user_id UUID NOT NULL,

    type VARCHAR(50) NOT NULL,

    amount INT NOT NULL,

    balance_after INT NOT NULL,
    
    -- 关联任务 ID
    task_id UUID,

    -- 关联申请 ID
    application_id UUID,

    note TEXT,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);