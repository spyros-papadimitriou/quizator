package gr.unipi.quizator.service;

import gr.unipi.quizator.model.Course;
import gr.unipi.quizator.model.Question;
import gr.unipi.quizator.model.QuizQuestion;
import gr.unipi.quizator.repository.QuestionRepository;
import gr.unipi.quizator.repository.QuizQuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class QuestionService {
    @Autowired
    QuestionRepository questionRepository;

    @Autowired
    CourseService courseService;
    @Autowired
    QuizQuestionService quizQuestionService;

    public List<Question> findRandomByCourse(Integer courseId) {
        Course course = courseService.findById(courseId);
        if (course == null)
            return new ArrayList<>();

        return questionRepository.findRandomByCourse(courseId);
    }

    public Question findCurrentByQuiz(Integer quizId)
    {
        QuizQuestion quizQuestion = quizQuestionService.findCurrentByQuiz(quizId);

        return quizQuestion == null ? null: quizQuestion.getQuestion();
    }
}
