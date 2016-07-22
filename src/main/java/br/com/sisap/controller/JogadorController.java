package br.com.sisap.controller;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.sisap.database.GenericDao;
import br.com.sisap.model.Jogador;

@Controller
public class JogadorController {
	
	@RequestMapping(value = "/carregarPontuacaoDetalhe", method = RequestMethod.GET)
	public String carregar(@RequestParam("cdJogador") Integer cdJogador, Model model) {
		GenericDao<Jogador> dao = new GenericDao<Jogador>();
		System.out.println("#############log carregarPontuacaoDetalhe#############");		
		
		Jogador jogador = new Jogador();
		
		if(cdJogador != null){
			jogador = dao.carrega(cdJogador, Jogador.class);
			model.addAttribute("jogador", jogador);
		}
		
		return "pontuacaoDetalheForm";
	}
	
	@RequestMapping(value = "/jogadorLista", method = RequestMethod.GET)
	public String lista(Model model) {
		
		GenericDao<Jogador> dao = new GenericDao<Jogador>();
		System.out.println("#############log jogadorLista#############");		
		
		Collection<Jogador> jogadorLista = new ArrayList<Jogador>();
		jogadorLista = dao.listaTudo("from Jogador");
		
		model.addAttribute("jogadorLista", jogadorLista);
		
		return "jogadorListaForm";
	}

}
