package com.brocode.dao;

import java.util.List;

import com.brocode.model.User;

public interface UserDao extends GenericDAO<User>{

	List<User> getActive();

	User getFullObjById(int id);

}
