CREATE TABLE IF NOT EXISTS
	statuses (
		id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
		name TEXT NOT NULL UNIQUE,
		code TEXT NOT NULL UNIQUE,
		description TEXT,
		color TEXT,
		created_at TIMESTAMPTZ NOT NULL DEFAULT now (),
		updated_at TIMESTAMPTZ NOT NULL DEFAULT now ()
	);