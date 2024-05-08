package tienda;

public class L_venta {
	private int id_Lventa;
	private int id_venta;
	private int id_producto;
	private int Unidades;
	private double precio_unidad;

	public L_venta() {
		super();
		// TODO Auto-generated constructor stub
	}

	public L_venta(int id_Lventa, int id_venta, int id_producto, int unidades, double precio_unidad) {
		super();
		this.id_Lventa = id_Lventa;
		this.id_venta = id_venta;
		this.id_producto = id_producto;
		Unidades = unidades;
		this.precio_unidad = precio_unidad;
	}

	public int getId_Lventa() {
		return id_Lventa;
	}

	public void setId_Lventa(int id_Lventa) {
		this.id_Lventa = id_Lventa;
	}

	public int getId_venta() {
		return id_venta;
	}

	public void setId_venta(int id_venta) {
		this.id_venta = id_venta;
	}

	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public int getUnidades() {
		return Unidades;
	}

	public void setUnidades(int unidades) {
		Unidades = unidades;
	}

	public double getPrecio_unidad() {
		return precio_unidad;
	}

	public void setPrecio_unidad(double precio_unidad) {
		this.precio_unidad = precio_unidad;
	}

	@Override
	public String toString() {
		return "L_venta [id_Lventa=" + id_Lventa + ", id_venta=" + id_venta + ", id_producto=" + id_producto
				+ ", Unidades=" + Unidades + ", precio_unidad=" + precio_unidad + "]";
	}

}
