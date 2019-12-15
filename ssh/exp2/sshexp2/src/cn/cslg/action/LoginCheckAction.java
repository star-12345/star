package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginCheckAction extends ActionSupport {
    private String username;
    private String userPassword;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String execute() throws Exception{
        ActionContext actionContext = ActionContext.getContext();
        if(getUsername().equals("JXL")&&getUserPassword().equals("123")){
            actionContext.getSession().put("username", getUsername());
            actionContext.getSession().put("userPassword", getUserPassword());
            //this.tip=getText("login.success",new String[]{this.username});
            return SUCCESS;
        }else{
            return ERROR;
        }
    }

}
