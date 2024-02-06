package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.dto.request.PostLikeRequest;
import org.example.service.PostLikeService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityNotFoundException;

@Controller
@RequiredArgsConstructor
@RequestMapping("/postlike")
public class PostLikeController {

    private final PostLikeService postLikeService;

    @PostMapping("/toggle/{postId}")
    public ResponseEntity<String> toggleLike(@PathVariable Long postId) {
        try {
            postLikeService.toggleLike(postId);
            return ResponseEntity.ok("Success");
        } catch (EntityNotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Post not found");
        }
    }
}
