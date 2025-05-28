CREATE TRIGGER set_updated_at_before_update_tasks
BEFORE UPDATE ON tasks
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();