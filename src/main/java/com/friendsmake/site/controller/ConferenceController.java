package com.friendsmake.site.controller;

import com.friendsmake.site.domain.Review;
import com.friendsmake.site.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/conference")
public class ConferenceController {
    @Autowired
    private ReviewService reviewService;

    @GetMapping
    public String review(Model model){
        Iterable<Review> reviews;
        reviews = reviewService.findAll();
        model.addAttribute("reviews", reviews);
        return "review";
    }


}
