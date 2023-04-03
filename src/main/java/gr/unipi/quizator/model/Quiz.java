package gr.unipi.quizator.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Entity
public class Quiz {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @ManyToOne(optional = false)
    User user;

    @ManyToOne(optional = false)
    Course course;

    @OneToMany(mappedBy = "quiz")
    List<QuizQuestion> quizQuestionList;

    LocalDateTime dateCreated;
    LocalDateTime dateFinished;

    boolean current;
}
