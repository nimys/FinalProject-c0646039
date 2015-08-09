/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.LinkedList;


/**
 *
 * @author c0646039
 */
public class dataBase {
    String url="jdbc:as400:174.79.32.158";
    String userName="IBM70";
    String password="IBM70";
    
    public Connection getConnection(){
        Connection con=null;
        try {
            Class.forName("com.ibm.as400.access.AS400JDBCDriver");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        
        try {
            con=DriverManager.getConnection(url, userName, password);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    } 
    public void insertUser(user u){
   
       try {
           Connection con =getConnection();
           String query="INSERT INTO user(firstname,lastname,email,username,pass) VALUES(?,?,?,?,?)";
           PreparedStatement stmt=con.prepareStatement(query);
           stmt.setString(1, u.getfName());
            stmt.setString(2, u.getlName());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getUserName());
            stmt.setString(5, u.getPass());
            stmt.executeUpdate();
                 
       } catch (Exception e) {
           System.err.println(e);
       }
       
     
   }
     public boolean uLogin(String uname,String pass){
       
       boolean status=false;
       int c=0;
      Connection con=null;
       try {
           con=getConnection();
            String query="SELECT COUNT(*) count FROM user WHERE username=? AND pass=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, uname);
            stmt.setString(2,pass);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                c=rs.getInt("count");
            }
            if(c==1){
                status=true;
            }
       } catch (Exception e) {
           System.out.println(e);
       }
       return status;
       }
     
     public void insertBookDetails(String name,String book,String email,String mobile,String add,String date){
         try {
             Connection con=getConnection();
             PreparedStatement st=con.prepareStatement("INSERT INTO bookpurchase VALUES(?,?,?,?,?,?)");
             st.setString(1, name);
             st.setString(2, book);
             st.setString(3, email);
             st.setString(4, mobile);
             st.setString(5, add);
             st.setString(6, date);
             st.executeUpdate();
         } catch (SQLException e) {
         }
     }
     
     public ResultSet getValues(){
         ResultSet rs=null;
         try {
             Connection con=getConnection();
             PreparedStatement st=con.prepareStatement("select name,bookname,emailid,mobile,address,day(datee)-day(current_timestamp) d from bookpurchase");
             rs=st.executeQuery();
         } catch (Exception e) {
         }
         return rs;
     }
   
    public user getUser(String userName){
        user u=new user();
        try {
            Connection con=getConnection();
            String query="SELECT address,city,password FROM user WHERE username=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, userName);
            ResultSet rs=stmt.executeQuery();
            while(rs.next()){
                String add=rs.getString("address");
                String cit=rs.getString("city");
                String pass=rs.getString("password");
                u.setCity(cit);
                u.setPassword(pass);
                u.setAddress(add);
            }
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return u;
    }
    
    public void updateUserDetails(String userName,String userPassword,String address,String city){
        try {
            Connection con=getConnection();
            String query="UPDATE user SET (address,city,password)=(?,?,?) WHERE username=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, address);
            stmt.setString(2, city);
            stmt.setString(3, userPassword);
            stmt.setString(4, userName);
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error");
        }
    }
    
    public void insertChat(Chat c){
        try {
            Connection con=getConnection();
            String query="INSERT INTO chat_box(sender,receiver,message) VALUES(?,?,?)";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, c.getSend());
            stmt.setString(2, c.getReceive());
            stmt.setString(3, c.getMsg());
            stmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error");
        }
    }
    
    public ArrayList getChatList(String user){
        ArrayList<String> userList=new ArrayList<String>();
        try {
           Connection con=getConnection() ;
           String query="SELECT DISTINCT receiver FROM chat_box WHERE sender=? UNION select sender receiver from chat_box where receiver=?";
           PreparedStatement stmt=con.prepareStatement(query);
           stmt.setString(1, user);
           stmt.setString(2, user);
           ResultSet rs=stmt.executeQuery();
           while(rs.next()){
               userList.add(rs.getString("receiver"));
           }
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return userList;
    }
    
    public ResultSet getParticularConversation(String opponent, String loginUser){
        ResultSet rs = null;
        try {
            Connection con=getConnection();
            String query="SELECT message,day(dateupdated)-day(current date) dateupdated,sender,receiver FROM chat_box WHERE (receiver=? OR receiver=?) AND (sender=? OR sender=?)";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, opponent);
            stmt.setString(2, loginUser);
            stmt.setString(3, opponent);
            stmt.setString(4, loginUser);
            rs=stmt.executeQuery();
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return rs;
    }
    
    public void deleteConversation(String userName, String opponent){
        try {
            Connection con=getConnection();
            String query="DELETE * FROM chat_box WHERE sender IN(?,?) AND receiver IN(?,?) ";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, userName);
            stmt.setString(2, opponent);
            stmt.setString(3, userName);
            stmt.setString(4, opponent);
            stmt.executeUpdate();
        } catch (SQLException e) {
        }
    }
    
    public String getUserNameByEmailId(String emailId){
        String userNameByEmail="";     
        try {
            Connection con=getConnection();
            String query="SELECT username FROM user WHERE emailid=?";
            PreparedStatement stmt=con.prepareStatement(query);
            stmt.setString(1, emailId);
            ResultSet rs=stmt.executeQuery();
            user u=new user();
            while(rs.next()){                
                userNameByEmail=rs.getString("username");                
            }
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return userNameByEmail;
    }
     
}
