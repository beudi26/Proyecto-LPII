package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import interfaces.IEmpleado;
import model.TblEmpleado;

public class ClassEmpleadoImp implements IEmpleado{

	@Override
	public void RegistrarEmpleado(TblEmpleado empleado) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(empleado);
		System.out.println("Empleado registrado correctamente");
		em.getTransaction().commit();
		em.close();
	}//fin del metodo registrar

	@Override
	public void ActualizarEmpleado(TblEmpleado empleado) {
		EntityManagerFactory em=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager emanager=em.createEntityManager();
		emanager.getTransaction().begin();
		emanager.merge(empleado);
		System.out.println("Empleado actualizado correctamente");
		emanager.getTransaction().commit();
		emanager.close();
	}//fin del metodo actualizar

	@Override
	public void EliminarEmpleado(TblEmpleado empleado) {
		EntityManagerFactory em=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager emanager=em.createEntityManager();
		emanager.getTransaction().begin();
		TblEmpleado elim=emanager.merge(empleado);
		emanager.remove(elim);
		System.out.println("Empleado eliminado correctamente");
		emanager.getTransaction().commit();
		emanager.close();
	}//fin del metodo eliminar

	@Override
	public TblEmpleado BuscarEmpleado(TblEmpleado empleado) {
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em=fabr.createEntityManager();
		em.getTransaction().begin();
		TblEmpleado busempleado=em.find(TblEmpleado.class,empleado.getIdempleado());
		em.getTransaction().commit();
		em.close();
		return busempleado;
	}//fin del metodo buscar

	@Override
	public List<TblEmpleado> ListarEmpleado() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		List<TblEmpleado> listado = em.createQuery("SELECT p FROM TblEmpleado p",TblEmpleado.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return listado;
	}//fin del metodo listar

}
