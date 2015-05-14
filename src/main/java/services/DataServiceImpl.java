package services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.DataDao;
import entity.User;

@Service
@Transactional
public class DataServiceImpl implements DataService {
	
	@Autowired
	DataDao dataDao;

	@Override
	public int insertRow(User user) {
		return dataDao.insertRow(user);
	}

	@Override
	public List<User> getList() {
		return dataDao.getList();
	}

	@Override
	public User getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public int updateRow(User user) {
		return dataDao.updateRow(user);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}
	@Override
	@Transactional
	 public User login(User account) {
		String username = account.getUsername();
		String password = account.getPassword();
		return dataDao.login(username, password);
		
	 }
}
