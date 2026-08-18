package ar.edu.itba.paw.service;

import ar.edu.itba.paw.interfaces.UserDao;
import ar.edu.itba.paw.interfaces.UserService;
import ar.edu.itba.paw.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

/**
 * Implementacion por defecto. @Primary hace que Spring la elija cuando hay mas de
 * un candidato y el punto de inyeccion no aclara cual quiere con @Qualifier.
 */
@Primary
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findById(final long id) {
        return userDao.findById(id);
    }
}
