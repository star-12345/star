package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.InputStream;

public class fileDownload extends ActionSupport {
    private String path;
    private String getpath;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getGetpath() {
        return getpath;
    }

    public void setGetpath(String getpath) {
        this.getpath = getpath;
    }

    public InputStream getInputStream() throws Exception{
        return  ServletActionContext.getServletContext().getResourceAsStream(path);
    }
    public String execute()throws Exception{
        return SUCCESS;
    }
}
