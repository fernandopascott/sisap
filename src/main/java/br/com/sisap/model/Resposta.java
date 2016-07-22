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
@Table(name = "tb_resposta")
public class Resposta {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cd_resposta", nullable = false)
	private Integer cdResposta;
	
	@Column(name = "nm_resposta")
	private String nmResposta;
	
	@Column(name = "sts_resposta")
	private Boolean statusResposta;
	
	@ManyToOne
    @JoinColumn(name = "cd_pergunta", nullable = false)
	private Pergunta pergunta;

	public Integer getCdResposta() {
		return cdResposta;
	}

	public void setCdResposta(Integer cdResposta) {
		this.cdResposta = cdResposta;
	}

	public String getNmResposta() {
		return nmResposta;
	}

	public void setNmResposta(String nmResposta) {
		this.nmResposta = nmResposta;
	}

	public Boolean getStatusResposta() {
		return statusResposta;
	}

	public void setStatusResposta(Boolean statusResposta) {
		this.statusResposta = statusResposta;
	}

	public Pergunta getPergunta() {
		return pergunta;
	}

	public void setPergunta(Pergunta pergunta) {
		this.pergunta = pergunta;
	}
	
}
