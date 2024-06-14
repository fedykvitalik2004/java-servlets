package org.vitalii.fedyk;

public class User {
    private int id;
    private String username;
    private String password;

    private static int counter = 1;

    public User() {
        id = counter++;
    }

    public User(String password, String username) {
        this.id = counter++;
        this.password = password;
        this.username = username;
    }

    public static int getCounter() {
        return counter;
    }

    public int getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
