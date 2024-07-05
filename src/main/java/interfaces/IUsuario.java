package interfaces;

import model.TblProducto;
import model.TblUsuario;

public interface IUsuario {

	public void RegistrarProducto(TblProducto producto);
	public void ActualizarProducto(TblProducto producto);
	public void EliminarProducto(TblProducto producto);
	public TblProducto BuscarProducto(TblProducto producto);
	TblUsuario validarUsuario(String usuario, String password);
}
