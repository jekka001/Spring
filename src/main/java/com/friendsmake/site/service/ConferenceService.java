package com.friendsmake.site.service;

import com.friendsmake.site.domain.Conference;
import com.friendsmake.site.repository.ConferenceRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
public class ConferenceService {
    @Autowired
    private ConferenceRepository conferenceRepository;

    public Page<Conference> findAll(Pageable pageable){
        return conferenceRepository.findAll(pageable);
    }

}
