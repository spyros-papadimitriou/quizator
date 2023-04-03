package gr.unipi.quizator.service;

import gr.unipi.quizator.exception.QuizException;
import gr.unipi.quizator.model.*;
import gr.unipi.quizator.model.key.QuizQuestionKey;
import gr.unipi.quizator.repository.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Service
public class QuizService {
    @Autowired
    QuizRepository quizRepository;

    @Autowired
    UserService userService;
    @Autowired
    CourseService courseService;
    @Autowired
    QuestionService questionService;
    @Autowired
    QuizQuestionService quizQuestionService;

    public Quiz create(Integer userId, Integer courseId) {
        User user = userService.findById(userId);
        Course course = courseService.findById(courseId);

        if (user == null || course == null)
            return null;

        Quiz currentQuiz = findCurrent(userId, courseId);
        if (currentQuiz != null)
            return currentQuiz;

        Quiz quiz = new Quiz();
        quiz.setUser(user);
        quiz.setCourse(course);
        quiz.setDateCreated(LocalDateTime.now());
        quiz.setCurrent(true);
        quiz.setQuizQuestionList(new ArrayList<>());

        quizRepository.save(quiz);

        // Create random questions - this section can be personalized
        List<Question> questions = questionService.findRandomByCourse(courseId);
        int i = 0;

        List<QuizQuestion> quizQuestionList = new ArrayList<>();
        for (Question question : questions) {
            i++;

            QuizQuestionKey id = new QuizQuestionKey();
            id.setQuizId(quiz.getId());
            id.setQuestionId(question.getId());

            QuizQuestion quizQuestion = new QuizQuestion();
            quizQuestion.setId(id);
            quizQuestion.setPosition(i);
            quizQuestion.setQuiz(quiz);
            quizQuestion.setQuestion(question);

            if (i == 1)
                quizQuestion.setCurrent(true);

            quizQuestionList.add(quizQuestion);
        }
        quizQuestionService.saveAll(quizQuestionList);


        return quiz;
    }

    public Quiz findCurrent(Integer userId, Integer courseId) {
        return quizRepository.findFirstByUser_IdAndCourse_IdAndCurrent(userId, courseId, true).orElse(null);
    }

    public Quiz findByIdAndUser(Integer id, Integer userId) {
        return quizRepository.findByIdAndUser_Id(id, userId).orElse(null);
    }

    public Quiz findById(Integer id) {
        return quizRepository.findById(id).orElse(null);
    }

    public boolean isFinished(Integer quizId) throws QuizException {
        Quiz quiz = findById(quizId);
        if (quiz == null)
            throw new QuizException("Δεν υπάρχει το κουίζ.");

        return quiz.getQuizQuestionList().stream().noneMatch(qq -> qq.getAnswer() == null);
    }

    public Quiz save(Quiz quiz) {
        return quizRepository.save(quiz);
    }

}
