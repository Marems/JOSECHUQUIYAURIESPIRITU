package Datos;
import Entidad.Empleado;
import java.sql.*;
import java.util.ArrayList;

public class BDEmpleado {
	
	private String Driver = "com.mysql.cj.jdbc.Driver";
	private String URL = "jdbc:mysql://localhost:3306/bdempleado";
	private String Usuario = "root";
	private String Password = "mysql";
	
	private Connection Cn;         
	private Statement Cmd;          
	private CallableStatement Stmt; 
	private ResultSet Rs; 
	
	public BDEmpleado() {
		try {
			Class.forName(Driver);
			Cn = DriverManager.getConnection(URL, Usuario, Password); 
		} catch (Exception e) {
			System.out.println("*** ERROR:" + e.getMessage());
		}	
		
	}
	
	// ---------------------------------------------------------
	public ArrayList<Empleado> ListarEmpleado(){
		ArrayList<Empleado> ListaEmpleado = null;
		String SQL = "SELECT * FROM empleado";
		try {
			Cmd = Cn.createStatement();
			Rs = Cmd.executeQuery(SQL);
			ListaEmpleado = new ArrayList<>();
			while(Rs.next()) {
				ListaEmpleado.add(new Empleado(Rs.getString("IdEmpleado"), Rs.getString("Apellidos"), Rs.getString("Nombres"), Rs.getInt("Edad"), Rs.getString("Sexo"),Rs.getInt("Salario")));
			}
			Rs.close();
		} catch (Exception e) {
			System.out.println("*** ERROR:" + e.getMessage());
		}
		return ListaEmpleado;
	}
	
	
	// --------------------------------------------------------
	
	public void InsertaEmpleado(Empleado ObjEm) {
		String SQL = "INSERT INTO empleado VALUES (?,?,?,?,?,?)";
		try {
			Stmt = Cn.prepareCall(SQL);
			Stmt.setString(1, ObjEm.getIdEmpleado());
			Stmt.setString(2, ObjEm.getApellidos());
			Stmt.setString(3, ObjEm.getNombres());
			Stmt.setInt(4, ObjEm.getEdad());
			Stmt.setString(5, ObjEm.getSexo()+"");
			Stmt.setDouble(6, ObjEm.getSalario());
			Stmt.executeUpdate();
			
		} catch (Exception e) {
		        System.out.println("*** ERROR:" + e.getMessage());
		}
	 }
	
	

}
