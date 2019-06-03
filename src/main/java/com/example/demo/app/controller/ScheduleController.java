package com.example.demo.app.controller;

import java.time.LocalDateTime;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.app.member.Event;
import com.example.demo.app.member.EventRepository;
import com.example.demo.app.member.Resource;
import com.example.demo.app.member.ResourceRepository;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;

@RestController
public class ScheduleController {
	
	@Autowired
	EventRepository er;
	
	@Autowired
	ResourceRepository rr;
	
	@RequestMapping("/api")
	@ResponseBody
	String home()
	{
		return "Welcome!";
	}
	
	@RequestMapping("/api/resources")
	Iterable<Resource> resources()
	{
		return rr.findAll();
	}
	
	@GetMapping("/api/events")
	@JsonSerialize(using = LocalDateTimeSerializer.class)
	Iterable<Event> events(@RequestParam("start") @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime start, @RequestParam("end") @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime end) {
		return er.findBetween(start, end);
	}
	
	
	@PostMapping("api/events/create")
	@JsonSerialize(using = LocalDateTimeSerializer.class)
	@Transactional
	Event createEvent(@RequestBody EventCreateParams params) {
		
		Resource r = rr.findOne(params.resource);
		
		Event e = new Event();
		e.setStart(params.start);
		e.setEnd(params.end);
		e.setText(params.text);
		e.setResource(r);
		
		er.save(e);
		
		return e;
	}
	
	@PostMapping("/api/events/setColor")
	@JsonSerialize(using = LocalDateTimeSerializer.class)
	@Transactional
	Event setColor(@RequestBody SetColorParams params)
	{
		Event e = er.findOne(params.Id);
		e.setColor(params.color);
		er.save(e);
		
		return e;
	}
	
	
	public static class EventCreateParams
	{
		public LocalDateTime start;
		public LocalDateTime end;
		public String text;
		public Long resource;
	}
	
	public static class EventMoveParams
	{
		public Long Id;
		public LocalDateTime start;
		LocalDateTime end;
		public Long resource;
	}
	
	public static class SetColorParams
	{
		public Long Id;
		public String color;
	}
	
	
	

}
