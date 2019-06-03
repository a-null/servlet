package DB;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

public class DB {
	Connection ct=null;
    PreparedStatement pestmt=null;
    public DB(){
    	try{
    		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");////////
    		ct=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=APerson", "sa", "123456");
    		
    	}catch(Exception e){
    		e.printStackTrace();
    	}
    }
    public User checkUser(String username,String password) throws SQLException{
    	try{
    		pestmt=ct.prepareStatement("select * from [User] where username=? and password=?");
    		pestmt.setString(1, username);///////////
    		pestmt.setString(2, password);
    		ResultSet rs=pestmt.executeQuery();///////////////////////////////////////
    		User user=new User();
    		while(rs.next()){
    			user.setUsername(rs.getString(1));////////////第一个属性
    			user.setPassword(rs.getString(2));/////////第二个属性
    			return user;	///////////查到就返回对象
    		}
            return null;
    	}catch(Exception e){
     		e.printStackTrace();
    		return null;
    	}finally{
    		ct.close();
    		pestmt.close();
    	}
    	
    }
    public boolean  addUser(User us) throws SQLException{
    	try{
    	pestmt=ct.prepareStatement("insert into [User] values(?,?)");
    	pestmt.setString(1, us.getUsername());
    	pestmt.setString(2, us.getPassword());
    	pestmt.executeUpdate();
    	return true;
    	}catch(Exception e){
     		e.printStackTrace();
    		return false;
    	}finally{
    		ct.close();
    		pestmt.close();
    	}
    	
    }
    public boolean confirmrigister(String username) throws SQLException{
    	try{
    		pestmt=ct.prepareStatement("select * from [User] where username='"+username+"'");
    		ResultSet rs=pestmt.executeQuery();
    		
    		while(rs.next()){
    			rs.close();
    			ct.close();
    			return true;	///////////查到就返回对象
    		}
            return false;
    	}catch(Exception e){
     		e.printStackTrace();
    		return false;
    	}finally{
    		ct.close();
    		pestmt.close();
    	}
    }
    
}
