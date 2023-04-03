package gr.unipi.quizator.repository;

import gr.unipi.quizator.model.UserChapter;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserChapterRepository extends JpaRepository<UserChapter, Integer> {
    List<UserChapter> findByUser_IdAndChapter_IdOrderByIdDesc(Integer id, Integer id1);


}
