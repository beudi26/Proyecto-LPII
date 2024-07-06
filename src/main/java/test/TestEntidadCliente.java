package test;

import java.util.List;

import dao.ClassClienteImp;
import model.TblCliente;
import model.TblProducto;

public class TestEntidadCliente {

	public static void main(String[] args) {
		TblCliente cliente = new TblCliente();
		ClassClienteImp crud = new ClassClienteImp();
		
		/*
		//Testeamos el metodo registrar
		cliente.setNombre("Daniel");
		cliente.setApellido("Veliz");
		cliente.setTelf("912150858");
		cliente.setDni("76895432");
		cliente.setEmail("danielveliz@gmail.com");
		cliente.setSexo("Masculino");
		crud.RegistrarCliente(cliente);
		 */

		//Testeamos el metodo listar
				List<TblCliente> listarCliente = crud.ListarCliente();
				for(TblCliente p:listarCliente){
					System.out.println("Código		: "+p.getIdcliente()+"\n"+
										"Nombre		: "+p.getNombre()+"\n"+
										"Apellido	: "+p.getApellido()+"\n"+
										"Telefono	: "+p.getTelf()+"\n"+
										"Dni		: "+p.getDni()+"\n"+
										"Email		: "+p.getEmail()+"\n"+
										"Sexo		: "+p.getSexo()+"\n");
				}//fin del bucle for
		
	}

}
