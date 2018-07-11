import java.util.PriorityQueue;

public class Interns {

    private String name;
    private int id;
    private int score;

    public Interns(String name, int id, int score) {
        this.name = name;
        this.id = id;
        this.score = score;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }

    public Interns() {
    }

    @Override
    public boolean equals(Object obj) {
        if(obj instanceof Interns )
        {
            if(this.getName()==((Interns) obj).name)
                return true;
        }
        else
            return false;
        return this.getId()==((Interns) obj).getId();
    }
}
