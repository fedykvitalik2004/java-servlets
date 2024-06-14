package org.vitalii.fedyk;

import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

public class UserDao {
    private List<User> users = new LinkedList<>();

    private static UserDao userDaoInstance;

    private UserDao() {
    }

    public static UserDao getInstance() {
        if (userDaoInstance == null) {
            userDaoInstance = new UserDao();
        }
        return userDaoInstance;
    }

    public boolean create(final User user) {
        if (user != null) {
            users.add(user);
            return true;
        }
        return false;
    }

    public User read(final int id) {
        return users.stream()
                .filter(o -> o.getId() == id)
                .findFirst()
                .orElse(null);
    }

    public boolean update(final int id, final User user) {
        if (Objects.isNull(user))
            return false;
        int index = users.indexOf(read(id));
        users.set(index, user);
        return false;
    }

    public boolean delete(int id) {
        return users.remove(read(id));
    }

    public List<User> readAll() {
        return users;
    }
}
