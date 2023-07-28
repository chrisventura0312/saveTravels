package com.codingdojo.saveTravels.models;

import java.util.Date;
import java.math.BigDecimal;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="expenses")
public class Expense {
    //=================== Annotations ===================
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull(message="Name cannot be blank")
    @Size(min = 2, max = 30, message="Name must be between 2 and 30 characters")
    private String name;

    @NotNull(message="Vendor cannot be blank")
    @Size(min = 1, max = 30, message="Vendor must be between 1 and 30 characters")
    private String vendor;

    @NotNull
    @Min(value = 1, message="Must be at least $1")
    private BigDecimal amount;

    @NotNull
    @Size(min = 10, max = 200, message="Description must be between 10 and 200 characters")
    private String description;

    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;

    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;

    //=================== Constructors ===================
    public Expense() {
    }
    //=================== Getters ===================
    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getVendor() {
        return vendor;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public String getDescription() {
    	return description;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    //=================== Setters ===================
    public void setName(String name) {
        this.name = name;
    }

    public void setVendor(String vendor) {
        this.vendor = vendor;
    }

    public void setAmount(BigDecimal amount) {
        if (amount == null) {
            this.amount =  null;
        } else {
            this.amount = amount;
        }
    }


    public void setDescription(String notes) {
        this.description = notes;
    }

    public void setId(Long id) {
        this.id = id;
    }

    //=================== PrePersist/PreUpdate ===================
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }



}
