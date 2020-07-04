package web02;

import java.util.HashMap;
import java.util.Map;

import org.apache.jasper.tagplugins.jstl.core.If;

import com.fjj.module.User;

public class DBUtil {
	
	private static Map<String, User> db = new HashMap<String, User>();

	public static boolean addUser(String username,String password,int age,String sex) {
		// TODO Auto-generated method stub
		if (db.containsKey(username)) {
			return false;
		}else {
			User user = new User(username,password,age,sex);
			db.put(username, user);
			return true;
		}

	}
	public static User verifyAccount(String username,String password) {
		if (db.containsKey(username)) {
			User user = db.get(username);
			if (user.getPassword().equals(password)) {
				return user;
			}else {
				return null;
			}
		}
		return null;
	}
}
