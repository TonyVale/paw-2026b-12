package ar.edu.itba.paw.webapp.controller;

import ar.edu.itba.paw.interfaces.UserService;
import ar.edu.itba.paw.models.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {

    // Hay dos UserService en el contexto; gana el @Primary. Para elegir el otro
    // alcanza con agregar @Qualifier("anotherUserService") aca.
    @Autowired
    private UserService us;

    @RequestMapping("/")
    public ModelAndView helloWorld(@RequestParam(value = "greeting", defaultValue = "PAW") final String greeting,
                                   @RequestParam(value = "userId", required = false) final Long userId) {
        final ModelAndView mav = new ModelAndView("index");

        mav.addObject("greeting", greeting);
        if (userId != null) {
            mav.addObject("user", us.findById(userId));
        }

        return mav;
    }

    @RequestMapping("/user/{userId}")
    public ModelAndView profile(@PathVariable("userId") final long userId) {
        final User user = us.findById(userId);

        final ModelAndView mav = new ModelAndView("profile");
        mav.addObject("user", user);

        return mav;
    }
}
