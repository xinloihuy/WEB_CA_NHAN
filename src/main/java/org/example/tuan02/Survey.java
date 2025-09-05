package org.example.tuan02;

import jakarta.servlet.annotation.WebServlet;

import java.io.Serializable;

public class Survey implements Serializable {
    private String firstName;
    private String lastName;
    private String email;
    private String dob;
    private String hear;
    private String update;
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

    public String getUpdate() {
        return update;
    }
    public void setUpdate(String update) {
        this.update = update;
    }

    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
}
