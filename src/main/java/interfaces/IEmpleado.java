package interfaces;

import java.util.List;

import model.TblEmpleado;

public interface IEmpleado {

	public void RegistrarEmpleado(TblEmpleado empleado);
	public void ActualizarEmpleado(TblEmpleado empleado);
	public void EliminarEmpleado(TblEmpleado empleado);
	public TblEmpleado BuscarEmpleado(TblEmpleado empleado);
	public List<TblEmpleado> ListarEmpleado();
}
