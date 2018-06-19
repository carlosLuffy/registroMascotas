
package registromascotas;

import java.sql.ResultSet;

/**
 *
 * @author carlos o milton
 */
public class RegistroPropietarios {
Coneccion cn = new Coneccion();

public ResultSet comparar(String idPropietario){
     return (cn.getValores("SELECT * FROM propietarios WHERE id_propietario ='" + idPropietario + "'"));
} 
    
}
