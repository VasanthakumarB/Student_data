import java.sql.*;

import p2.Addstubean;


public class AddStudentAction {
	static Connection con=DemoCon.Meth();
	public boolean Studetails(Addstubean b){
		boolean status=false;
		String name=b.getName();
		String age=b.getAge();
		String email=b.getEmail();
		String phoneno=b.getPhoneno();
		String doj=b.getDate();
		try{
			Statement st=con.createStatement();
			ResultSet r=st.executeQuery("select name email from student_data where name='"+name+"' and email='"+email+"'");
			if(r.next()){
				status=false;
			}else{
				int i=st.executeUpdate("insert into student_data values('"+name+"',"+age+",'"+email+"',"+phoneno+",to_date('"+doj+"','dd-mon-yyyy'),sequence_1.nextval)");
				if(i>0){
					status=true;
				}
			}
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return status;
	}
}

