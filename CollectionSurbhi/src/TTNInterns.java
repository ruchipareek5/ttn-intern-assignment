public class TTNInterns {
    private int id;
    private String name;
    public TTNInterns(int id,String name)
    {
        this.id=id;
        this.name=name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getName()
    {
        return this.name;
    }
    public String toString()
    {
        return "id "+id+" name"+name;
    }
}
