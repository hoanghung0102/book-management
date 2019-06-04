package com.hoanghung.bookmanagement.service.impl;

import com.hoanghung.bookmanagement.model.Role;
import com.hoanghung.bookmanagement.model.User;
import com.hoanghung.bookmanagement.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;
import java.util.Set;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    UserRepository userRepository;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) {
        User user = userRepository.findByUsername(username);
        if (user == null) throw new UsernameNotFoundException(username);

        Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
        user.getRoles().forEach(role -> grantedAuthorities.add(new SimpleGrantedAuthority(role.getRole())));

        return new org.springframework.security.core.userdetails.User(
                user.getUsername(),
                user.getPassword(),
                grantedAuthorities
        );
    }

}
