import java.sql.*;


public class DemoCon {
	public static Connection  Meth(){
		Connection con=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}
	try{
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","login","login");
}catch(Exception e){
	e.printStackTrace();
}return con;
} 
}
