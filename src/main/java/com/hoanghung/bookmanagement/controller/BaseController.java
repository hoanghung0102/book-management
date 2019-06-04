package com.hoanghung.bookmanagement.controller;

import com.hoanghung.bookmanagement.service.SecurityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BaseController {

    @Autowired
    private SecurityService securityService;

    @GetMapping("/")
    public String loginRedirect() {
        return securityService.findLoggedInUsername() != null
                ? "redirect:/book/list"
                : "redirect:/login";
    }

    @GetMapping("/admin")
    public String displayAdmin() {
        return "admin";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {

        if (securityService.findLoggedInUsername() != null) {
            return "redirect:/book/list";
        } else if (error != null) {
            model.addAttribute("error", "Your username and password is invalid.");
        } else if (logout != null) {
            model.addAttribute("message", "You have been logged out successfully.");
        }

        return "login";
    }

    @GetMapping("/403")
    public String error403() {
        return "/error/403";
    }
}