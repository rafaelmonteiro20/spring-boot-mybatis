package com.rachinha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.rachinha.mapper.JogadorMapper;
import com.rachinha.model.Jogador;

@Controller
@RequestMapping("/jogadores")
public class JogadorController {

	@Autowired
	private JogadorMapper jogadorMapper;
	
	@GetMapping("/form")
	public ModelAndView form(Jogador jogador) {
		return new ModelAndView("CadastroJogador");
	}
	
}
