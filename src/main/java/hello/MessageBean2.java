package hello;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.beans.*;
import java.io.Serializable;

/**
 *
 * @author viter
 */
public class MessageBean2 implements Serializable {
     
    private String msg;
        
    public MessageBean2() {
    }
    
    public String getMsg() {
        return msg;
    }
    
    public void setMsg(String value) {
        switch (value){
            case "":
            case "pt":
                msg = " como vai";
                break;
            case "en":
                msg = " how are you";
                break;
            case "de":
                msg = " wie gehts";
                break;
            case "fr":
                msg = " comment allez vous";
                break;
            case "es":
                msg = " como esta";
                break;
            case "ru":
                msg = " Как дела";
                break;
        }
    }
}
