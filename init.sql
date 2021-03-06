CREATE TRIGGER tag_notify_event
AFTER INSERT OR UPDATE OR DELETE ON tag
    FOR EACH ROW EXECUTE PROCEDURE notify_event();

CREATE TRIGGER content_notify_event
AFTER INSERT OR UPDATE OR DELETE ON content 
    FOR EACH ROW EXECUTE PROCEDURE notify_event();

CREATE TRIGGER category_notify_event
AFTER INSERT OR UPDATE OR DELETE ON category 
    FOR EACH ROW EXECUTE PROCEDURE notify_event();

CREATE TRIGGER subcategory_notify_event
AFTER INSERT OR UPDATE OR DELETE ON subcategory 
    FOR EACH ROW EXECUTE PROCEDURE notify_event();

CREATE TRIGGER related_content_notify_event
AFTER INSERT OR UPDATE OR DELETE ON related_content
    FOR EACH ROW EXECUTE PROCEDURE notify_event();