package cn.cslg.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public class UploadAction extends ActionSupport {
    private String title;//文件标题
    private File upload;//上传文件对象
    private String uploadFileName;//上传文件名
    private String savePath;//获取在struts.xml文件中的文件保存路径
    public String getTitle() {
        return this.title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public File getUpload() {
        return this.upload;
    }
    public void setUpload(File upload) {
        this.upload = upload;
    }
    public String getUploadFileName() {
        return this.uploadFileName;
    }
    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }
    public String getSavePath() throws Exception {
        return ServletActionContext.getServletContext().getRealPath(savePath);
    }
    public void setSavePath(String value) {
        this.savePath = value;
    }

    public String execute() throws Exception{
        FileOutputStream fos=new FileOutputStream(getSavePath()+"\\"+getUploadFileName());
        FileInputStream fis=new FileInputStream(getUpload());
        byte[] buffer=new byte[1024];
        int len=0;
        while((len=fis.read(buffer))>0){
            fos.write(buffer,0,len);
        }
        fos.close();
        return SUCCESS;

    }
}
