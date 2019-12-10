package com.hoanghung.bookmanagement;

import com.hoanghung.bookmanagement.controller.BookController;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import static org.assertj.core.api.AssertionsForClassTypes.assertThat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookManagementApplicationTests {

    @Autowired
    BookController bookController;

    @Test
    public void contextLoads() {
        assertThat(bookController).isNotNull();
    }

}
