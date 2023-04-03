package gr.unipi.quizator.repository;

import gr.unipi.quizator.model.QuizQuestion;
import gr.unipi.quizator.model.key.QuizQuestionKey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface QuizQuestionRepository extends JpaRepository<QuizQuestion, QuizQuestionKey> {
    Optional<QuizQuestion> findFirstByQuiz_IdAndCurrent(Integer id, boolean current);

    @Query("select qq from QuizQuestion qq where qq.quiz.id = :quizId and qq.answer is null order by rand() limit 1")
    QuizQuestion findRandomByQuiz(Integer quizId);
}
