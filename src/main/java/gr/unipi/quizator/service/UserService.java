package gr.unipi.quizator.service;

import gr.unipi.quizator.model.User;
import gr.unipi.quizator.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserRepository userRepository;

    public User findById(Integer id) {
        return userRepository.findById(id).orElse(null);
    }
}
