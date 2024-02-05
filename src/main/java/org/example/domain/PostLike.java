package org.example.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode(exclude = "post") //StackOverflowError 방지
@ToString(exclude = "post") //StackOverflowError 방지
public class PostLike {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "postLikeId")
    private Long postLikeId;

    @ManyToOne
    @JoinColumn(name = "postId")
    private Post post;


}