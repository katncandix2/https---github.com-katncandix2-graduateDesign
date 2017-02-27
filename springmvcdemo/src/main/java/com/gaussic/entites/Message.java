package com.gaussic.entites;

/**
 * Created by ACER on 2017/2/9.
 */

public class Message {
    private  int id ;
    private  String userName;
    private  String Message;
    private String  date;
    private  Message message;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(com.gaussic.entites.Message message) {
        this.message = message;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
