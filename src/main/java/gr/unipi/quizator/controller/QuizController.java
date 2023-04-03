package gr.unipi.quizator.controller;

import gr.unipi.quizator.exception.AnswerException;
import gr.unipi.quizator.exception.QuizException;
import gr.unipi.quizator.model.Quiz;
import gr.unipi.quizator.service.AnswerService;
import gr.unipi.quizator.service.QuizQuestionService;
import gr.unipi.quizator.service.QuizService;
import gr.unipi.quizator.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class QuizController {
    @Autowired
    QuizService quizService;
    @Autowired
    UserService userService;
    @Autowired
    QuizQuestionService quizQuestionService;
    @Autowired
    AnswerService answerService;

    @PostMapping("/quiz/create")
    public RedirectView createQuiz(@ModelAttribute("quiz") Quiz quiz) {
        Quiz newQuiz = quizService.create(1, quiz.getCourse().getId());

        return new RedirectView("/quiz/" + newQuiz.getId());
    }

    @GetMapping("quiz/{id}")
    public String getByCourse(Model model, @PathVariable Integer id) {

        try {
            model.addAttribute("quiz", quizService.findByIdAndUser(id, 1));
            model.addAttribute("isQuizFinished", quizService.isFinished(id));
            model.addAttribute("currentQuizQuestion", quizQuestionService.findCurrentByQuiz(id));
        } catch (QuizException e) {
            model.addAttribute("message", e.getMessage());
        }

        return "quiz";
    }

    @PostMapping("quiz/answer")
    public String answer(Model model, @RequestParam(name = "quiz") Integer quizId, @RequestParam(name = "answer") Integer answerId) {
        model.addAttribute("quiz", quizService.findByIdAndUser(quizId, 1));

        try {
            model.addAttribute("correct", answerService.answer(answerId, quizId, 1));
        } catch (AnswerException e) {
            model.addAttribute("correct", false);
            model.addAttribute("message", e.getMessage());
        }

        return "feedback";
    }
}
