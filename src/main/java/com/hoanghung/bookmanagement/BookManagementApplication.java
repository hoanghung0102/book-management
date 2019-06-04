package com.hoanghung.bookmanagement;

import com.hoanghung.bookmanagement.model.Role;
import com.hoanghung.bookmanagement.repository.RoleRepository;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class BookManagementApplication extends SpringBootServletInitializer {

    public static void main(String[] args) {
        SpringApplication.run(BookManagementApplication.class, args);
    }

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(BookManagementApplication.class);
    }

    @Bean
    public CommandLineRunner demoData(RoleRepository roleRepo) {
        return args -> {
            roleRepo.save(new Role(1L,"ADMIN"));
            roleRepo.save(new Role(2L, "USER"));
        };
    }

}
