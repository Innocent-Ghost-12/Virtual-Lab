/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mini;
import java.util.*;
import javax.persistence.*;

/**
 *
 * @author kalam
 */
@Entity
@Table(name="responses")
public class Responses {
@Id
@GeneratedValue
private int id;
private String name;
private String email;
private String feedback;
private Date date;



    @Override
    public String toString() {
        return "Responses{" + "name=" + name + ", email=" + email + ", feedback=" + feedback + ", date=" + date + '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Responses(String name, String email, String feedback, Date date) {
        this.name = name;
        this.email = email;
        this.feedback = feedback;
        this.date = date;
    }


    public int getId() {
        return id;
    }

    public Responses() {
        super();
    }


}
