package org.example.controller;

import lombok.RequiredArgsConstructor;
import org.example.dto.request.BookmarkRequest;
import org.example.service.BookmarkService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.persistence.EntityNotFoundException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/bookmark")
public class BookmarkController {

    private final BookmarkService bookmarkService;

    @PostMapping("/toggle/{postId}")
    public ResponseEntity<String> toggleBookmark(@PathVariable Long postId) {
        try {
            bookmarkService.toggleBookmark(postId);
            return ResponseEntity.ok("Success");
        } catch (EntityNotFoundException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Post not found");
        }
    }

}
