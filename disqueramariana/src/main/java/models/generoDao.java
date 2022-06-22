package models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;




public class generoDao {

    /*Atributos para realizar operaciones sobre BD */

    Connection con;
    PreparedStatement ps; 
    ResultSet rs;
    String sql=null;
    int r; 

    public int registrar (generoVo genero) throws SQLException{
        sql = "INSERT INTO genero (nombreg, estadogo) values (?,?)" ;
        try{
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, genero.getNombreg());
            ps.setBoolean(2, genero.getEstadog());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se registro el genero correctamente");
        }catch(Exception e){
            System.out.println("Error en el registro" +e.getMessage().toString());
        }
        finally{
            con.close();
        }
        return r;
    }
    public List<generoVo> generoList() throws SQLException{
        List<generoVo> genero = new ArrayList<>();
        sql = "SELECT * FROM genero";
        try{
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            System.out.println(ps);
            rs = ps.executeQuery(sql);
            while(rs.next()){
                generoVo r = new generoVo();
                //Escribir en el setter cada valor encontrado
                r.setIdgenero(rs.getInt("idGenero"));//peticion de id
                r.setNombreg(rs.getString("nombreGenero"));
                r.setEstadog(rs.getBoolean("estadoGenero"));
                genero.add(r);
            }
            ps.close();
            System.out.println("Consulta Exitosa");
        }catch(Exception e){
            System.out.println("La consulta no pudo ser ejecutada"+e.getMessage().toString());
        }
        finally{
            con.close();
        }
        return genero;
    }
    
    public void eliminar(int id) throws SQLException{
        sql = "DELETE FROM genero WHERE idGenero="+id;
        try{
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se elimino correctamente");
        }catch(Exception e){
            System.out.println("Error en la eliminacion"+e.getMessage().toString());
        }
        finally{
            con.close();
        }
    }
    public void estado(Boolean estado,int id) throws SQLException{
        sql = "UPDATE genero SET estadoGenero="+estado+"WHERE idGenero="+id;
        try{
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se cambio el estado a"+estado+"correctamente");
        }catch(Exception e){
            System.out.println("Error en el cambio de estado"+e.getMessage().toString());
        }
        finally{
            con.close();
        }
    } 
    public List<generoVo> listarGenero(int id) throws SQLException{
        List<generoVo> genero = new ArrayList<>();
        sql = "SELECT * FROM genero WHERE idGenero="+id;
        try{
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            while(rs.next()){
                generoVo r = new generoVo();
                
                r.setIdgenero(rs.getInt("idGenero"));
                r.setNombreg(rs.getString("nombreGenero"));
                r.setEstadog(rs.getBoolean("estadoGenero"));
                genero.add(r);
            }
            ps.close();
            System.out.println("Consulta exitosa a genero especifico");
        }catch(Exception e){
            System.out.println("La consulta no pudo ser ejecutado"+e.getMessage().toString());
        }
        finally{
            con.close();
        }
        return genero;
    }
    public int actualizar(generoVo genero)throws SQLException{
        sql="UPDATE genero SET nombreGenero=?, estadoGenero=? WHERE idGenero=?";
        try{
            con = Conexion.conectar();
            ps = con.prepareStatement(sql);
            System.out.println(ps);
            ps.setString(1,genero.getNombreg());
            ps.setBoolean(2,genero.getEstadog());
            ps.setInt(3, genero.getIdgenero());
            System.out.println(ps);
            ps.executeUpdate();
            ps.close();
            System.out.println("Se edito el genero correctamente");
        }catch(Exception e){
            System.out.println("Error al editar "+e.getMessage().toString());
        }
        finally{
            con.close();
        }
        return r;
    }
}