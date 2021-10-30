package com.example.sqlspringfirst.controller;

import com.example.sqlspringfirst.repository.AppRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    AppRepository appRepository;

    public Controller(AppRepository appRepository) {
        this.appRepository = appRepository;
    }

    @GetMapping("/products/fetch-product")
    public String getIt(@RequestParam("name") String name) {
        return appRepository.getProductName(name);
    }
}
