package br.com.sisap.controller;


import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.sisap.database.GenericDao;
import br.com.sisap.model.Jogador;
import br.com.sisap.model.Pergunta;
import br.com.sisap.model.Resposta;
import br.com.sisap.model.RespostaJogador;

@Controller
public class PerguntaJogoController {

	
	@RequestMapping("/perguntaJogoLista")
	public String listar(Model model) {
		GenericDao<Pergunta> dao = new GenericDao<Pergunta>();		
		System.out.println("#############log perguntaJogoLista#############");		
		
		Collection<Pergunta> perguntaLista = new ArrayList<Pergunta>();
		perguntaLista = dao.listaTudo("from Pergunta");
		
		model.addAttribute("perguntaLista", perguntaLista);		
				
		return "respostaJogadorForm";
	}
	
	
	
	@RequestMapping(value = "/salvarRespostaJogo", method = RequestMethod.POST)
	public String salvar(@Validated Jogador jogador, Integer [] cdRespostaLista, 
						BindingResult result, Model model, HttpSession session) {
		
		GenericDao<Jogador> daoJogador = new GenericDao<Jogador>();
		GenericDao<RespostaJogador> daoRespJogador = new GenericDao<RespostaJogador>();
		System.out.println("#############log salvarRespostaJogador#############");	
		
		daoJogador.adicionarOrAlterar(jogador);
		
		for(Integer cdResposta : cdRespostaLista){				
			
			Resposta resposta = new Resposta();
			resposta.setCdResposta(cdResposta);
			
			daoRespJogador = new GenericDao<RespostaJogador>();
			RespostaJogador respJogador = new RespostaJogador();
			respJogador.setResposta(resposta);
			respJogador.setJogador(jogador);
			
			daoRespJogador.adicionarOrAlterar(respJogador);
		}			
		
		if (result.hasErrors()) {			
			return "error";
		}
		return carregarFinalizacaoJogo(model);
	}
	
	@RequestMapping("/carregarFimJogo")
	public String carregarFinalizacaoJogo(Model model) {
						
		return "fimJogoForm";
	}
	
	@RequestMapping("/pontuacaoLista")
	public String pontuacaoLista(Model model) {
		
		GenericDao<RespostaJogador> daoRespJog = new GenericDao<RespostaJogador>();		
		System.out.println("#############log pontuacaoLista#############");		
		
		Collection<RespostaJogador> respJogadorLista = new ArrayList<RespostaJogador>();
		respJogadorLista = daoRespJog.listaTudo(
				"select new map(rj.jogador as jogador," +
				"		rj.resposta as resposta," +
				"		rj.cdRespostaJogador as cdRespostaJogador," +
				" 		count(rj.resposta.statusResposta) as cont) " +
				"from RespostaJogador rj " +
				"where rj.resposta.statusResposta = true " +
				"group by rj.jogador " );		
			
		model.addAttribute("respJogadorLista", respJogadorLista);		
				
		return "pontuacaoListaForm";
	}
	
}
