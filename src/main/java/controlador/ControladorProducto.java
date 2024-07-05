package controlador;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClassProductoImp;
import model.TblProducto;

/**
 * Servlet implementation class ControladorProducto
 */
public class ControladorProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TblProducto producto=new TblProducto();
		ClassProductoImp crud=new ClassProductoImp();
		
		String accion=request.getParameter("accion");
		if(accion!=null){
			switch(accion){
			case "Modificar":
				int codigo=Integer.parseInt(request.getParameter("cod"));
				producto.setIdproducto(codigo);
				TblProducto buscarcod=crud.BuscarProducto(producto);
				request.setAttribute("codigo",buscarcod.getIdproducto());
				request.setAttribute("nombre",buscarcod.getNombre());
				request.setAttribute("precioventa",buscarcod.getPrecioventa());
				request.setAttribute("preciocompra",buscarcod.getPreciocompra());
				request.setAttribute("estado",buscarcod.getEstado());
				request.setAttribute("categoria",buscarcod.getCategoria());
				request.setAttribute("dosificacion",buscarcod.getDosificacion());
				request.setAttribute("fechacad",buscarcod.getFechacad());
				request.setAttribute("fabricante",buscarcod.getFabricante());
				request.setAttribute("descripcion",buscarcod.getDescrip());
				request.getRequestDispatcher("/FormActualizarProducto.jsp").forward(request, response);
				break;
			case "Eliminar":
				int codeliminar=Integer.parseInt(request.getParameter("cod"));
				producto.setIdproducto(codeliminar);
				crud.EliminarProducto(producto);
				List<TblProducto> listado=crud.ListarProducto();
				request.setAttribute("listadoproductos",listado);
				request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
				break;
			
			case "Listar":
				List<TblProducto> listadoproducto=crud.ListarProducto();
				request.setAttribute("listadoproductos",listadoproducto);
				request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
				break;
				
			 }  //fin del switch...
			
			
		}   //fin del if...
	}//fin del doGet

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String codigo=request.getParameter("codigo");
		String nombre = request.getParameter("nombre");
		Double precioventa = Double.parseDouble(request.getParameter("precioventa"));
		Double preciocompra = Double.parseDouble(request.getParameter("preciocompra"));
		Boolean estado = Boolean.parseBoolean(request.getParameter("estado"));
		String categoria = request.getParameter("categoria");
		String dosificacion = request.getParameter("dosificacion");
		String fechacad = request.getParameter("fechacad");
		String fabricante = request.getParameter("fabricante");
		String descripcion = request.getParameter("descripcion");
		
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
	}//fin del doPost

}
