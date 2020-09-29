package picknewbie.ssm.model;

import java.util.ArrayList;

public class NewbieListModel {
    private String volunteerId;
    private ArrayList<UserModel> newbieList;

    public ArrayList<UserModel> getNewbieList() {
        return newbieList;
    }

    public void setNewbieList(ArrayList<UserModel> newbieList) {
        this.newbieList = newbieList;
    }

    public String getVolunteerId() {
        return volunteerId;
    }

    public void setVolunteerId(String volunteerId) {
        this.volunteerId = volunteerId;
    }
}
