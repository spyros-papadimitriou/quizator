package gr.unipi.quizator.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
public class Question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @ManyToOne(optional = false)
    Chapter chapter;

    @OneToMany(mappedBy = "question")
    List<Answer> answers;

    String description;
}
