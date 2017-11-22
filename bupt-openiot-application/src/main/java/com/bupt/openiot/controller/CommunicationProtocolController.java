package com.bupt.openiot.controller;

import com.bupt.openiot.dao.communication.CommunicationProtocolService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/api")
public class CommunicationProtocolController {

	@Autowired
	private CommunicationProtocolService communicationProtocolService;
	
	@RequestMapping(value = "/noauth/communicationprotocol", method = RequestMethod.GET)
	@ResponseBody
	public String getAll(){
		return new Gson().toJson(communicationProtocolService.getAll());
	}
}
