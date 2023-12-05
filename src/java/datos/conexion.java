package datos;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class conexion {
    Connection cnx = null;
    
    public Connection conectar(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/chemeia?autoReconnect=true&useSSL=false", "root", "1234");
        }
        catch(ClassNotFoundException | SQLException error){
            out.print(error.toString());
        }
        return cnx;
    }
}
