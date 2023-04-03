package gr.unipi.quizator.repository;

import gr.unipi.quizator.model.Quiz;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface QuizRepository extends JpaRepository<Quiz, Integer> {
    Optional<Quiz> findFirstByUser_IdAndCourse_IdAndCurrent(Integer userId, Integer courseId, boolean current);

    Optional<Quiz> findByIdAndUser_Id(Integer quizId, Integer userId);

}
