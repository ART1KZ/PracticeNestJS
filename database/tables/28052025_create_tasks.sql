CREATE TABLE IF NOT EXISTS
    tasks (
        id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
        title TEXT NOT NULL,
        user_id INTEGER NOT NULL,
        status_id INTEGER NOT NULL,
        description TEXT,
        FOREIGN KEY (user_id) REFERENCES users (id),
        FOREIGN KEY (status_id) REFERENCES statuses (id),
        created_at TIMESTAMPTZ NOT NULL DEFAULT now (),
        updated_at TIMESTAMPTZ NOT NULL DEFAULT now ()
    );