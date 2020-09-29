package picknewbie.ssm.model;

public class UserModel {
    private Integer id;
    private String username;
    private String password;
    private UserRole role;
    private String phone;
    private String schoolId;
    private String department;
    private String dorm;
    private String babysisterName;
    private String babysisterPhone;
    private String avatar;
    private String volunteerId;

    public String getBabysisterName() {
        return babysisterName;
    }

    public void setBabysisterName(String babysisterName) {
        this.babysisterName = babysisterName;
    }

    public String getBabysisterPhone() {
        return babysisterPhone;
    }

    public void setBabysisterPhone(String babysisterPhone) {
        this.babysisterPhone = babysisterPhone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(String schoolId) {
        this.schoolId = schoolId;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDorm() {
        return dorm;
    }

    public void setDorm(String dorm) {
        this.dorm = dorm;
    }


    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getVolunteerId() {
        return volunteerId;
    }

    public void setVolunteerId(String volunteerId) {
        this.volunteerId = volunteerId;
    }
}
