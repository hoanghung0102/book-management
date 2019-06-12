package com.hoanghung.bookmanagement.ultis;

import org.dozer.DozerConverter;

import java.sql.Timestamp;

public class MyCustomConvertBeanMappingBuilder extends DozerConverter<Timestamp, String> {

    /**
     * Override super converter.
     *
     */
    public MyCustomConvertBeanMappingBuilder() {
        super(Timestamp.class, String.class);
    }

    @Override
    public String convertTo(Timestamp source, String destination) {
        return source != null ? String.valueOf(source.getTime()) : null;
    }

    @Override
    public Timestamp convertFrom(String source, Timestamp destination) {
        return source != null ? new Timestamp(Long.valueOf(source)) : null;
    }
}
