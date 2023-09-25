package Negocio;
import Entidad.Empleado;
import java.util.ArrayList;
import Datos.BDEmpleado;

public class BDNegocio {
	
	private BDEmpleado ObjE;
	
	public BDNegocio() {
		ObjE = new BDEmpleado();
	}
	
	public ArrayList<Empleado> ListarEmpleado(){
		return ObjE.ListarEmpleado();
	}
	
	public void InsertaEmpleado(Empleado ObjEm) {
		ObjE.InsertaEmpleado(ObjEm);
	}
	
	

}
