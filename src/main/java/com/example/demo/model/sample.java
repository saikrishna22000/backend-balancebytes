package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "user")
public class sample {
	
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id") 
    Long id;

    @Column(name = "firstname") 
    String firstName;

    @Column(name = "lastname") 
    String lastName;

    @Column(name = "contact") 
    String contact;


}
