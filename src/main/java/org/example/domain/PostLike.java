package org.example.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class PostLike {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "postLikeId")
    private Long postLikeId;

    @ManyToOne
    @JoinColumn(name = "postId")
    private Post post;

    // 추가: 좋아요 상태 (true: 좋아요, false: 좋아요 취소)
    private boolean liked;
}
