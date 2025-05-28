CREATE TRIGGER set_updated_at_before_update_users
BEFORE UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();