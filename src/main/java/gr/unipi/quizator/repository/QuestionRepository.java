package gr.unipi.quizator.repository;

import gr.unipi.quizator.model.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {
    @Query("select q from Question q where q.chapter.course.id = :courseId order by rand() limit 10")
    public List<Question> findRandomByCourse(Integer courseId);
}
