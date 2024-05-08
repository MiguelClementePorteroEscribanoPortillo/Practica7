package tienda;

import java.util.Date;

public class Venta {
	private int id_venta;
	private Date fecha_hora;
	private int id_cliente;
	private int id_empleado;
	private double precio_venta;

	public Venta() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Venta(int id_venta, Date fecha_hora, int id_cliente, int id_empleado, double precio_venta) {
		super();
		this.id_venta = id_venta;
		this.fecha_hora = fecha_hora;
		this.id_cliente = id_cliente;
		this.id_empleado = id_empleado;
		this.precio_venta = precio_venta;
	}

	public int getId_venta() {
		return id_venta;
	}

	public void setId_venta(int id_venta) {
		this.id_venta = id_venta;
	}

	public Date getFecha_hora() {
		return fecha_hora;
	}

	public void setFecha_hora(Date fecha_hora) {
		this.fecha_hora = fecha_hora;
	}

	public int getId_cliente() {
		return id_cliente;
	}

	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}

	public int getId_empleado() {
		return id_empleado;
	}

	public void setId_empleado(int id_empleado) {
		this.id_empleado = id_empleado;
	}

	public double getPrecio_venta() {
		return precio_venta;
	}

	public void setPrecio_venta(double precio_venta) {
		this.precio_venta = precio_venta;
	}

	@Override
	public String toString() {
		return "Venta [id_venta=" + id_venta + ", fecha_hora=" + fecha_hora + ", id_cliente=" + id_cliente
				+ ", id_empleado=" + id_empleado + ", precio_venta=" + precio_venta + "]";
	}

}
