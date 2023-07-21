import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class DeleteAction {
	static Connection con=DemoCon.Meth();
	   public boolean Deletedetails(String name){
		   boolean status=false;
		   try{
			   Statement s=con.createStatement();
			   ResultSet r=s.executeQuery("Delete from student_data where stuid='"+name+"'");
			   if(r.next()){
				   status=true;
			   }
			   }catch(Exception e){
				   e.printStackTrace();
		   }return status;
	   }
}
