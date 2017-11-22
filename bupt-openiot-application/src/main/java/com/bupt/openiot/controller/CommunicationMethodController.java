package com.bupt.openiot.controller;

import com.bupt.openiot.dao.communication.CommunicationMethodService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api")
public class CommunicationMethodController {

	@Autowired
	private CommunicationMethodService communicationMethodService;
	
	@RequestMapping(value = "/noauth/communicationmethod", method = RequestMethod.GET)
	@ResponseBody
	public String getAll(){
		return new Gson().toJson(communicationMethodService.getAll());
	}
}
