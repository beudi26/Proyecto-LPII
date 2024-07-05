package model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the tbl_producto database table.
 * 
 */
@Entity
@Table(name="tbl_producto")
@NamedQuery(name="TblProducto.findAll", query="SELECT t FROM TblProducto t")
public class TblProducto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int idproducto;

	private String categoria;

	private String descrip;

	private String dosificacion;

	private byte estado;

	private String fabricante;

	@Temporal(TemporalType.DATE)
	private Date fechacad;

	private String nombre;

	private double preciocompra;

	private double precioventa;

	public TblProducto() {
	}

	public int getIdproducto() {
		return this.idproducto;
	}

	public void setIdproducto(int idproducto) {
		this.idproducto = idproducto;
	}

	public String getCategoria() {
		return this.categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getDescrip() {
		return this.descrip;
	}

	public void setDescrip(String descrip) {
		this.descrip = descrip;
	}

	public String getDosificacion() {
		return this.dosificacion;
	}

	public void setDosificacion(String dosificacion) {
		this.dosificacion = dosificacion;
	}

	public byte getEstado() {
		return this.estado;
	}

	public void setEstado(byte estado) {
		this.estado = estado;
	}

	public String getFabricante() {
		return this.fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}

	public Date getFechacad() {
		return this.fechacad;
	}

	public void setFechacad(Date fechacad) {
		this.fechacad = fechacad;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public double getPreciocompra() {
		return this.preciocompra;
	}

	public void setPreciocompra(double preciocompra) {
		this.preciocompra = preciocompra;
	}

	public double getPrecioventa() {
		return this.precioventa;
	}

	public void setPrecioventa(double precioventa) {
		this.precioventa = precioventa;
	}

}