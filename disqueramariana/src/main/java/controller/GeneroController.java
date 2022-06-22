package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.generoDao;
import models.generoVo;

public class GeneroController extends HttpServlet {

    generoVo r = new generoVo();
    generoDao rd = new generoDao();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entro al doGet");
        String a = req.getParameter("action");

        switch (a) {
            case "registrar":
                registrar(req, resp);
                break;
            case "editar":
                editar(req, resp);
                break;
            case "listar":
                generoList(req, resp);
                break;
            case "eliminar":
                eliminar(req, resp);
                break;
            case "estado":
                estado(req, resp);
                break;
            
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Entro al doPost");
        String a = req.getParameter("action");

        switch (a) {
            case "add":
                add(req, resp);
                break;
            case "editar":
                edit(req, resp);
                break;
        }
    }

    private void registrar(HttpServletRequest req, HttpServletResponse resp) {
        try {
            req.getRequestDispatcher("views/Genero/RegistrarGenero.jsp").forward(req, resp);
            System.out.println("El formulario ha sido abierto");
        } catch (Exception e) {
            System.out.println("El formulario NO ha sido abierto" + e.getMessage().toString());
        }
    }

    private void add(HttpServletRequest req, HttpServletResponse resp) {

        if (req.getParameter("nombreGenero") != null) {
            r.setNombreg(req.getParameter("nombreGenero"));
        }
        if (req.getParameter("estadoGenero") != null) {
            r.setEstadog(true);
        } else {
            r.setEstadog(false);
        }
        try {
            rd.registrar(r);
            System.out.println("Registro insertado correctamente");
        } catch (Exception e) {
            System.out.println("Error en la inserción del registro " + e.getMessage().toString());
        }
    }

    private void generoList(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<generoVo> generoL = rd.generoList();
            req.setAttribute("generoList", generoL);
            req.getRequestDispatcher("views/Genero/ConsultarGenero.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente");
        } catch (Exception e) {
            System.out.println("Hay problemas al listar los datos " + e.getMessage().toString());
        }
    }

    private void eliminar(HttpServletRequest req, HttpServletResponse resp) {
        if (req.getParameter("id") != null) {
            r.setIdgenero(Integer.parseInt(req.getParameter("id")));
        }
        try {
            rd.eliminar(r.getIdgenero());
            System.out.println("El estado se elimino correctamente");
            generoList(req, resp);
        } catch (Exception e) {
            System.out.println("Error en el cambio de estado" + e.getMessage().toString());
        }
    }

    private void estado(HttpServletRequest req, HttpServletResponse resp){
        if(req.getParameter("id")!=null){
            r.setIdgenero(Integer.parseInt(req.getParameter("id")));
        }
        if(req.getParameter("estado")!=null){
            r.setEstadog(Boolean.parseBoolean(req.getParameter("estado")));
        }
        try{
            rd.estado(r.isEstadog(), r.getIdgenero());
            System.out.println("El estado se cambio correctamente");
            generoList(req, resp);
        }catch(Exception e){
            System.out.println("Error en el cambio de estado"+e.getMessage().toString());
        }
    }
    private void editar( HttpServletRequest req, HttpServletResponse resp){
        if(req.getParameter("id")!=null){
            r.setIdgenero(Integer.parseInt(req.getParameter("id")));
        }
        try{
            List<generoVo> generoList = rd.listarGenero(r.getIdgenero());
            req.setAttribute("generoList", generoList);
            req.getRequestDispatcher("views/Genero/EditarGenero.jsp").forward(req, resp);
            System.out.println("Datos listados correctamente para la edicion");
        } catch(Exception e){
            System.out.println("Error al listar los datos"+e.getMessage().toString());
        }
    }
    private void edit (HttpServletRequest req, HttpServletResponse resp){
        if(req.getParameter("id")!=null){
            r.setIdgenero(Integer.parseInt(req.getParameter("id")));
        }
        if(req.getParameter("nombreGenero")!=null){
            r.setNombreg(req.getParameter("nombreGenero"));
        }
        if(req.getParameter("estadoGenero")!=null){
            r.setEstadog(true);
        }
        else{
            r.setEstadog(false);
        }
        try{
            rd.actualizar(r);
            System.out.println("Editar el registro de genero");
            generoList(req, resp);
        }catch (Exception e){
            System.out.println("Error al editar el registro de genero"+e.getMessage().toString());
        }
    }
}
