package com.friendsmake.site.domain;

import javax.persistence.Entity;
import java.util.Set;

@Entity
public class Speaker extends User{
    private long rating;
    private long bonus;

    public long getRating() {
        return rating;
    }
    public void setRating(long rating) {
        this.rating = rating;
    }
    public long getBonus() {
        return bonus;
    }
    public void setBonus(long bonus) {
        this.bonus = bonus;
    }

    public Speaker() {
    }

    public Speaker(long rating, long bonus) {
        this.rating = rating;
        this.bonus = bonus;
    }

    public Speaker(String email, String password, String name, String surname, Set<Role> roles, long rating, long bonus) {
        super(email, password, name, surname, roles);
        this.rating = rating;
        this.bonus = bonus;
    }
}