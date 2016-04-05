package com.prueba.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prueba.model.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    private static final AtomicLong counter = new AtomicLong();

    private static List<User> users;

    static {

        users = populateDummyUsers();
    }

    public List<User> findAllUsers() {
        return users;
    }

    public User findById(long id) {
        for (User user : users) {
            if (user.getId() == id) {
                return user;
            }
        }
        return null;
    }

    private static List<User> populateDummyUsers() {
        List<User> users = new ArrayList<User>();
//        users.add(new User(counter.incrementAndGet(), "Sam", "NY", "sam@abc.com"));
//        users.add(new User(counter.incrementAndGet(), "Tomy", "ALBAMA", "tomy@abc.com"));
//        users.add(new User(counter.incrementAndGet(), "Kelly", "NEBRASKA", "kelly@abc.com"));
        return users;
    }

}
