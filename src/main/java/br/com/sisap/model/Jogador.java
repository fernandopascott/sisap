package br.com.sisap.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "tb_jogador")
public class Jogador {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cd_jogador", nullable = false)
	private Integer cdJogador;
	
	@Column(name = "nm_jogador")
	private String nmJogador;
	
	@Column(name = "idade_jogador")
	private String idadeJogador;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
    @JoinColumn(name="cd_jogador")
    private List<RespostaJogador> respostaJogadorLista;

	public Integer getCdJogador() {
		return cdJogador;
	}

	public void setCdJogador(Integer cdJogador) {
		this.cdJogador = cdJogador;
	}

	public String getNmJogador() {
		return nmJogador;
	}

	public void setNmJogador(String nmJogador) {
		this.nmJogador = nmJogador;
	}

	public String getIdadeJogador() {
		return idadeJogador;
	}

	public void setIdadeJogador(String idadeJogador) {
		this.idadeJogador = idadeJogador;
	}

	public List<RespostaJogador> getRespostaJogadorLista() {
		return respostaJogadorLista;
	}

	public void setRespostaJogadorLista(List<RespostaJogador> respostaJogadorLista) {
		this.respostaJogadorLista = respostaJogadorLista;
	}
	
	
	
}
