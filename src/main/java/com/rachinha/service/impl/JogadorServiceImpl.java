package com.rachinha.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rachinha.mapper.JogadorMapper;
import com.rachinha.model.Jogador;
import com.rachinha.service.JogadorService;

@Service
public class JogadorServiceImpl implements JogadorService {

	@Autowired
	private JogadorMapper jogadorMapper;
	
	@Override
	public void save(Jogador jogador) {
		if(jogador.isNovo()) {
			jogadorMapper.insert(jogador);
		} else {
			jogadorMapper.update(jogador);
	
		}
	}

	@Override
	public void delete(Integer id) {
		jogadorMapper.delete(id);
	}

}
