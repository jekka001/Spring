package com.friendsmake.site.domain;

import javax.persistence.*;
import java.util.List;

@Entity
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String topic;


    @ManyToMany(targetEntity = User.class, fetch = FetchType.LAZY)
    @JoinTable(
            name = "registered",
            joinColumns = {@JoinColumn(name = "user_id", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "review_id", referencedColumnName = "id")}
            )
    private List<User> registered;

    private int visitors;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="speaker_id")
    private Speaker speaker;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="conference_id")
    private Conference conference;

    @Enumerated(EnumType.STRING)
    private StateReview state;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public List<User> getRegistered() {
        return registered;
    }

    public void setRegistered(List<User> registered) {
        this.registered = registered;
    }

    public int getVisitors() {
        return visitors;
    }

    public void setVisitors(int visitors) {
        this.visitors = visitors;
    }

    public Speaker getSpeaker() {
        return speaker;
    }

    public void setSpeaker(Speaker speaker) {
        this.speaker = speaker;
    }

    public Conference getConference() {
        return conference;
    }

    public void setConference(Conference conference) {
        this.conference = conference;
    }

    public StateReview getState() {
        return state;
    }

    public void setState(StateReview state) {
        this.state = state;
    }


    public Review() {
    }

    public Review(String topic, List<User> registered, int visitors, Speaker speaker, Conference conference, StateReview state) {
        this.topic = topic;
        this.registered = registered;
        this.visitors = visitors;
        this.speaker = speaker;
        this.conference = conference;
        this.state = state;
    }
}
