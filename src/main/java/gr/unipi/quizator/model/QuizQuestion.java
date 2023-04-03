package gr.unipi.quizator.model;

import gr.unipi.quizator.model.key.QuizQuestionKey;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class QuizQuestion {
    @EmbeddedId
    QuizQuestionKey id;

    int position;
    boolean current;

    @ManyToOne
    Answer answer;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("quiz")
    @JoinColumn(name = "quiz_id")
    Quiz quiz;

    @ManyToOne(fetch = FetchType.LAZY)
    @MapsId("question")
    @JoinColumn(name = "question_id")
    Question question;
}
