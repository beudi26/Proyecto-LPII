package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import interfaces.IProducto;
import model.TblProducto;

public class ClassProductoImp implements IProducto{

	@Override
	public void RegistrarProducto(TblProducto producto) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(producto);
		System.out.println("Producto registrado correctamente");
		em.getTransaction().commit();
		em.close();
	}//fin del metodo registrar

	@Override
	public void ActualizarProducto(TblProducto producto) {
		EntityManagerFactory em=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager emanager=em.createEntityManager();
		emanager.getTransaction().begin();
		emanager.merge(producto);
		System.out.println("Producto actualizado correctamente");
		emanager.getTransaction().commit();
		emanager.close();
	}//fin del metodo actualizar

	@Override
	public void EliminarProducto(TblProducto producto) {
		EntityManagerFactory em=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager emanager=em.createEntityManager();
		emanager.getTransaction().begin();
		TblProducto elim=emanager.merge(producto);
		emanager.remove(elim);
		System.out.println("Producto eliminado correctamente");
		emanager.getTransaction().commit();
		emanager.close();
	}//fin del metodo eliminar

	@Override
	public TblProducto BuscarProducto(TblProducto producto) {
		EntityManagerFactory fabr=Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em=fabr.createEntityManager();
		em.getTransaction().begin();
		TblProducto busproducto=em.find(TblProducto.class,producto.getIdproducto());
		em.getTransaction().commit();
		em.close();
		return busproducto;
	}//fin del metodo buscar

	@Override
	public List<TblProducto> ListarProducto() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		List<TblProducto> listado = em.createQuery("SELECT p FROM TblProducto p",TblProducto.class).getResultList();
		em.getTransaction().commit();
		em.close();
		return listado;
	}//fin del metodo listar

}
