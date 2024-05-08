package tienda;

public class Cliente {
	private int id_cliente;
	private String Dni;
	private String Nombre;
	private String Apellidos;
	private String Dirección;
	private String CP;
	private String Provincia;

	public Cliente() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cliente(int id_cliente, String dni, String nombre, String apellidos, String dirección, String cP,
			String provincia) {
		super();
		this.id_cliente = id_cliente;
		Dni = dni;
		Nombre = nombre;
		Apellidos = apellidos;
		Dirección = dirección;
		CP = cP;
		Provincia = provincia;
	}

	public int getId_cliente() {
		return id_cliente;
	}

	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}

	public String getDni() {
		return Dni;
	}

	public void setDni(String dni) {
		Dni = dni;
	}

	public String getNombre() {
		return Nombre;
	}

	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	public String getApellidos() {
		return Apellidos;
	}

	public void setApellidos(String apellidos) {
		Apellidos = apellidos;
	}

	public String getDirección() {
		return Dirección;
	}

	public void setDirección(String dirección) {
		Dirección = dirección;
	}

	public String getCP() {
		return CP;
	}

	public void setCP(String cP) {
		CP = cP;
	}

	public String getProvincia() {
		return Provincia;
	}

	public void setProvincia(String provincia) {
		Provincia = provincia;
	}

	@Override
	public String toString() {
		return "Cliente [id_cliente=" + id_cliente + ", Dni=" + Dni + ", Nombre=" + Nombre + ", Apellidos=" + Apellidos
				+ ", Dirección=" + Dirección + ", CP=" + CP + ", Provincia=" + Provincia + "]";
	}

}
