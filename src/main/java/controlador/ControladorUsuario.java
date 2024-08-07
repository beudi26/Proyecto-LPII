package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClassUsuarioImp;
import model.TblUsuario;

/**
 * Servlet implementation class ControladorUsuario
 */
@WebServlet("/login")
public class ControladorUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControladorUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
        if ("login".equals(action)) {
            handleLogin(request, response);
        } else if ("register".equals(action)) {
            handleRegister(request, response);
        }
	}//fin del metodo doPost
	
	private void handleRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		
		TblUsuario usuarios = new TblUsuario();
		ClassUsuarioImp crud = new ClassUsuarioImp();
		
		usuarios.setUsuario(usuario);
		usuarios.setPassword(password);
		crud.RegistrarUsuario(usuarios);
		
		request.getRequestDispatcher("/FormLogin.jsp").forward(request, response);
		
	}

	protected void handleLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClassUsuarioImp crud = new ClassUsuarioImp();
		
		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");
		
		TblUsuario user = crud.validarUsuario(usuario, password);
		if(user !=null){
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			request.setAttribute("error", "Usuario o contraseņa incorrectos");
            request.getRequestDispatcher("FormLogin.jsp").forward(request, response);
		}
	}

}
