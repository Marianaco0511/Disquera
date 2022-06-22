package models;

public class generoVo {
    private int idgenero;
    private String nombreg;
    private Boolean estadog;

    
    public generoVo() {}

    public generoVo(int idgenero, String nombreg, Boolean estadog){

        this.idgenero = idgenero;
        this.nombreg = nombreg;
        this.estadog = estadog;
    }

    public int getIdgenero() {
        return idgenero;
    }

    public void setIdgenero(int idgenero) {
        this.idgenero = idgenero;
    }

    public String getNombreg() {
        return nombreg;
    }

    public void setNombreg(String nombreg) {
        this.nombreg = nombreg;
    }

    public Boolean getEstadog() {
        return estadog;
    }

    public void setEstadog(Boolean estadog) {
        this.estadog = estadog;
    }

    public Boolean isEstadog() {
        return null;
    }


    
    
}