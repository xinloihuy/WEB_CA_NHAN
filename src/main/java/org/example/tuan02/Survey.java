package org.example.tuan02;

import jakarta.servlet.annotation.WebServlet;

import java.io.Serializable;

public class Survey implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    private String hear;
    private String announce1;
    private String announce2;
    private String contact;

    public Survey() {
    }

    // Getters và Setters
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    public String getDob() {
        return dob;
    }
    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getHear() {
        return hear;
    }
    public void setHear(String hear) {
        this.hear = hear;
    }

    public String getAnnounce1() {
        return announce1;
    }
    public void setAnnounce1(String announce1) {
        this.announce1 = announce1;
    }

    public String getAnnounce2() {
        return announce2;
    }
    public void setAnnounce2(String announce2) {
        this.announce2 = announce2;
    }

    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
}
