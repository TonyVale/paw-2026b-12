package ar.edu.itba.paw.service;

import ar.edu.itba.paw.interfaces.UserDao;
import ar.edu.itba.paw.interfaces.UserService;
import ar.edu.itba.paw.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Segunda implementacion del mismo servicio. Su sola existencia rompe la inyeccion
 * por tipo: hay que desempatar con @Primary (ver UserServiceImpl) o con @Qualifier
 * en el punto de inyeccion. El nombre del bean es "anotherUserService" en vez del
 * autogenerado "anotherUserServiceImpl".
 */
@Service("anotherUserService")
public class AnotherUserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public User findById(final long id) {
        return userDao.findById(id);
    }
}
