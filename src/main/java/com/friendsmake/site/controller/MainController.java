package com.friendsmake.site.controller;

import com.friendsmake.site.domain.Conference;
import com.friendsmake.site.domain.Speaker;
import com.friendsmake.site.domain.User;
import com.friendsmake.site.service.ConferenceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class MainController {
    @Autowired
    private ConferenceService conferenceService;

    @GetMapping("/")
    public String greeting(
            @AuthenticationPrincipal Speaker speaker,
            @AuthenticationPrincipal User user,
            Model model,
            @PageableDefault(sort={"timeConduction"}, direction = Sort.Direction.DESC) Pageable pageable) {
        Page<Conference> page;
        page = conferenceService.findAll(pageable);
        model.addAttribute("url", "/");
        model.addAttribute("conferencePage", page);
        if(user != null){
                model.addAttribute("user",user);
                model.addAttribute("speaker", speaker);
            return "greetingForUser";
        }else {
            return "greeting";
        }
    }



}
