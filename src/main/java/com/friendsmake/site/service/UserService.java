package com.friendsmake.site.service;

import com.friendsmake.site.domain.User;
import com.friendsmake.site.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return userRepository.findByEmail(email);
    }
    public User findByLogin(String login){
        return userRepository.findByEmail(login);
    }
    public void save(User user){
        userRepository.save(user);
    }
    public List<User> findAll(){
        return userRepository.findAll();
    }
}
