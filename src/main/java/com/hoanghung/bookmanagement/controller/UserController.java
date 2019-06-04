package com.hoanghung.bookmanagement.controller;

import com.hoanghung.bookmanagement.model.User;
import com.hoanghung.bookmanagement.service.SecurityService;
import com.hoanghung.bookmanagement.service.UserService;
import com.hoanghung.bookmanagement.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @GetMapping("/register")
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "register";
    }

    @PostMapping("/register")
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) return "register";

        String originPwd = userForm.getPassword();

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), originPwd);

        return "redirect:/book/list";
    }
}
