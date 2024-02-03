package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Post;
import org.example.domain.Bookmark;
import org.example.repository.BookmarkRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;

@Service
@RequiredArgsConstructor
@Transactional
public class BookmarkService {

    private final BookmarkRepository bookmarkRepository;

    public void createBookmark(Long postId) {

//        System.out.println("LikePost postId: " + postId);
//
        Post post = new Post();
        post.setPostId(postId);

        Bookmark bookmark = new Bookmark();
        bookmark.setPost(post);

        bookmarkRepository.save(bookmark);
    }

//    public void deleteBookmark(Long bookmarkId) {
//        bookmarkRepository.deleteById(bookmarkId);
//    }
}