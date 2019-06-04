package com.hoanghung.bookmanagement.service;

import com.hoanghung.bookmanagement.model.Book;
import com.hoanghung.bookmanagement.model.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

public interface BookService {

    List<Book> findAllBooks();

    Book create(Book book);

    Book find(Long bookId);

    Book update(Book book);

    void delete(Book book);
}
