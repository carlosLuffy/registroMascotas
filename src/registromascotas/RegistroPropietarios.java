
package registromascotas;

import java.sql.ResultSet;

/**
 *
 * @author carlos o milton
 */
public class RegistroPropietarios {
Coneccion cn = new Coneccion();

public void insertar(String codigo, String apellido1, String apellido2, String nombre, String fechaNacimiento, String sexo, String celular) {
    cn.UID("INSERT INTO propietarios(id_propietario,apellido1,apellido2,nombres,fecha_Nacimiento,sexo,celular) VALUES('" + codigo + "','" + apellido1 + "','" + apellido2 + "','" + nombre + "','" + fechaNacimiento + "','" + sexo + "','" + celular + "')");
    }
        public void modificar(String codigo, String apellido1, String apellido2, String nombre, String fechaNacimiento, String sexo, String celular) {
        cn.UID("UPDATE propietarios SET apellido1='" + apellido1 + "',apellido2='" + apellido2 + "',nombres='" + nombre + "',fecha_Nacimiento='" + fechaNacimiento + "',sexo='" + sexo + "',celular='" + celular + "' WHERE id_propietario='" + codigo + "'");
    }
      public void eliminar(String codigo) {
        cn.UID("DELETE FROM propietarios WHERE id_propietario='" + codigo + "'");
    }
    

public ResultSet comparar(String idPropietario){
     return (cn.getValores("SELECT * FROM propietarios WHERE id_propietario ='" + idPropietario + "'"));
} 
public ResultSet buscar(String codigo) {
   return (cn.getValores("SELECT * FROM propietarios WHERE id_propietario='" + codigo + "'"));
    }
 public ResultSet contarRegistros() {
        return (cn.getValores("SELECT COUNT(id_propietario) FROM propietarios"));
    }
  public ResultSet mayorRegistro() {
        return (cn.getValores("SELECT MAX(id_propietario) FROM propietarios"));
    }
    
}
