package com.hoanghung.bookmanagement.service;

import com.hoanghung.bookmanagement.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
