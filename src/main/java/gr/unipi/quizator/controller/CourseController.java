package gr.unipi.quizator.controller;

import gr.unipi.quizator.service.CourseService;
import gr.unipi.quizator.service.QuizService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class CourseController {
    @Autowired
    CourseService courseService;
    @Autowired
    QuizService quizService;

    @GetMapping("/courses")
    public String findAll(Model model) {
        model.addAttribute("courses", courseService.findAll());

        return "courses";
    }

    @GetMapping("/course/{id}")
    public String getCourseById(Model model, @PathVariable Integer id) {
        model.addAttribute("course", courseService.findById(id));
        model.addAttribute("quiz", quizService.findCurrent(1, id));

        return "course";
    }
}
