package com.friendsmake.site.repository;

import com.friendsmake.site.domain.Conference;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConferenceRepository extends JpaRepository<Conference, Long> {
    Page<Conference> findAll(Pageable pageable);
}
