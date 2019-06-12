package com.hoanghung.bookmanagement.ultis;

import com.hoanghung.bookmanagement.form.BookForm;
import com.hoanghung.bookmanagement.model.Book;
import org.dozer.CustomConverter;

public class MyCustomConvertor implements CustomConverter {

    @Override
    public Object convert(Object dest, Object source, Class<?> arg2, Class<?> arg3) {

        System.out.println("MyCustomConvertor has call");

        if (source == null)
            return null;

        if (source instanceof BookForm) {
            BookForm bookForm = (BookForm) source;
            Book book = new Book();
            book.setId(bookForm.getId());
            book.setTitle(bookForm.getTitle());
            book.setAuthor(bookForm.getAuthor());
            book.setDescription(bookForm.getDescription());
            book.setCreatedAt(Long.valueOf(bookForm.getCreatedAt()));
            return book;
        } else if (source instanceof Book) {
            Book book = (Book) source;
            BookForm bookForm = new BookForm();
            bookForm.setId(book.getId());
            bookForm.setTitle(book.getTitle());
            bookForm.setAuthor(book.getAuthor());
            bookForm.setDescription(book.getDescription());
            bookForm.setCreatedAt(book.getCreatedAt() != null ? book.getCreatedAt().toString() : "");
            bookForm.setCreatedAt(book.getUpdatedAt() != null ? book.getUpdatedAt().toString() : "");
            return book;
        }

        return source;
    }
}
