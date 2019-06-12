package com.hoanghung.bookmanagement.configs;

import org.dozer.DozerBeanMapper;
import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Configuration
public class DozerMapperConfig {

    @Bean
    public Mapper mapper(@Value(value = "classpath*:dozer_mapping/customer_mapping.xml") Resource[] resourceArray)
            throws IOException {

        List<String> mappingFileUrlList = new ArrayList<>();

        for (Resource resource : resourceArray) {
            mappingFileUrlList.add(String.valueOf(resource.getURL()));
        }

        DozerBeanMapper dozerBeanMapper = new DozerBeanMapper();
        dozerBeanMapper.setMappingFiles(mappingFileUrlList);

        return dozerBeanMapper;
    }

}
