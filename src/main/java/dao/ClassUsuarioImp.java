package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import interfaces.IUsuario;
import model.TblUsuario;

public class ClassUsuarioImp implements IUsuario{

	@Override
	public void RegistrarUsuario(TblUsuario usuario) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		em.getTransaction().begin();
		em.persist(usuario);
		System.out.println("Usuario registrado correctamente");
		em.getTransaction().commit();
		em.close();
	}//fin del metodo registrar

	@Override
	public TblUsuario validarUsuario(String usuario, String password) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProyectoldpcibertecJPA");
		EntityManager em = emf.createEntityManager();
		try{
			TypedQuery<TblUsuario> query = em.createQuery(
					"SELECT u FROM TblUsuario u WHERE u.usuario = :usuario AND u.password = :password",TblUsuario.class);
			query.setParameter("usuario", usuario);
			query.setParameter("password", password);
			
			return query.getSingleResult();
		}//fin del try
		catch(NoResultException e){
			return null;
		}//fin del catch
		finally{
			em.close();
		}//fin del finally
	}//fin del metodo validar

}
