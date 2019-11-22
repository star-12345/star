package cn.cslg.model;

public class EmployeeBean {
    private int id;
    private String name;
    private int age;
    private String education;
    private String address;
    private float salary;

    public EmployeeBean(int id, String name, int age, String education, String address, float salary) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.education = education;
        this.address = address;
        this.salary = salary;
    }

    public EmployeeBean() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "EmployeeBean{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", age=" + age +
                ", education='" + education + '\'' +
                ", address='" + address + '\'' +
                ", salary=" + salary +
                '}';
    }
}
