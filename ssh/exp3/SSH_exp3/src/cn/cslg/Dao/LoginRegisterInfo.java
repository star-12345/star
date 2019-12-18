package cn.cslg.Dao;

import cn.cslg.PO.UserInfoPO;
import cn.cslg.addHibernateFile.HibernateSessionFactory;
import org.hibernate.Session;
import org.hibernate.Transaction;

import org.hibernate.Query;

import javax.swing.*;
import java.util.List;

public class LoginRegisterInfo {
    private Session session;
    private Transaction transaction;
    private Query query;
    HibernateSessionFactory getSession;
    public LoginRegisterInfo(){
    }
    public String  saveInfo(UserInfoPO info){
        String mess="error";
        getSession=new HibernateSessionFactory();
        session=HibernateSessionFactory.getSession();
        try{
            transaction=session.beginTransaction();
            session.save(info);
            transaction.commit();
            mess="success";
            return mess;
        }catch(Exception e){
            message("RegisterInfo.error:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public List queryInfo(String type, Object value){
        System.out.println(value);
        getSession=new HibernateSessionFactory();
        session=getSession.getSession();
        try{
            String hqlsql="from UserInfoPO as u where u.userName=?";
            query=session.createQuery(hqlsql);
            query.setParameter(0, value);
            List list=query.list();
            transaction=session.beginTransaction();
            transaction.commit();
            return list;
        }catch(Exception e){
            message("LoginRegisterInfo类中有异常:"+e);
            e.printStackTrace();
            return null;
        }
    }
    public void message(String mess){
        int type=JOptionPane.YES_NO_OPTION;
        String title="提示信息";
        JOptionPane.showMessageDialog(null, mess, title, type);
    }
}
