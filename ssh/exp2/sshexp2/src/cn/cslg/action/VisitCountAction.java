package cn.cslg.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class VisitCountAction extends ActionSupport {

    private static int counts=0;

    public int getCounts() {
        return counts;
    }

    public void setCounts(int counts) {
        this.counts = counts;
    }

    public VisitCountAction() {
    }

    public VisitCountAction(int counts) {
        this.counts = counts;
    }

    public String execute() throws Exception {
        ActionContext context = ActionContext.getContext();
        if (context.getSession().get(counts) == null) {
            context.put("num", 1);
        } else {

            context.getSession().put("num", ++counts);

                   }
            return "visitcount";
        }

}
