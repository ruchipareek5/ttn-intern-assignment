/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;
import java.util.*;

/**
 *
 * @author Rajiv
 */
public class TTNInternModel {
    String name;
    Date dateofbirth;
    Date dateofjoining;
    String designation;

    @Override
    public String toString() {
        return "TTNInternModel{" + "name=" + name + ", dateofbirth=" + dateofbirth + ", dateofjoining=" + dateofjoining + ", designation=" + designation + '}';
    }  
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(Date dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public Date getDateofjoining() {
        return dateofjoining;
    }

    public void setDateofjoining(Date dateofjoining) {
        this.dateofjoining = dateofjoining;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }
    
    
}
