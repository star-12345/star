package cn.cslg.action;

import cn.cslg.bean.User;
import cn.cslg.dao.Userdao;

public class UserAction {

    private String name;
    private String password;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String execute() throws Exception{
        Userdao userdao = new Userdao();
        if (userdao.login(name,password)!=null){
            return "success";
        }else {
            return "error";
        }

    }
}
