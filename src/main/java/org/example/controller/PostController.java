package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.domain.Member2;
import org.example.domain.Post;
import org.example.dto.request.PostRequest;
import org.example.repository.Member2Repository;
import org.example.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import java.util.Collections;
import java.util.List;

@Controller
@RequiredArgsConstructor
@CrossOrigin("*")
public class PostController {

    private final PostService postService;
    @Autowired
    private Member2Repository member2Repository;


    @GetMapping("/")
    public String listPosts(Model model) {
        List<Post> posts = postService.findAllPosts();
        Collections.reverse(posts); // 게시글 리스트를 역순으로 정렬/
        model.addAttribute("posts", posts);
        return "home";
    }

    @PostMapping("/post/create")
    public String create(@ModelAttribute PostRequest postRequest) {
        // 멤버 아이디로 멤버 정보를 찾습니다.
        Member2 member = member2Repository.findById(postRequest.getMemberId())
                .orElseThrow(() -> new RuntimeException("Member not found"));

        // 게시물을 생성하고 멤버 정보를 설정합니다.
        postService.createPost(postRequest, member);

        return "redirect:/";
    }


    @PostMapping("/post/update/{id}")
    public String updatePost(@PathVariable Long id, @ModelAttribute PostRequest postRequest) {
        postService.updatePost(id, postRequest);
        return "redirect:/";
    }


    @GetMapping("/post/delete/{id}")
    public String deletePost(@PathVariable Long id) {
        postService.deletePost(id);
        return "redirect:/";
    }
}
