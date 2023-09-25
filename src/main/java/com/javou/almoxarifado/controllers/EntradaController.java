package com.javou.almoxarifado.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javou.almoxarifado.models.Entrada;
import com.javou.almoxarifado.models.Produto;
import com.javou.almoxarifado.repository.EntradaRepository;
import com.javou.almoxarifado.repository.ProdutoRepository;

@Controller
@RequestMapping("/entrada")
public class EntradaController {
	
	@Autowired
	private EntradaRepository entradaRepository;
	
	@Autowired
	private ProdutoRepository produtoRepository;
	
	
//	LISTAR ENTRADAS
	@GetMapping("/lista")
	public ModelAndView listar() {
		try {
			List<Entrada> entradas = entradaRepository.findAll();
			return new ModelAndView("entradas/listarEntradas", "listagem_entradas", entradas);
		} catch (Exception e) {
			return new ModelAndView("erro", "msg_erro", e.toString());
		}	
	}
	

//	CADASTRAR ENTRADAS
	@GetMapping("/novo")
	public ModelAndView incluir() {
		try {
			List<Produto> produtos = produtoRepository.findAll();
			return new ModelAndView("entradas/novaEntrada", "lista_produtos", produtos);
		} catch (Exception e) {
			return new ModelAndView("erro", "msg_erro", e.toString());
		}
	}
	
	@PostMapping("/novo")
	public String incluir(Entrada entrada, Model model) {
		try {
			entradaRepository.save(entrada);
			
			System.out.println(
			  "id: " +
			  entrada.getId() 
			+ " Quant:  " 
			+ entrada.getQuantidade()
			+ " Data: "
			+ entrada.getDataEntrada()
			+ " Produto: "
			+ entrada.getProduto() + " "
			);
			
			return "redirect:/entrada/lista";
			
		} catch (Exception e) {
			model.addAttribute("msg_erro", e.toString());
			return "erro";
		}
	}
	
//	REMOVER ENTRADAS
	@GetMapping("/remover/{id}")
	public ModelAndView remover(@PathVariable("id") int id) {
		try {
			Entrada entrada = entradaRepository.getReferenceById(id);
			return new ModelAndView("entradas/removerEntrada", "entrada", entrada);
			
		} catch (Exception e) {
			 return new ModelAndView("erro", "msg_erro", e.toString()); 
		}	
	}
	
	@PostMapping("/remover")
	public String remover(@RequestParam("id") int id, Model model) {
		try {
			entradaRepository.deleteById(id);
			return "redirect:/entrada/lista";
		} catch (Exception e) {
			model.addAttribute("msg_erro", e.toString());
			return "erro";
			
		}
	}
	
	@RequestMapping("/alterar/{id}")
	public ModelAndView alterar(@PathVariable("id") int id) {
		try {
			Entrada entrada = entradaRepository.getReferenceById(id);
			return new ModelAndView("entradas/alterarEntrada", "entrada", entrada);
		} catch (Exception e) {
			return new ModelAndView("erro", "msg_erro", e.toString());
		}
	}
	
	@PostMapping("/alterar")
	public String alterar(Entrada entrada, Model model) {
		try {
			entradaRepository.save(entrada);
			return "redirect:/entrada/lista";
		} catch (Exception e) {
			model.addAttribute("msg_erro", e.toString());
			return "erro";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}