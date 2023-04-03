package gr.unipi.quizator.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@Entity
public class Chapter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @ManyToOne(optional = false)
    Course course;

    @OneToMany(mappedBy = "chapter")
    List<Question> questions;

    @Column(length = 64)
    String name;

    @Lob
    @Column(length = 1024)
    String description;
}
