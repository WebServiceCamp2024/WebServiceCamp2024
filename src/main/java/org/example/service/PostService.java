package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Post;
import org.example.dto.request.PostRequest;
import org.example.repository.PostRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional
public class PostService {

    private final PostRepository postRepository;

    public List<Post> findAllPosts() {
        return postRepository.findAll();
    }

    public void createPost(PostRequest postRequest) {
        Post post = new Post();
        post.setContent(postRequest.getContent());
        postRepository.save(post);
    }
    public Post findPostById(Long id) {
        return postRepository.findById(id).orElseThrow(() -> new RuntimeException("Post not found"));
    }

    public void updatePost(PostRequest postRequest) {
        Post post = postRepository.findById(postRequest.getPostId())
                .orElseThrow(() -> new RuntimeException("Post not found"));
        post.update(postRequest);
        postRepository.save(post);
    }

    public void deletePost(Long id) {
        postRepository.deleteById(id);
    }
}
