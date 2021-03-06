package dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import entity.User;

@Repository
@Transactional
public class DataDaoImpl implements DataDao {

	@Autowired
	SessionFactory sessionFactory;
	Session session = null;

	@Override
	@Transactional
	public int insertRow(User user) {

		try{

			session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			 Query query = sessionFactory.getCurrentSession().createSQLQuery("insert into user (username,password,firstname,lastname,email) values ('"+user.getUsername()+"','"+user.getPassword()+"','"+user.getFirstname()+"','"+user.getLastname()+"','"+user.getEmail()+"');");
			 query.setString("email1", user.getEmail());
			 query.setString("password1", user.getPassword());
			 query.setString("username1", user.getUsername());
			 query.setString("firstname1", user.getFirstname());
			 query.setString("lastname1", user.getLastname());
			 query.executeUpdate();

		   session.getTransaction().commit();
		   
			 sessionFactory.getCurrentSession().flush();
			 
			 sessionFactory.getCurrentSession().close();
			 return 1;
		 } catch(Exception e){
			 return 0;
		 }
		
	}

	@Override
	public List<User> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<User> userList = session.createQuery("from User")
				.list();
		session.close();
		return userList;
	}

	@Override
	public User getRowById(int id) {
		Session session = sessionFactory.openSession();
		User user = (User) session.load(User.class, id);
		return user;
	}

	@Override
	public int updateRow(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(user);
		tx.commit();
		Serializable id = session.getIdentifier(user);
		session.close();
		return (Integer) id;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		User user = (User) session.load(User.class, id);
		session.delete(user);
		tx.commit();
		Serializable ids = session.getIdentifier(user);
		session.close();
		return (Integer) ids;
	}
	@Override
	@Transactional
	 public User login(String username, String password) {
		 try{
			 if(!sessionFactory.getCurrentSession().getTransaction().isActive()){
				 sessionFactory.getCurrentSession().getTransaction().begin();
			 }
			 Query query = sessionFactory.getCurrentSession().createQuery("from User user where user.username=:username and user.password=:password");
			
			 query.setString("username", username);
			 query.setString("password", password);
			 return (User) query.uniqueResult();
		 } catch(Exception e){
			 return null;
		 }
	 }
}
