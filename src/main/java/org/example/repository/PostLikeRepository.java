package org.example.repository;

import org.example.domain.Post;
import org.example.domain.PostLike;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostLikeRepository extends JpaRepository<PostLike, Long> {

    // 추가: 해당 게시물에 대한 좋아요 여부 조회
    PostLike findByPostAndLiked(Post post, boolean liked);

    List<PostLike> findAll();
}
