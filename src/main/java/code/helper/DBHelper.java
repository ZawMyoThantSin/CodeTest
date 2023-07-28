package code.helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBHelper {
   private final String DRIVER = "com.mysql.cj.jdbc.Driver";
   private final String URL = "jdbc:mysql://localhost:3306/jwd39codetest";
   private final String USERNAME = "root";
   private final String PASSWORD = "zawmyothantsin";
   private static Connection con;
   private static DBHelper instance;
   private DBHelper(){
       try {
           Class.forName(DRIVER);
           con= DriverManager.getConnection(DRIVER,USERNAME,PASSWORD);
       } catch (ClassNotFoundException | SQLException e) {
           e.printStackTrace();
       }
   }
    public static Connection getConnection(){
       return con;

    }
    public static DBHelper getInstance(){
       if(instance==null){
            instance= new DBHelper();
       }
       return instance;
    }

}
