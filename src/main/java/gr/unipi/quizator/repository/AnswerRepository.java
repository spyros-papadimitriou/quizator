package gr.unipi.quizator.repository;

import gr.unipi.quizator.model.Answer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AnswerRepository extends JpaRepository<Answer, Integer> {
    boolean existsByIdAndQuestion_Id(Integer answerId, Integer questionId);

}
