package test;

import java.sql.*;
 
public class test_1{
	
    public static void main(String args[]){
        Connection con = null;
 
        try{
            Class.forName("org.mariadb.jdbc.Driver");
            con=DriverManager.getConnection(
                    "jdbc:mariadb://127.0.0.1:3306/human\",\"root\",\"0000\");
                    
            System.out.println("Success");
        }
        catch(SQLException ex){ 
            System.out.println("SQLException" + ex);
            ex.printStackTrace();
        }
        catch(Exception ex){ 
            System.out.println("Exception:" + ex);
            ex.printStackTrace();
        }
    }
}