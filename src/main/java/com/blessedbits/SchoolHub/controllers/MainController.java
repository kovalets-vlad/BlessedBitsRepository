package com.blessedbits.SchoolHub.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/home")
public class MainController {
    @GetMapping("")
    public String home() {
        return "You reached authenticated user endpoint!";
    }

    @GetMapping("admin")
    public String admin() {
        return "You reached admin endpoint!";
    }
}
