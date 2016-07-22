package br.com.sisap.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "tb_resposta_jogador")
public class RespostaJogador {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cd_resposta_jogador", nullable = false)
	private Integer cdRespostaJogador;
	
	@ManyToOne
    @JoinColumn(name = "cd_jogador", nullable = false)
	private Jogador jogador;
	
	@ManyToOne
    @JoinColumn(name = "cd_resposta", nullable = false)
	private Resposta resposta;

	public Integer getCdRespostaJogador() {
		return cdRespostaJogador;
	}

	public void setCdRespostaJogador(Integer cdRespostaJogador) {
		this.cdRespostaJogador = cdRespostaJogador;
	}

	public Jogador getJogador() {
		return jogador;
	}

	public void setJogador(Jogador jogador) {
		this.jogador = jogador;
	}

	public Resposta getResposta() {
		return resposta;
	}

	public void setResposta(Resposta resposta) {
		this.resposta = resposta;
	}
}
