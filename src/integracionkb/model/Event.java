package integracionkb.model;

public class Event {
    private final String subject;
    private final String relation;
    private final String object;

    public Event(String subject, String relation, String object) {
        this.subject = subject;
        this.relation = relation;
        this.object = object;
    }

    public String getSubject() { return subject; }
    public String getRelation() { return relation; }
    public String getObject() { return object; }

    public String getKey() {
        return subject + "|" + relation + "|" + object;
    }

    public String toPrologString() {
        return "event('" + subject + "'," + relation + ",'" + object + "')";
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Event event = (Event) o;
        return subject.equals(event.subject) && relation.equals(event.relation) && object.equals(event.object);
    }

    @Override
    public int hashCode() {
        return subject.hashCode() * 31 + relation.hashCode() * 31 + object.hashCode();
    }
}