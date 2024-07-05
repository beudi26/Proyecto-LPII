package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import interfaces.ICliente;
import model.TblCliente;

public class ClassClienteImp implements ICliente{

	@Override
	public void RegistrarCliente(TblCliente cliente) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(cliente);
		System.out.println("Cliente registrado correctamente");
		em.getTransaction().commit();
		em.close();
	}//fin del metodo registrar

	@Override
	public void ActualizarCliente(TblCliente cliente) {
		EntityManagerFactory em=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager emanager=em.createEntityManager();
		emanager.getTransaction().begin();
		emanager.merge(cliente);
		System.out.println("Cliente actualizado correctamente");
		emanager.getTransaction().commit();
		emanager.close();
	}//fin del metodo actualizar

	@Override
	public void EliminarCliente(TblCliente cliente) {
		EntityManagerFactory em=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager emanager=em.createEntityManager();
		emanager.getTransaction().begin();
		TblCliente elim=emanager.merge(cliente);
		emanager.remove(elim);
		System.out.println("Cliente eliminado correctamente");
		emanager.getTransaction().commit();
		emanager.close();
	}//fin del metodo eliminar

	@Override
	public TblCliente BuscarCliente(TblCliente cliente) {
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em=fabr.createEntityManager();
		em.getTransaction().begin();
		TblCliente buscliente=em.find(TblCliente.class,cliente.getIdcliente());
		em.getTransaction().commit();
		em.close();
		return buscliente;
	}//fin del metodo buscar

	@Override
	public List<TblCliente> ListarCliente() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		List<TblCliente> listado = em.createQuery("SELECT p FROM TblCliente p",TblCliente.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return listado;
	}//fin del metodo listar

}
