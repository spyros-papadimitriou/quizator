package gr.unipi.quizator.controller;

import gr.unipi.quizator.service.ChapterService;
import gr.unipi.quizator.service.UserChapterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ChapterController {
    @Autowired
    ChapterService chapterService;
    @Autowired
    UserChapterService userChapterService;

    @GetMapping("/chapter/{id}")
    public String getChapterById(Model model, @PathVariable Integer id) {
        model.addAttribute("chapter", chapterService.findById(id));
        model.addAttribute("userChapterList", userChapterService.findByUserAndChapter(1, id));

        return "chapter";
    }
}
