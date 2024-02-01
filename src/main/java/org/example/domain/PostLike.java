// PostLike 도메인
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
}
