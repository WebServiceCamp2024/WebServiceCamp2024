package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.domain.Post;
import org.example.dto.request.PostRequest;
import org.example.service.PostService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

@Controller
@RequiredArgsConstructor
@CrossOrigin("*")
public class PostController {

    private final PostService postService;

    @GetMapping("/")
    public String listPosts(Model model) {
        model.addAttribute("posts", postService.findAllPosts());
        return "home";
    }

    @PostMapping("/post/create")
    public String create(@ModelAttribute PostRequest postRequest) {
        postService.createPost(postRequest);
        return "redirect:/";
    }

    @PostMapping("/post/update")
    public String updatePost(@ModelAttribute PostRequest postRequest) {
        postService.updatePost(postRequest);
        return "redirect:/";
    }

    @GetMapping("/post/delete/{id}")
    public String deletePost(@PathVariable Long id) {
        postService.deletePost(id);
        return "redirect:/";
    }
}
