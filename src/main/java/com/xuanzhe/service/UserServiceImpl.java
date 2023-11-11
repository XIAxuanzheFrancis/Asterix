package com.xuanzhe.service;

import com.xuanzhe.dao.UserMapper;
import com.xuanzhe.pojo.User;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

public class UserServiceImpl implements UserService{
  private UserMapper userMapper;

  public void setUserMapper(UserMapper userMapper) {
    this.userMapper = userMapper;
  }

  @Override
  public int addUser(User user) {
    return userMapper.addUser(user);
  }

  @Override
  public int deleteUser(String login) {
    return userMapper.deleteUser(login);
  }

  @Override
  public int updateNiveauUser(User user) {
    return userMapper.updateNiveauUser(user);
  }

  @Override
  public List<User> queryAllUser() {
    return userMapper.queryAllUser();
  }

  @Override
  public List<User> queryUserByName(String pseudo) {
    return userMapper.queryUserByName(pseudo);
  }

  @Override
  public User queryUserById(String login) {
    return userMapper.queryUserById(login);
  }
}
