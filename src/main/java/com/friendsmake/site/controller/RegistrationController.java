package com.friendsmake.site.controller;


import com.friendsmake.site.domain.Role;
import com.friendsmake.site.domain.User;
import com.friendsmake.site.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;

@Controller
public class RegistrationController {
    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration(Model model){
        model.addAttribute("message", "");
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Model model){
        User userFromDb = userService.findByLogin(user.getEmail());

        if(userFromDb != null){
            model.addAttribute("message", "User exists!");
            return "registration";
        }

        user.setRoles(Collections.singleton(Role.ADMIN));
        userService.save(user);

        return "redirect:/login";
    }

}
