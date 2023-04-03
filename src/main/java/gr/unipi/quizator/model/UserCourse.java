package gr.unipi.quizator.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@Entity
public class UserCourse {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @ManyToOne(optional = false)
    User user;

    @ManyToOne(optional = false)
    Course course;

    @ManyToOne(optional = false)
    KnowledgeLevel knowledgeLevel;

    LocalDateTime dateCreated;
}
