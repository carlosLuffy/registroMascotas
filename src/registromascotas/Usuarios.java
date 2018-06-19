
package registromascotas;

import java.sql.ResultSet;

/**
 *
 * @author carlos o milton
 */
public class Usuarios {

Coneccion cn = new Coneccion();
public void insertar (String usuario, String contrasena){
    cn.UID("INSERT INTO usuarios (usuario,contraseña) VALUES ('" + usuario + "','" + contrasena + "')");
}
public void modificar(String usuario, String contraseña){
    cn.UID("UPDATE usuarios SET usuario = '" + usuario + "',contraseña ='" + contraseña + "'WHERE usuario='" + usuario + "'");
}
public void eliminar (String usuario){
    cn.UID("DELETE FROM usuarios WHERE usuario ='" + usuario + "'");
}
public ResultSet comparar (){
    return (cn.getValores("SELECT * FROM usuarios"));
}

    
}
