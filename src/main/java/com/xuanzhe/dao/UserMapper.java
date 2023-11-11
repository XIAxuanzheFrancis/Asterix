package com.xuanzhe.dao;

import com.xuanzhe.pojo.User;
import java.util.List;

public interface UserMapper {
  public int addUser(User user);
  public int deleteUser(String login);
  public int updateNiveauUser(User user);
  public List<User> queryAllUser();
  public List<User> queryUserByName(String pseudo);
  public User queryUserById(String login);
}
