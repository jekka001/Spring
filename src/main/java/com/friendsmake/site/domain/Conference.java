package com.friendsmake.site.domain;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
public class Conference{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String title;
    private Timestamp timeConduction;
    private String venue;

    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public Timestamp getTimeConduction() {
        return timeConduction;
    }
    public void setTimeConduction(Timestamp timeConduction) {
        this.timeConduction = timeConduction;
    }
    public String getVenue() {
        return venue;
    }
    public void setVenue(String venue) {
        this.venue = venue;
    }

    public Conference() {
    }

    public Conference(String title, Timestamp timeConduction, String venue) {
        this.title = title;
        this.timeConduction = timeConduction;
        this.venue = venue;
    }
}
