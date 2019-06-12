package com.hoanghung.bookmanagement.form;

import lombok.Data;

@Data
public class BookForm {

    private Long id;

    private String title;

    private String author;

    private String description;

    private String createdAt;

    private String updatedAt;

}
