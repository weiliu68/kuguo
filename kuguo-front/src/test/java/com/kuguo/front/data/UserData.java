package com.kuguo.front.data;

import com.kuguo.front.entity.UserTask;
import org.springside.modules.test.data.RandomData;

public class UserData {

	public static UserTask randomNewUser() {
		UserTask user = new UserTask();
		user.setLoginName(RandomData.randomName("user"));
		user.setName(RandomData.randomName("User"));
		user.setPlainPassword(RandomData.randomName("password"));

		return user;
	}
}
