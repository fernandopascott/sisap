package br.com.sisap.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;


@Entity
@Table(name = "tb_usuario")
public class Usuario {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cd_usuario", nullable = false)
	private Integer cdUsuario;
	@Column(name = "nm_usuario") 
	private String nmUsuario;
	@Column(name = "pw_usuario")
	private String pwUsuario;
		
	
	public Integer getCdUsuario() {
		return cdUsuario;
	}
	
	public void setCdUsuario(Integer cdUsuario) {
		this.cdUsuario = cdUsuario;
	}
	
	public String getNmUsuario() {
		return nmUsuario;
	}
	
	public void setNmUsuario(String nmUsuario) {
		this.nmUsuario = nmUsuario;
	}
	
	public String getPwUsuario() {
		return pwUsuario;
	}
	
	public void setPwUsuario(String pwUsuario) {
		this.pwUsuario = pwUsuario;
	}
	

}

