CREATE TABLE tasks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    client_id UUID NOT NULL,

    freelancer_id UUID,

    title VARCHAR(256) NOT NULL,

    description TEXT NOT NULL,

    budget_amount NUMERIC(12,2),

    duration_days INT,

    contact_cost INT NOT NULL DEFAULT 5,

    status VARCHAR(50) NOT NULL DEFAULT 'open',

    deadline DATE,

    deleted_at TIMESTAMPTZ NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);