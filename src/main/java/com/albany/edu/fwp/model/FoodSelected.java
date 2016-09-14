package com.albany.edu.fwp.model;

import java.util.HashSet;
import java.util.Set;

public class FoodSelected {

	private long selectionId;	
    private int numberOfPlates;
    private String submitDateTime;
    private int foodItemId;
    private Student student;    
    
 
    public long getSelectionId() {
        return selectionId;
    }
 
    public void setSelectionId(long selectionId) {
        this.selectionId = selectionId;
    }
    
   
 
    public int getNumberOfPlates() {
        return numberOfPlates;
    }
 
    public void setNumberOfPlates(int numberOfPlates) {
        this.numberOfPlates = numberOfPlates;
    }
 
    public String getSubmitDateTime() {
        return submitDateTime;
    }
 
    public void setSubmitDateTime(String submitDateTime) {
        this.submitDateTime = submitDateTime;
    }
 
    public float getFoodItemId() {
        return foodItemId;
    }
 
    public void setFoodItemId(int foodItemId) {
        this.foodItemId = foodItemId;
    }
    
    public Student getStudent() {
        return student;
    }
 
    public void setStudent(Student student) {
        this.student = student;
    }

}
