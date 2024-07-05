package test;

import java.util.List;

import dao.ClassProductoImp;
import model.TblProducto;

public class TestEntidadProducto {

	public static void main(String[] args) {
		TblProducto producto = new TblProducto();
		ClassProductoImp crud = new ClassProductoImp();
		
		/*
		//Testeamos el metodo registrar
		producto.setNombre("Gaseosa");
		producto.setPrecioventa(3.50);
		producto.setPreciocompra(2.50);
		producto.setEstado((byte)0);
		producto.setCategoria("Bebidas");
		producto.setDosificacion("1L");
		producto.setFechacad("25/07/2025");
		producto.setFabricante("Coca Cola");
		producto.setDescrip("Gaseosa Inca Kola 1L");
		crud.RegistrarProducto(producto);
		*/
		
		//Testeamos el metodo listar
		List<TblProducto> listarProducto = crud.ListarProducto();
		for(TblProducto p:listarProducto){
			System.out.println("Código: "+p.getIdproducto()+"\n"+
								"Nombre: "+p.getNombre()+"\n"+
								"Precio de Venta: "+p.getPrecioventa()+"\n"+
								"Precio de Compra: "+p.getPreciocompra()+"\n"+
								"Estado: "+p.getEstado()+"\n"+
								"Categoria: "+p.getCategoria()+"\n"+
								"Dosificacion: "+p.getDosificacion()+"\n"+
								"Fecha Caducidad: "+p.getFechacad()+"\n"+
								"Fabricante: "+p.getFabricante()+"\n"+
								"Descripción: "+p.getDescrip()+"\n");
		}//fin del bucle for
		
	}

}
