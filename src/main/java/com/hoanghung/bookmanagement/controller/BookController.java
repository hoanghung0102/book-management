package com.hoanghung.bookmanagement.controller;

import com.hoanghung.bookmanagement.form.BookForm;
import com.hoanghung.bookmanagement.model.Book;
import com.hoanghung.bookmanagement.repository.BookRepository;
import com.hoanghung.bookmanagement.service.BookService;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping(value ="book")
public class BookController {

    @Autowired
    private Mapper mapper;

    @Autowired
    BookService bookService;

    @Autowired
    BookRepository bookRepository;

    @GetMapping( "/list")
    public String booksList(Model model) {
        model.addAttribute("books", bookService.findAllBooks().stream()
                .map(book -> mapper.map(book, BookForm.class))
                .collect(Collectors.toList())
        );

        return "book/booksList";
    }

    @GetMapping("/view")
    public String viewBook(Model model, @RequestParam(name = "id") Long bookId) {
        model.addAttribute("book", bookService.find(bookId));

        return "book/viewBook";
    }

    @PostMapping(value = "/new")
    @ResponseBody
    public BookForm newBook(@RequestBody BookForm bookForm) {
        Book book = mapper.map(bookForm, Book.class);
        book = bookService.create(book);

        return mapper.map(book, BookForm.class);
    }

    @PostMapping(value = "/edit")
    @ResponseBody
    public BookForm editBook(@RequestBody BookForm bookForm) {
        Book book = mapper.map(bookForm, Book.class);
        book = bookService.update(book);

        return mapper.map(book, BookForm.class);
    }

    @DeleteMapping("/delete/{id}")
    @ResponseBody
    public String deleteBook(@PathVariable("id") Long id) {
        Book book = bookService.find(id);

        if (book != null) bookService.delete(book);

        return "Delete book " + book.getTitle() + "is success";
    }

    @GetMapping("search")
    @ResponseBody
    public List<Book> searchBook(
            @RequestParam(name = "title") String title,
            @RequestParam(name = "author") String author) {
        return bookRepository.searchBook(title, author);
    }
}