package gr.unipi.quizator.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class KnowledgeLevel {
    public static final int BEGINNER = 1;
    public static final int MODERATE = 2;
    public static final int EXPERT = 3;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;

    @Column(length = 64)
    String name;
}
