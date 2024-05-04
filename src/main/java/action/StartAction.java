package action;

import com.opensymphony.xwork2.ActionSupport;

public class StartAction extends ActionSupport {
	 
    private int x;
    private int y;
    private int sum;
     
    /**
     * The action method
     * @return name of view
     */
    public String calculate() {
        sum = x + y;
        System.out.println("1234");
        return SUCCESS;
    }
	

	 
	 public void calculateSumAction() {
		 
	 }
}
