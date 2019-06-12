package com.hoanghung.bookmanagement.configs;

import com.hoanghung.bookmanagement.form.BookForm;
import com.hoanghung.bookmanagement.model.Book;
import com.hoanghung.bookmanagement.ultis.MyCustomConvertBeanMappingBuilder;
import org.dozer.DozerBeanMapper;
import org.dozer.loader.api.BeanMappingBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import static org.dozer.loader.api.FieldsMappingOptions.customConverter;

@Configuration
public class MappingConfig {

    @Bean
    public BeanMappingBuilder beanMappingBuilder() {
        return new BeanMappingBuilder() {
            @Override
            protected void configure() {
                mapping(Book.class, BookForm.class)
                        .fields("createdAt", "createdAt", customConverter(MyCustomConvertBeanMappingBuilder.class))
                        .fields("updatedAt", "updatedAt", customConverter(MyCustomConvertBeanMappingBuilder.class));
            }
        };
    }

    @Bean
    public DozerBeanMapper beanMapper() {
        DozerBeanMapper dozerBeanMapper = new DozerBeanMapper();
        dozerBeanMapper.addMapping(beanMappingBuilder());
        return dozerBeanMapper;
    }

}
