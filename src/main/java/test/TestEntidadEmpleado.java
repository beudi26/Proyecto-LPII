package test;

import java.util.List;

import dao.ClassEmpleadoImp;
import model.TblCliente;
import model.TblEmpleado;

public class TestEntidadEmpleado {

	public static void main(String[] args) {
		TblEmpleado empleado = new TblEmpleado();
		ClassEmpleadoImp crud = new ClassEmpleadoImp();
		
		/*
		//Testeamos el metodo registrar
		empleado.setNombre("Jose Alejandro");
		empleado.setApellido("Garcia Lopez");
		empleado.setTelf("987590858");
		empleado.setDni("76985642");
		empleado.setFechaing("15/02/2010");
		empleado.setEmail("joselopez@gmail.com");
		empleado.setSexo("Masculino");
		empleado.setNacionalidad("Colombiana");
		crud.RegistrarEmpleado(empleado);
		*/
		
		//Testeamos el metodo listar
		List<TblEmpleado> listarEmpleado = crud.ListarEmpleado();
		for(TblEmpleado p:listarEmpleado){
			System.out.println("Código			: "+p.getIdempleado()+"\n"+
								"Nombre			: "+p.getNombre()+"\n"+
								"Apellido		: "+p.getApellido()+"\n"+
								"Telefono		: "+p.getTelf()+"\n"+
								"Dni			: "+p.getDni()+"\n"+
								"Fecha Ingreso		: "+p.getFechaing()+"\n"+
								"Email			: "+p.getEmail()+"\n"+
								"Sexo			: "+p.getSexo()+"\n"+
								"Nacionalidad		: "+p.getNacionalidad()+"\n");
		}//fin del bucle for
		
	}

}
