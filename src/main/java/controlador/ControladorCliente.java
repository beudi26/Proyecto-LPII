package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClassClienteImp;
import dao.ClassProductoImp;
import model.TblCliente;
import model.TblProducto;

/**
 * Servlet implementation class ControladorCliente
 */
public class ControladorCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TblCliente cliente =new TblCliente();
		ClassClienteImp crud=new ClassClienteImp();
		
		String accion=request.getParameter("accion");
		if(accion!=null){
			switch(accion){
			case "Modificar":
				int codigo=Integer.parseInt(request.getParameter("cod"));
				cliente.setIdcliente(codigo);
				TblCliente buscarcod=crud.BuscarCliente(cliente);
				request.setAttribute("codigo",buscarcod.getIdcliente());
				request.setAttribute("nombre",buscarcod.getNombre());
				request.setAttribute("apellido",buscarcod.getApellido());
				request.setAttribute("telefono",buscarcod.getTelf());
				request.setAttribute("dni",buscarcod.getDni());
				request.setAttribute("email",buscarcod.getEmail());
				request.setAttribute("sexo",buscarcod.getSexo());
				request.getRequestDispatcher("/FormActualizarCliente.jsp").forward(request, response);
				break;
			case "Eliminar":
				int codeliminar=Integer.parseInt(request.getParameter("cod"));
				cliente.setIdcliente(codeliminar);
				crud.EliminarCliente(cliente);
				List<TblCliente> listado=crud.ListarCliente();
				request.setAttribute("listadoclientes",listado);
				request.getRequestDispatcher("/ListadoCliente.jsp").forward(request, response);
				break;
			case "Listar":
				List<TblCliente> listadocliente=crud.ListarCliente();
				request.setAttribute("listadoclientes",listadocliente);
				request.getRequestDispatcher("/ListadoCliente.jsp").forward(request, response);
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
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		
		List<TblProducto> listadoproducto=null;
		
		TblProducto producto=new TblProducto();
		ClassProductoImp crud=new ClassProductoImp();
		
		producto.setNombre(nombre);
		producto.setPrecioventa(precioventa);
		producto.setPreciocompra(preciocompra);
		producto.setEstado(estado);
		producto.setCategoria(categoria);
		producto.setDosificacion(dosificacion);
		producto.setFechacad(fechacad);
		producto.setFabricante(fabricante);
		producto.setDescrip(descripcion);
		if(codigo!=null){
			int cod=Integer.parseInt(codigo);
			producto.setIdproducto(cod);
			crud.ActualizarProducto(producto);
			listadoproducto=crud.ListarProducto();
			
		}else{	
		crud.RegistrarProducto(producto);
		listadoproducto=crud.ListarProducto();
		
		} //fin del else...
		request.setAttribute("listadoproductos",listadoproducto);
		request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
	}

}
