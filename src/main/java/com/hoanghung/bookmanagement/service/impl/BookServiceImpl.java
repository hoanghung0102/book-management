package com.hoanghung.bookmanagement.service.impl;

import com.hoanghung.bookmanagement.model.Book;
import com.hoanghung.bookmanagement.repository.BookRepository;
import com.hoanghung.bookmanagement.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    BookRepository bookRepository;

    @Override
    public List<Book> findAllBooks() {
        return bookRepository.findAll();
    }

    @Override
    public Book create(Book book) {
        return bookRepository.save(book);
    }

    @Override
    public Book find(Long bookId) {
        return bookRepository.findById(bookId).orElse(null);
    }

    @Override
    public Book update(Book book) {
        return bookRepository.save(book);
    }

    @Override
    public void delete(Book book) {
        bookRepository.delete(book);
    }
}