/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package deae.controller;

import com.opensymphony.xwork2.ActionSupport;
import java.io.File;

/**
 *
 * @author Thon Nguyen
 */
public class Post extends ActionSupport {
    private String title;
    private String content;
    private File userImage;
    private String img;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public File getUserImage() {
        return userImage;
    }

    public void setUserImage(File userImage) {
        this.userImage = userImage;
    }
    
    public Post() {
    }
    
    public String execute() throws Exception {
     return SUCCESS;
    }
    
}
