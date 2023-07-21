import java.sql.*;

public class FetchstuAction {
   static Connection con=DemoCon.Meth();
   public ResultSet Fetchdetails(String name){
	   ResultSet rs=null;
	   try{
		   Statement s=con.createStatement();
		   rs=s.executeQuery("select * from student_data where name='"+name+"'");
	   }catch(Exception e){
			   e.printStackTrace();
	   }return rs;
   }
	   
   }
   
