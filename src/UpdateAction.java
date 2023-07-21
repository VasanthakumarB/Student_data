
import java.sql.*;

import p2.Addstubean;
import p2.UpdateBean;



public class UpdateAction {
	  Connection con=DemoCon.Meth();
	public boolean UpdateDetails(Addstubean b){
		boolean status=false;
		String name=b.getName();
		String age=b.getAge();
		String email=b.getEmail();
		String phoneno=b.getPhoneno();
		String Date=b.getDate();
		int stuid=b.getStuid();
		try{
			Statement s=con.createStatement();
			ResultSet r=s.executeQuery("Update student_data set name='"+name+"',age='"+age+"',email='"+email+"',phoneno='"+phoneno+"',doj='"+Date+"' where stuid="+stuid+"");
			if(r.next()){
				status=true;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return status;
		
	}

}
