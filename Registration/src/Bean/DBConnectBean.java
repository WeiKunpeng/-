package Bean;
import java.sql.*;
public class DBConnectBean {   //�����ݿ��������
	Connection Connect=null;
	public Connection getConnect()
	{
		try
		{	
			String url="jdbc:postgresql://127.0.0.1:5439/postgres";
			String user="postgres";
			String password = "";
			Class.forName("org.postgresql.Driver");
			Connect = DriverManager.getConnection(url,user,password);
			System.out.println("���ݿ����ӳɹ�!");
		} catch (ClassNotFoundException e) {
			System.out.println("���ݿ�����ʧ�ܣ�");
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("���ݿ�����ʧ�ܣ�");
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return Connect;
	}

}
