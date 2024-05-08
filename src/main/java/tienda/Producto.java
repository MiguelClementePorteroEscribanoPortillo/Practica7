package tienda;

public class Producto {
	private int id_producto;
	private String descripcion;
	private double precio;
	private String marca;

	public Producto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Producto(int id_producto, String descripcion, double precio, String marca) {
		super();
		this.id_producto = id_producto;
		this.descripcion = descripcion;
		this.precio = precio;
		this.marca = marca;
	}

	public int getId_producto() {
		return id_producto;
	}

	public void setId_producto(int id_producto) {
		this.id_producto = id_producto;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	

	
	@Override
	public String toString() {
		return "Producto [id_producto=" + id_producto + ", descripcion=" + descripcion + ", precio=" + precio
				+ ", marca=" + marca + "]";
	}

}
