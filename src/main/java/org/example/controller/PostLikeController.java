package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.dto.request.PostLikeRequest;
import org.example.service.PostLikeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/postlike")
public class PostLikeController {

    private final PostLikeService postLikeService;

    @PostMapping("/like")
    public String likePost(@ModelAttribute PostLikeRequest postLikeRequest) {
        postLikeService.toggleLike(postLikeRequest.getPostId());
        return "redirect:/";
    }

    @PostMapping("/unlike")
    public String unlikePost(@ModelAttribute PostLikeRequest postLikeRequest) {
        postLikeService.toggleLike(postLikeRequest.getPostId());
        return "redirect:/";
    }
}
