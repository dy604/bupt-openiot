package com.bupt.openiot.controller;

import com.bupt.openiot.dao.communication.ParameterTypeService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Controller for ParameterType
 */
@Controller
@RequestMapping("/api")
public class ParameterTypeController {

	@Autowired
	private ParameterTypeService parameterTypeService;
	
	@RequestMapping(value = "/noauth/parametertype", method = RequestMethod.GET)
	@ResponseBody
	public String getAll() {
		return new Gson().toJson(parameterTypeService.getAll());
	}
}
