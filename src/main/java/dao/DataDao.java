package dao;

import java.util.List;

import entity.*;

public interface DataDao {
	public int insertRow(User user);

	public List<User> getList();

	public User getRowById(int id);

	public int updateRow(User user);

	public int deleteRow(int id);
	
	public User login(String username,String password);

}
