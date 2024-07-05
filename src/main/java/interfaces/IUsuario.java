package interfaces;

import model.TblUsuario;

public interface IUsuario {

	public void RegistrarUsuario(TblUsuario usuario);
	public TblUsuario BuscarUsuario(TblUsuario usuario);
	TblUsuario validarUsuario(String usuario, String password);
}
