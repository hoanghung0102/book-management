package com.hoanghung.bookmanagement.repository;

import com.hoanghung.bookmanagement.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BookRepository extends JpaRepository<Book, Long> {
}
