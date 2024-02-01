package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.dto.request.MemberRequest;
import org.example.dto.request.PostRequest;
import org.example.service.PostLikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/postlike")
public class PostLikeController {

    private final PostLikeService postLikeService;


    // 좋아요 버튼을 누르는 기능
//    @PostMapping("/like")
//    public String likePost(@RequestParam Long memberId, @RequestParam Long postId) {
//        postLikeService.likePost(memberId, postId);
//        return "redirect:/";
//    }

    @PostMapping("/like")
    public String likePost() {
        // 테스트용 값 설정
        Long postId = 12L;

        postLikeService.likePost(postId);
        return "redirect:/";
    }

    // 좋아요 취소 기능
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
