package gr.unipi.quizator.model.key;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@Embeddable
public class QuizQuestionKey implements Serializable {
    @Column(name = "quiz_id")
    Integer quizId;

    @Column(name = "question_id")
    Integer questionId;
}
