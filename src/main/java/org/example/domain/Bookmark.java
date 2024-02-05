package org.example.domain;

import lombok.*;

import javax.persistence.*;

@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@EqualsAndHashCode(exclude = "post")
@ToString(exclude = "post")
public class Bookmark {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bookmarkId")
    private Long bookmarkId;

    @ManyToOne
    @JoinColumn(name = "postId")
    private Post post;
}
