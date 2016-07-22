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
@Table(name = "tb_pergunta")
public class Pergunta {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cd_pergunta", nullable = false)
	private Integer cdPergunta;
	
	@Column(name = "nm_pergunta")
	private String nmPergunta;
	
	@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.EAGER)
    @JoinColumn(name="cd_pergunta")
    private List<Resposta> respostaLista;

	public Integer getCdPergunta() {
		return cdPergunta;
	}

	public void setCdPergunta(Integer cdPergunta) {
		this.cdPergunta = cdPergunta;
	}

	public String getNmPergunta() {
		return nmPergunta;
	}

	public void setNmPergunta(String nmPergunta) {
		this.nmPergunta = nmPergunta;
	}

	public List<Resposta> getRespostaLista() {
		return respostaLista;
	}

	public void setRespostaLista(List<Resposta> respostaLista) {
		this.respostaLista = respostaLista;
	}	
	
}
