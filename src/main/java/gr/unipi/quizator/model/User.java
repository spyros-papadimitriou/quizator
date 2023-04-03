package gr.unipi.quizator.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @OneToMany(mappedBy = "user")
    List<UserChapter> userChapterList;

    @OneToMany(mappedBy = "user")
    List<UserCourse> userCourseList;

    @Column(unique = true)
    String username;

    @Column(unique = true)
    String email;
    String password;
}
