package com.hoanghung.bookmanagement.repository;

import com.hoanghung.bookmanagement.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
