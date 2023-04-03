package gr.unipi.quizator.service;

import gr.unipi.quizator.model.UserChapter;
import gr.unipi.quizator.repository.UserChapterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserChapterService {
    @Autowired
    UserChapterRepository userChapterRepository;

    public List<UserChapter> findByUserAndChapter(Integer userId, Integer chapterId) {
        return userChapterRepository.findByUser_IdAndChapter_IdOrderByIdDesc(userId, chapterId);
    }
}
