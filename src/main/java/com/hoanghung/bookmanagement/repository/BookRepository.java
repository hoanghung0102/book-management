package com.hoanghung.bookmanagement.repository;

import com.hoanghung.bookmanagement.model.Book;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface BookRepository extends JpaRepository<Book, Long> {

    @Query(
            value = "SELECT * FROM book b where b.title = ?1 AND b.author = ?2",
            nativeQuery = true)
    List<Book> searchBook(String title, String author);
}
