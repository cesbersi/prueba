package com.prueba.model;

import java.util.List;

public class Department {

    private long id;

    private String name;

    private List<String> cities;

    public Department() {
        id = 0;
    }

    public Department(long id, String name, List<String> cities) {
        this.id = id;
        this.name = name;
        this.cities = cities;

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<String> getCities() {
        return cities;
    }

    public void setCities(List<String> cities) {
        this.cities = cities;
    }

}
