package com.javou.almoxarifado.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javou.almoxarifado.models.Saida;
import com.javou.almoxarifado.repository.ProdutoRepository;
import com.javou.almoxarifado.repository.SaidaRepository;

@Controller
@RequestMapping("/saida")
public class SaidaController {

	@Autowired
	private SaidaRepository saidaRepository;

	@Autowired
	private ProdutoRepository produtoRepository ;
	
	@GetMapping("/lista")
	public ModelAndView listar() {
		try {
			List<Saida> saidas = saidaRepository.findAll();
			return new ModelAndView("saidas/listarSaidas", "listagem_saidas", saidas );
		} catch (Exception e) {
			return new ModelAndView("erro", "msg_erro", e.toString());
		}
		
	}
	
	
	
	
	
	
	
	
	
	
}
