package com.hoanghung.bookmanagement.controller;

import com.hoanghung.bookmanagement.model.Book;
import com.hoanghung.bookmanagement.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(value ="book")
public class BookController {

    @Autowired
    BookService bookService;

    @GetMapping( "/list")
    public String booksList(Model model) {
        model.addAttribute("books", bookService.findAllBooks());

        return "book/booksList";
    }

    @GetMapping("/create")
    public String displayCreateBook(Model model) {
        model.addAttribute("bookForm", new Book());

        return "book/createBook";
    }

    @PostMapping("/create")
    public String createBook(@ModelAttribute("bookForm") Book bookForm, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) return "editBook";

        bookService.create(bookForm);

        return "redirect:/book/list";
    }

    @GetMapping("/view")
    public String viewBook(Model model, @RequestParam(name = "id") Long bookId) {
        model.addAttribute("book", bookService.find(bookId));

        return "book/viewBook";
    }

    @GetMapping("/edit")
    public String displayEditBook(Model model, @RequestParam(name = "id") Long bookId) {
        model.addAttribute("bookForm", bookService.find(bookId));

        return "book/editBook";
    }

    @PostMapping("/edit")
    public String editBook(@ModelAttribute("bookForm") Book bookForm, BindingResult bindingResult) {

        if (bindingResult.hasErrors()) {
            return "editBook";
        }

        bookService.update(bookForm);

        return "redirect:/book/list";
    }

    @GetMapping("/delete")
    public String deleteBook(@RequestParam(name = "id") Long bookId) {
        Book book = bookService.find(bookId);

        if (book != null) bookService.delete(book);

        return "redirect:/book/list";
    }
}