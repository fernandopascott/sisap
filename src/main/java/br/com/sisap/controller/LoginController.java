package br.com.sisap.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import br.com.sisap.database.GenericDao;
import br.com.sisap.model.Usuario;

@Controller
public class LoginController {
		
	@RequestMapping("acessoSistema")
	public String loginForm() {
		return "loginForm";
	}

	@RequestMapping("efetuaLogin")
	public String efetuaLogin(@Validated Usuario usuario, HttpSession session, HttpServletRequest request) {		
		System.out.println("#############log efetuaLogin#############");	
		GenericDao<Usuario> dao = new GenericDao<Usuario>();		
		dao = carregaDao();	
		
		if(dao.naoExisteUsuario(usuario)) {		
			session.setAttribute("msgErrorPasword", "Usuário ou Senha inválida");
			return "redirect:acessoSistema";		    
		} else {
			session.removeAttribute("msgErrorPasword");
		}
		session.setAttribute("usuarioLogado", usuario);
		return "indexForm";
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		System.out.println("#############log logout#############");
		session.invalidate();
		return "redirect:acessoSistema";
	}
	
	private GenericDao<Usuario> carregaDao(){
		return new GenericDao<Usuario>();
	}
}
