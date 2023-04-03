package gr.unipi.quizator.service;

import gr.unipi.quizator.exception.AnswerException;
import gr.unipi.quizator.exception.QuizException;
import gr.unipi.quizator.model.Answer;
import gr.unipi.quizator.model.Quiz;
import gr.unipi.quizator.model.QuizQuestion;
import gr.unipi.quizator.repository.AnswerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class AnswerService {
    @Autowired
    AnswerRepository answerRepository;

    @Autowired
    QuizQuestionService quizQuestionService;

    @Autowired
    QuizService quizService;

    public Answer findById(Integer id) {
        return answerRepository.findById(id).orElse(null);
    }

    public boolean isValidAnswer(Integer answerId, Integer questionId) {
        return answerRepository.existsByIdAndQuestion_Id(answerId, questionId);
    }

    public boolean answer(Integer answerId, Integer quizId, Integer userId) throws AnswerException {
        boolean isCorrect;

        try {
            // check if quiz is valid
            Quiz quiz = quizService.findByIdAndUser(quizId, userId);
            if (quiz == null)
                throw new AnswerException("Δεν υπάρχει το κουίζ.");

            // check if quiz is finished
            if (quizService.isFinished(quiz.getId()))
                throw new AnswerException("Το κουίζ έχει ολοκληρωθεί.");

            // get current quiz question
            QuizQuestion currentQuizQuestion = quizQuestionService.findCurrentByQuiz(quiz.getId());
            if (currentQuizQuestion == null)
                throw new AnswerException("Δεν υπάρχει τρέχουσα ερώτηση για το κουίζ.");

            // check if question is answered
            if (currentQuizQuestion.getAnswer() != null)
                throw new AnswerException("Η ερώτηση έχει απαντηθεί ήδη!");

            // check if answer is valid
            Answer answer = findById(answerId);
            if (answer == null)
                throw new AnswerException("Answer does not exist.");

            if (!isValidAnswer(answerId, currentQuizQuestion.getQuestion().getId()))
                throw new AnswerException("Invalid answer for the current question of the quiz.");

            // Save answer
            currentQuizQuestion.setAnswer(answer);
            currentQuizQuestion.setCurrent(false);
            quizQuestionService.save(currentQuizQuestion);

            // Change current question
            if (!quizService.isFinished(quiz.getId()))
                changeCurrentQuestion(quizId);

            // If quiz is finished, update its date
            if (quizService.isFinished(quizId)) {
                quiz.setDateFinished(LocalDateTime.now());
                quiz.setCurrent(false);
                quizService.save(quiz);
            }

            isCorrect = answer.isCorrect();

        } catch (QuizException | AnswerException e) {
            throw new AnswerException(e.getMessage());
        }

        return isCorrect;
    }

    public void changeCurrentQuestion(Integer quizId) throws QuizException {
        Quiz quiz = quizService.findById(quizId);
        if (quiz == null)
            throw new QuizException("Το κουίζ δεν υπάρχει.");

        QuizQuestion nextQuizQuestion = quizQuestionService.findRandomUnansweredByQuiz(quizId);
        System.out.println(nextQuizQuestion);
        if (nextQuizQuestion != null) {
            nextQuizQuestion.setCurrent(true);
            quizQuestionService.save(nextQuizQuestion);
        }
    }
}
