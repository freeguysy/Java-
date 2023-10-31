package test;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import util.DaoFactory;

public class TestUser {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String stuname = DaoFactory.getUserDaoImpl().getUser("202062478", "123");
		if (stuname != null) {
			System.out.println(stuname + "µÇÂ¼³É¹¦");
		} else {
			System.out.println("µÇÂ¼Ê§°Ü");
		}
	}

}
