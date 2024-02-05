package org.example.service;

import lombok.RequiredArgsConstructor;
import org.example.domain.Bookmark;
import org.example.domain.Post;
import org.example.repository.BookmarkRepository;
import org.example.repository.PostRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class BookmarkService {

    private final BookmarkRepository bookmarkRepository;
    private final PostRepository postRepository;

    @Transactional
    public void toggleBookmark(Long postId) {
        Post post = postRepository.findById(postId)
                .orElseThrow(() -> new EntityNotFoundException("Post with id " + postId + " not found"));

        Optional<Bookmark> existingBookmark = bookmarkRepository.findByPost(post);

        if (existingBookmark.isPresent()) {
            bookmarkRepository.delete(existingBookmark.get());
        } else {
            Bookmark bookmark = new Bookmark();
            bookmark.setPost(post);
            bookmarkRepository.save(bookmark);
        }
        updateBookmarks();
    }

    public List<Bookmark> getAllBookmarks() {
        return bookmarkRepository.findAll();
    }

    private void updateBookmarks() {
    }

}
