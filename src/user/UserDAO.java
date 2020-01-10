package user;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 
public class UserDAO {
 
    private Connection conn;   //데이터베이스에 접근하기 위한 객체
    private PreparedStatement pstmt;  
    private ResultSet rs;   //정보를 담을 수 있는 변수를 생성
    
    public UserDAO() {
        try {
            //생성자
            String dbURL="jdbc:mysql://db4free.net:3306/perate?serverTimezone=UTC";                             
            String dbID="peration";
            String dbPassword="peration0422";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn=DriverManager.getConnection(dbURL,dbID,dbPassword);
        }
        catch(Exception e) {
        	e.printStackTrace();
        }
    }
    public int join(User user) {
        String SQL= "INSERT INTO USER VALUES(?, ?, ?, ?, ?) ";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1,user.getUserID());
            pstmt.setString(2,user.getUserPassword());
            pstmt.setString(3,user.getUserName());
            pstmt.setString(4,user.getUserGender());
            pstmt.setString(5,user.getUserEmail());
            return pstmt.executeUpdate();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return -1;
    }
    
}