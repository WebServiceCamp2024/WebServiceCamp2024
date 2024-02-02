package org.example.domain;

import lombok.*;
import org.example.dto.request.Member2Request;

import javax.persistence.*;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Member2 {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "member2Id")
    private Long memberId;

    private String email;
    private String profileImage;
    private String twitterId;
    private String nickname;
    private String region;
    private String info;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created_date")
    private Date createdDate;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "updated_date")
    private Date updatedDate;

    @PrePersist
    protected void onCreate() {
        createdDate = new Date();
        updatedDate = createdDate;
    }

    @PreUpdate
    protected void onUpdate() {
        updatedDate = new Date();
    }

    public void update(Member2Request request) {
        this.email = request.getEmail();
        this.profileImage = request.getProfileImage();
        this.twitterId = request.getTwitterId();
        this.nickname = request.getNickname();
        this.region = request.getRegion();
        this.info = request.getInfo();
    }
}
