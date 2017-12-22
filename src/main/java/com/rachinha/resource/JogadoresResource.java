package com.rachinha.resource;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.rachinha.mapper.JogadorMapper;
import com.rachinha.model.Jogador;

@RestController
@RequestMapping("/rest/jogadores")
public class JogadoresResource {

	private JogadorMapper jogadorMapper;
	
	public JogadoresResource(JogadorMapper jogadorMapper) {
		this.jogadorMapper = jogadorMapper;
	}

	@GetMapping
	public List<Jogador> list() {
		return jogadorMapper.findAll();
	}
	
}
