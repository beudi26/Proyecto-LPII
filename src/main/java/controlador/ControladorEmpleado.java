package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClassEmpleadoImp;
import model.TblEmpleado;

/**
 * Servlet implementation class ControladorEmpleado
 */
public class ControladorEmpleado extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorEmpleado() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TblEmpleado empleado =new TblEmpleado();
		ClassEmpleadoImp crud=new ClassEmpleadoImp();
		
		String accion=request.getParameter("accion");
		if(accion!=null){
			switch(accion){
			case "Modificar":
				int codigo=Integer.parseInt(request.getParameter("cod"));
				empleado.setIdempleado(codigo);
				TblEmpleado buscarcod=crud.BuscarEmpleado(empleado);
				request.setAttribute("codigo",buscarcod.getIdempleado());
				request.setAttribute("nombre",buscarcod.getNombre());
				request.setAttribute("apellido",buscarcod.getApellido());
				request.setAttribute("telefono",buscarcod.getTelf());
				request.setAttribute("dni",buscarcod.getDni());
				request.setAttribute("fechaing",buscarcod.getFechaing());
				request.setAttribute("email",buscarcod.getEmail());
				request.setAttribute("sexo",buscarcod.getSexo());
				request.setAttribute("nacionalidad",buscarcod.getNacionalidad());
				request.getRequestDispatcher("/FormActualizarEmpleado.jsp").forward(request, response);
				break;
			case "Eliminar":
				int codeliminar=Integer.parseInt(request.getParameter("cod"));
				empleado.setIdempleado(codeliminar);
				crud.EliminarEmpleado(empleado);
				List<TblEmpleado> listado=crud.ListarEmpleado();
				request.setAttribute("listadoempleados",listado);
				request.getRequestDispatcher("/ListadoEmpleado.jsp").forward(request, response);
				break;
			case "Listar":
				List<TblEmpleado> listadoempleado=crud.ListarEmpleado();
				request.setAttribute("listadoempleados",listadoempleado);
				request.getRequestDispatcher("/ListadoEmpleado.jsp").forward(request, response);
				break;
			 }  //fin del switch...
		}   //fin del if...
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo=request.getParameter("codigo");
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String telefono = request.getParameter("telefono");
		String dni = request.getParameter("dni");
		String fechaing = request.getParameter("fechaing");
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		String nacionalidad = request.getParameter("nacionalidad");
		
		List<TblEmpleado> listadoempleado=null;
		
		TblEmpleado empleado=new TblEmpleado();
		ClassEmpleadoImp crud=new ClassEmpleadoImp();
		
		empleado.setNombre(nombre);
		empleado.setApellido(apellido);
		empleado.setTelf(telefono);
		empleado.setDni(dni);
		empleado.setFechaing(fechaing);
		empleado.setEmail(email);
		empleado.setSexo(sexo);
		empleado.setNacionalidad(nacionalidad);
		if(codigo!=null){
			int cod=Integer.parseInt(codigo);
			empleado.setIdempleado(cod);
			crud.ActualizarEmpleado(empleado);
			listadoempleado=crud.ListarEmpleado();
		}else{	
		crud.RegistrarEmpleado(empleado);
		listadoempleado=crud.ListarEmpleado();
		
		} //fin del else...
		request.setAttribute("listadoempleados",listadoempleado);
		request.getRequestDispatcher("/ListadoEmpleado.jsp").forward(request, response);
	}

}
