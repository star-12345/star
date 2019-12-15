package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.http.HttpSession;

public class LoginRegisterAction extends ActionSupport {
    private String username;
    private String password;
    private String age;
    private String sex;

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
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

    public String login(){
        if(getUsername().equals("jxl")&&getPassword().equals("123")){
            //通过request对象获取session对象
            return "success";
        }else{
            return ERROR;
        }
    }

    public String register(){
        return "registsuccess";
    }


}
