package cn.cslg.action;

import cn.cslg.dao.Userdao;

public class RegisterAction {
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

        if(name.equals("")||password.equals("")||name==null||password==null){
            return "error";
        }
        else if (userdao.register(name,password)){
            return "resuccess";
        }else {
            return "error";
        }

    }


}
