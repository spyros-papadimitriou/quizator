package gr.unipi.quizator.service;

import gr.unipi.quizator.model.Chapter;
import gr.unipi.quizator.repository.ChapterRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChapterService {
    @Autowired
    ChapterRepository chapterRepository;

    public List<Chapter> findAll() {
        return chapterRepository.findAll();
    }

    public Chapter findById(Integer id) {
        return chapterRepository.findById(id).orElse(null);
    }
}
