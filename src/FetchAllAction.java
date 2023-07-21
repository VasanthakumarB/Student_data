import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import p2.UpdateBean;


public class FetchAllAction {
	Connection con=DemoCon.Meth();
	public List<UpdateBean> FetchData(){
		ResultSet rs=null;
		List<UpdateBean> list=new ArrayList<UpdateBean>();
		try{
			Statement s=con.createStatement();
			rs=s.executeQuery("select * from student_data");
			while(rs.next()){
				UpdateBean a=new UpdateBean();
				a.setName(rs.getString("name"));
				a.setAge(rs.getString("age"));
				a.setEmail(rs.getString("email"));
				a.setPhoneno(rs.getString("phoneno"));
				Date date=rs.getDate("doj");
	            SimpleDateFormat simpleDateFormat=new SimpleDateFormat("dd/MMM/yyyy");
	            String date1=simpleDateFormat.format(date);
	            a.setDate(date1);
				a.setStuid(rs.getInt("stuid"));
				list.add(a);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return list;
	}

}
