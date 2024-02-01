// PostLikeService
package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Member;
import org.example.domain.Post;
import org.example.domain.PostLike;
import org.example.repository.PostLikeRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class PostLikeService {

    private final PostLikeRepository postLikeRepository;



    public void likePost(Long postId) {

        Post post = new Post();
        post.setPostId(postId);

        PostLike postLike = new PostLike();
        postLike.setPost(post);

        postLikeRepository.save(postLike);
    }

    public void unlikePost(Long postLikeId) {
        postLikeRepository.deleteById(postLikeId);
    }

    public List<PostLike> getPostLikes(Long postId) {
        return postLikeRepository.findAll();
    }
}
