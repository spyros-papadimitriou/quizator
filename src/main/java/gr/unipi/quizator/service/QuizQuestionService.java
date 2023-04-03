package gr.unipi.quizator.service;

import gr.unipi.quizator.model.QuizQuestion;
import gr.unipi.quizator.repository.QuizQuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuizQuestionService {
    @Autowired
    QuizQuestionRepository quizQuestionRepository;

    public void saveAll(List<QuizQuestion> quizQuestionList) {
        quizQuestionRepository.saveAll(quizQuestionList);
    }

    public QuizQuestion save(QuizQuestion quizQuestion) {
        return quizQuestionRepository.save(quizQuestion);
    }

    public QuizQuestion findCurrentByQuiz(Integer quizId) {
        return quizQuestionRepository.findFirstByQuiz_IdAndCurrent(quizId, true).orElse(null);
    }

    public QuizQuestion findRandomUnansweredByQuiz(Integer quizId) {
        return quizQuestionRepository.findRandomByQuiz(quizId);
    }
}
