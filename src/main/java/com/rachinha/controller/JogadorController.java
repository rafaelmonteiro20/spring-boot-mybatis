package com.rachinha.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.rachinha.mapper.JogadorMapper;
import com.rachinha.model.Jogador;
import com.rachinha.service.JogadorService;

@Controller
@RequestMapping("/jogadores")
public class JogadorController {

	@Autowired
	private JogadorMapper jogadorMapper;
	
	@Autowired
	private JogadorService service;
	
	@GetMapping("/form")
	public ModelAndView form(Jogador jogador) {
		ModelAndView mv = new ModelAndView("CadastroJogador");
		mv.addObject(jogador);
		return mv;
	}
	
	@PostMapping("/form")
	public String save(Jogador jogador, RedirectAttributes attributes) {
		try {
			service.save(jogador);
			attributes.addFlashAttribute("mensagem", "Jogador salvo com sucesso!");
			return "redirect:/jogadores";
		} catch (Exception e) {
			e.printStackTrace();
			return "CadastroJogador";
		}
	}
	
	@GetMapping("/{id}")
	public ModelAndView prepareUpdate(@PathVariable Integer id) {
		Jogador jogador = jogadorMapper.findById(id);
		return form(jogador);
	}
	
	@GetMapping
	public ModelAndView listAll() {
		ModelAndView mv = new ModelAndView("PesquisaJogadores");
		mv.addObject("jogadores", jogadorMapper.findAll());
		return mv;
	}
	
	@DeleteMapping("/{id}")
	public String excluir(@PathVariable Integer id, RedirectAttributes attributes) {
		service.delete(id);
		attributes.addFlashAttribute("mensagem", "Jogador excluído com sucesso!");
		return "redirect:/jogadores";
	}
	
}
