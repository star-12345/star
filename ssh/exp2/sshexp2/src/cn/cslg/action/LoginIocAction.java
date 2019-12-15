package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
//使用IOC方式
public class LoginIocAction extends ActionSupport implements ServletRequestAware {
    private String username;
    private String password;
    private HttpServletRequest request;

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



    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        request = httpServletRequest;
    }

    public String execute() throws Exception{
        if(getUsername().equals("jxl")&&getPassword().equals("123")){
            //通过request对象获取session对象
            HttpSession session = request.getSession();
            //把登录名放入session中
            session.setAttribute("username",this.username);
            return "success";
        }else{
            return ERROR;
        }



    }
}
