/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prueba.service;

import com.prueba.model.User;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author cesbe
 */
public class loginServiceImp implements loginService {

    private static User userLgn;

    static {

        userLgn = loginUser();
    }

    @Override
    public User validateLogin(String user, String password) {
        if (userLgn.getUsername().equals(user) && userLgn.getPassword().equals(password)) {
            return userLgn;
        } else {
            return null;
        }
    }

    private static User loginUser() {
        User user = new User(1, "user", "12345", "", "", "", "", "", "", "", "");
        return user;
    }

}
