package com.hitema.jee.mvc.controllers;

import com.hitema.jee.mvc.services.CityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CityController {
    private static final Logger log = LoggerFactory.getLogger(CityController.class);

    private CityService service;

    public CityController(CityService service) {
        this.service = service;
    }

    @GetMapping("/cities")
    public ModelAndView getAll(){
        log.trace("Cities Get All called ...");
        var view = new ModelAndView();
        view.addObject("mmsg","autres attribut");
        view.addObject("cities",service.readAll());
        return view;
    }

    @GetMapping("/cityModify")
	public ModelAndView getCityModify() {
		log.trace("Appel getCityModify Country");
		City city = new City();
		city.setLastUpdate(LocalDateTime.now());
		return new ModelAndView("cityModify","city",city);
	}

	@PostMapping ("/cityModify")
	public ModelAndView cityModify(@ModelAttribute("cityForm") City city, ModelMap model) {
		log.trace("Appel cityModify : {} ", city);
		service.create(city);
		return new ModelAndView("cityModify","city",city);
	}
}
}
