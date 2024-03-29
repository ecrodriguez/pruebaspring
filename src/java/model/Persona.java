package model;
// Generated Jul 13, 2015 1:15:43 PM by Hibernate Tools 4.3.1

/**
 * Persona generated by hbm2java
 */
public class Persona  implements java.io.Serializable {
     private int id;
     private String nombre;
     private String apaterno;
     private String amaterno;
     private String telefono;

    public Persona() {
    }

	
    public Persona(int id) {
        this.id = id;
    }
    public Persona(int id, String nombre, String apaterno, String amaterno, String telefono) {
       this.id = id;
       this.nombre = nombre;
       this.apaterno = apaterno;
       this.amaterno = amaterno;
       this.telefono = telefono;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getApaterno() {
        return this.apaterno;
    }
    
    public void setApaterno(String apaterno) {
        this.apaterno = apaterno;
    }
    public String getAmaterno() {
        return this.amaterno;
    }
    
    public void setAmaterno(String amaterno) {
        this.amaterno = amaterno;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
}


