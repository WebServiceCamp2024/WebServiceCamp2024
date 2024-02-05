package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Post;
import org.example.domain.PostLike;
import org.example.repository.PostLikeRepository;
import org.example.repository.PostRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class PostLikeService {

    private final PostLikeRepository postLikeRepository;
    private final PostRepository postRepository;

    @Transactional
    public void toggleLike(Long postId) {
        Post post = postRepository.findById(postId)
                .orElseThrow(() -> new EntityNotFoundException("Post with id " + postId + " not found"));

        Optional<PostLike> existingLike = postLikeRepository.findByPost(post);

        if (existingLike.isPresent()) {
            postLikeRepository.delete(existingLike.get());
        } else {
            PostLike postLike = new PostLike();
            postLike.setPost(post);
            postLikeRepository.save(postLike);
        }
    }
}
