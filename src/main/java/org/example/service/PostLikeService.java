package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Post;
import org.example.domain.PostLike;
import org.example.repository.PostLikeRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;

@Service
@RequiredArgsConstructor
@Transactional
public class PostLikeService {

    private final PostLikeRepository postLikeRepository;

    public void toggleLike(Long postId) {
        Post post = new Post();
        post.setPostId(postId);

        // 해당 postId에 대한 좋아요 상태 조회
        PostLike existingPostLike = postLikeRepository.findByPostAndLiked(post, true);

        if (existingPostLike != null) {
            // 좋아요가 이미 존재하면 취소
            existingPostLike.setLiked(false);
            postLikeRepository.save(existingPostLike);
        } else {
            // 좋아요가 없으면 추가
            PostLike newPostLike = new PostLike();
            newPostLike.setPost(post);
            newPostLike.setLiked(true);
            postLikeRepository.save(newPostLike);
        }
    }
}
