package com.prueba.service;

import java.util.List;

import com.prueba.model.User;

public interface UserService {

    List<User> findAllUsers();

    User findById(long id);

}
