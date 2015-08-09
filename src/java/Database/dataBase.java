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
   
    
}
