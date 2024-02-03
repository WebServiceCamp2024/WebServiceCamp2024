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
        postLikeService.likePost(postLikeRequest.getPostId());
        return "redirect:/";
    }

    @PostMapping("/unlike")
    public String unlikePost(@RequestParam Long postLikeId) {
        postLikeService.unlikePost(postLikeId);
        return "redirect:/";
    }

// 해당 게시물의 좋아요 목록 조회
//    @GetMapping("/post/{postId}/likes")
//    public String getPostLikes(@PathVariable Long postId, Model model) {
//        model.addAttribute("likes", postLikeService.getPostLikes(postId));
//        return "postLikes"; // 좋아요 목록을 보여줄 뷰 이름
//    }
}