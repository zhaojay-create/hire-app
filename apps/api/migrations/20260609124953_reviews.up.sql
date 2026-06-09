CREATE TABLE reviews (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    task_id         UUID NOT NULL,         -- 关联任务 ID
    from_user_id    UUID NOT NULL,         -- 评价者 ID
    to_user_id      UUID NOT NULL,         -- 被评价者 ID

    direction       VARCHAR(30) NOT NULL,    -- 评价方向：client_to_freelancer, freelancer_to_client
    
    rating          SMALLINT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    content         TEXT,    -- 评价内容
    tags            TEXT[],    -- 评价标签
    is_anonymous    BOOLEAN NOT NULL DEFAULT FALSE, -- 是否匿名评价
    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(), 
    UNIQUE (task_id, direction),    -- 同一个任务只能有一个评价
    UNIQUE (task_id, from_user_id)  -- 同一个任务只能有一个评价
);

CREATE INDEX idx_reviews_task_id ON reviews(task_id);
CREATE INDEX idx_reviews_to_user_id ON reviews(to_user_id);
CREATE INDEX idx_reviews_from_user_id ON reviews(from_user_id);