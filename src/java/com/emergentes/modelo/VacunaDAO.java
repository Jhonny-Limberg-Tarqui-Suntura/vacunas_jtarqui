package com.emergentes.modelo;

import java.util.ArrayList;

public class VacunaDAO {
    private int correlativo;
    private ArrayList<Vacuna> vac;

    public VacunaDAO() {
        vac = new ArrayList<Vacuna>();
    }

    public int getCorrelativo() {
        return correlativo;
    }

    public void setCorrelativo(int correlativo) {
        this.correlativo = correlativo;
    }

    public ArrayList<Vacuna> getVac() {
        return vac;
    }

    public void setVac(ArrayList<Vacuna> vac) {
        this.vac = vac;
    }
    public void insertar(Vacuna item){
        vac.add(item);
    }
    public void modificar(int id, Vacuna item){
        int pos = posicion(id);
        vac.set(pos, item);
    }
    public void eliminar(int id){
        int pos = posicion(id);
        vac.remove(pos);
    }
    public int posicion(int id){
        int i = -1;
        if(vac.size() > 0){
            for(Vacuna item : vac){
                ++i;
                if(item.getId() == id){
                    break;
                }
            }
        }
        return i;
    }
}
