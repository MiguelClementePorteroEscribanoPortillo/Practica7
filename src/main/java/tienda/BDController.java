package tienda;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

public class BDController {

	private Connection conexion;

	public BDController() {
		super();
		// TODO Auto-generated constructor stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			this.conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/LaChapuzza", "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("Error en Constructor BDController: " + e.getMessage());
		}
	}

	public Connection getConexion() {
		return conexion;
	}

	public void setConexion(Connection conexion) {
		this.conexion = conexion;
	}

	// CLIENTES
	// -------------------------------------------------------------------------------------------------------------------------------------------------------------------

	public ArrayList<Cliente> todosClientes() {
		ArrayList<Cliente> clientes = new ArrayList<Cliente>();
		String sql = "SELECT * FROM clientes";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while (rs.next()) {
				Cliente cliente = new Cliente(rs.getInt("Id_cliente"), rs.getString("Dni"), rs.getString("Nombre"),
						rs.getString("Apellidos"), rs.getString("Dirección"), rs.getString("CP"),
						rs.getString("Provincia"));
				clientes.add(cliente);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return clientes;
	}

	public Cliente dameClienteCod(int idCliente) {
		Cliente cliente = null;
		String sql = "SELECT * FROM clientes WHERE Id_cliente = " + idCliente;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				cliente = new Cliente(rs.getInt("Id_cliente"), rs.getString("Dni"), rs.getString("Nombre"),
						rs.getString("Apellidos"), rs.getString("Dirección"), rs.getString("CP"),
						rs.getString("Provincia"));
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cliente;
	}

	public boolean existeCliente(int idCliente) {
		String sql = "SELECT COUNT(*) AS count FROM clientes WHERE Id_cliente = " + idCliente;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				int count = rs.getInt("count");
				return count > 0;
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void altaCliente(String dni, String nombre, String apellidos, String direccion, String cp,
			String provincia) {
		String sql = "INSERT INTO clientes (Dni, Nombre, Apellidos, Dirección, CP, Provincia) VALUES ('" + dni + "', '"
				+ nombre + "', '" + apellidos + "', '" + direccion + "', '" + cp + "', '" + provincia + "')";
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Cliente agregado exitosamente.");
			} else {
				System.out.println("No se pudo agregar el cliente.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void bajaCliente(int idCliente) {
		String sql = "DELETE FROM clientes WHERE Id_cliente = " + idCliente;
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Cliente eliminado exitosamente.");
			} else {
				System.out.println("No se pudo eliminar el cliente.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Productos-------------------------------------------------------------------------------------------------------------------------------------------------------------

	public ArrayList<Producto> todosProductos() {
		ArrayList<Producto> productos = new ArrayList<Producto>();
		String sql = "SELECT * FROM productos";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while (rs.next()) {
				Producto producto = new Producto(rs.getInt("Id_producto"), rs.getString("Descripción"),
						rs.getDouble("Precio"), rs.getString("Marca"));
				productos.add(producto);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return productos;
	}

	public Producto dameProductoCod(int idProducto) {
		Producto producto = null;
		String sql = "SELECT * FROM productos WHERE Id_producto = " + idProducto;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				producto = new Producto(rs.getInt("Id_producto"), rs.getString("Descripción"), rs.getDouble("Precio"),
						rs.getString("Marca"));
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return producto;
	}

	public boolean existeProducto(int idProducto) {
		String sql = "SELECT COUNT(*) AS count FROM productos WHERE Id_producto = " + idProducto;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				int count = rs.getInt("count");
				return count > 0;
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void altaProducto(String descripcion, double precio, String marca) {
		String sql = "INSERT INTO productos (Descripción, Precio, Marca) VALUES ('" + descripcion + "', " + precio
				+ ", '" + marca + "')";
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Producto agregado exitosamente.");
			} else {
				System.out.println("No se pudo agregar el producto.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void bajaProducto(int idProducto) {
		String sql = "DELETE FROM productos WHERE Id_producto = " + idProducto;
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Producto eliminado exitosamente.");
			} else {
				System.out.println("No se pudo eliminar el producto.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Ventas
	// -----------------------------------------------------------------------------------------------------------------------------------------------------------

	public ArrayList<Venta> todosVentas() {
		ArrayList<Venta> ventas = new ArrayList<Venta>();
		String sql = "SELECT * FROM ventas";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while (rs.next()) {
				Venta venta = new Venta(rs.getInt("ID_venta"), rs.getDate("Fecha_hora"), rs.getInt("Id_cliente"),
						rs.getInt("Id_empleado"), rs.getDouble("Precio_venta"));
				ventas.add(venta);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ventas;
	}

	public Venta dameVentaCod(int idVenta) {
		Venta venta = null;
		String sql = "SELECT * FROM ventas WHERE ID_venta = " + idVenta;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				venta = new Venta(rs.getInt("ID_venta"), rs.getDate("Fecha_hora"), rs.getInt("Id_cliente"),
						rs.getInt("Id_empleado"), rs.getDouble("Precio_venta"));
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return venta;
	}

	public boolean existeVenta(int idVenta) {
		String sql = "SELECT COUNT(*) AS count FROM ventas WHERE ID_venta = " + idVenta;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				int count = rs.getInt("count");
				return count > 0;
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void altaVenta(Date fechaHora, int idCliente, int idEmpleado, double precioVenta) {
		String sql = "INSERT INTO ventas (Fecha_hora, Id_cliente, Id_empleado, Precio_venta) VALUES ('" + fechaHora
				+ "', " + idCliente + ", " + idEmpleado + ", " + precioVenta + ")";
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Venta agregada exitosamente.");
			} else {
				System.out.println("No se pudo agregar la venta.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void bajaVenta(int idVenta) {
		String sql = "DELETE FROM ventas WHERE ID_venta = " + idVenta;
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Venta eliminada exitosamente.");
			} else {
				System.out.println("No se pudo eliminar la venta.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// Lineas de venta

	public ArrayList<L_venta> todosLineasVenta() {
		ArrayList<L_venta> lineasVenta = new ArrayList<L_venta>();
		String sql = "SELECT * FROM l_ventas";
		try {
			Statement myStatement = this.conexion.createStatement();
			ResultSet rs = myStatement.executeQuery(sql);
			while (rs.next()) {
				L_venta lineaVenta = new L_venta(rs.getInt("Id_Lventa"), rs.getInt("Id_venta"),
						rs.getInt("Id_producto"), rs.getInt("Unidades"), rs.getDouble("Precio_unidad"));
				lineasVenta.add(lineaVenta);
			}
			myStatement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lineasVenta;
	}

	public L_venta dameLineaVentaCod(int idLineaVenta) {
		L_venta lineaVenta = null;
		String sql = "SELECT * FROM l_ventas WHERE Id_Lventa = " + idLineaVenta;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				lineaVenta = new L_venta(rs.getInt("Id_Lventa"), rs.getInt("Id_venta"), rs.getInt("Id_producto"),
						rs.getInt("Unidades"), rs.getDouble("Precio_unidad"));
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lineaVenta;
	}

	public boolean existeLineaVenta(int idLineaVenta) {
		String sql = "SELECT COUNT(*) AS count FROM l_ventas WHERE Id_Lventa = " + idLineaVenta;
		try {
			Statement statement = this.conexion.createStatement();
			ResultSet rs = statement.executeQuery(sql);
			if (rs.next()) {
				int count = rs.getInt("count");
				return count > 0;
			}
			statement.close();
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void altaLineaVenta(int idVenta, int idProducto, int unidades, double precioUnidad) {
		String sql = "INSERT INTO l_ventas (Id_venta, Id_producto, Unidades, Precio_unidad) VALUES (" + idVenta + ", "
				+ idProducto + ", " + unidades + ", " + precioUnidad + ")";
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Línea de venta agregada exitosamente.");
			} else {
				System.out.println("No se pudo agregar la línea de venta.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void bajaLineaVenta(int idLineaVenta) {
		String sql = "DELETE FROM l_ventas WHERE Id_Lventa = " + idLineaVenta;
		try {
			Statement statement = this.conexion.createStatement();
			int filasAfectadas = statement.executeUpdate(sql);
			if (filasAfectadas > 0) {
				System.out.println("Línea de venta eliminada exitosamente.");
			} else {
				System.out.println("No se pudo eliminar la línea de venta.");
			}
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
