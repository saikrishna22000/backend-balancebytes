package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{
	
	
	@Query("SELECT count(U) FROM User U where U.username=:uname")
	public int validateUsename(@Param("uname") String uname);
	
	@Query("Select count(U) from User U where U.email =:uemail")
	public int validateEmail(@Param("uemail") String uemail);

	@Query("select count(U) from User U where U.username = :uname and U.password = :pwd")
	public int logInCheck(@Param("uname") String uname, @Param("pwd") String pwd);
	
}
	