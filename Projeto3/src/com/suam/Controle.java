package com.suam;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.suam.bean.Usuario;
import com.suam.service.UsuarioService;

/**
 * Servlet implementation class Controle
 */
@WebServlet("/Controle")
public class Controle extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controle() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		String cpf = request.getParameter("cpf");
		String data = request.getParameter("data");
		String entrada = request.getParameter("entrada");
		String saida = request.getParameter("saida");
		String acao = request.getParameter("acao");

		try {

			if (acao.equals("1")) {
				String login = request.getParameter("login");
				String senha = request.getParameter("senha");
				boolean autenticou = UsuarioService.autenticar(login, senha);
				if (autenticou) {
					session.setAttribute("login", login);
					if(login.equals("adm")){			
						RequestDispatcher r = request.getRequestDispatcher("qualquercoisa.jsp");
						r.forward(request, response);
					}else{
						RequestDispatcher r = request.getRequestDispatcher("Feed.jsp");
						r.forward(request, response);
					}	
				}

				else {
					RequestDispatcher r = request.getRequestDispatcher("index.html");
					r.forward(request, response);
				}

			}
			if (acao.equals("2")) {
				String login = request.getParameter("login");
				String senha = request.getParameter("senha");
				String cargo = request.getParameter("cargo");
				Usuario usuario = new Usuario();
				usuario.setLogin(login);
				usuario.setSenha(senha);
				usuario.setCargo(cargo);
				UsuarioService.inserir(usuario);
				RequestDispatcher r = request.getRequestDispatcher("usuario-inserido.html");
				r.forward(request, response);

			}
			if (acao.equals("3")) {
				String login = request.getParameter("login");
				session.setAttribute("login", login);
				RequestDispatcher r = request.getRequestDispatcher("usuario-inserido.html");
				r.forward(request, response);

			}
			if (acao.equals("4")) {
				List<Usuario> listaInfo = UsuarioService.infoConsultar(cpf, data);
					request.setAttribute("listaInfo",listaInfo);
					RequestDispatcher r = request.getRequestDispatcher("Relatorio.jsp");
					r.forward(request, response);
				}
			if(acao.equals("5")){
				Usuario info = new Usuario();
				info.setCpf(cpf);
				info.setData(data);
				info.setEntrada(entrada);
				info.setSaida(saida);
				UsuarioService.info(info);
				request.setAttribute("cpf", info.getCpf());
				request.setAttribute("data", info.getData());
				request.setAttribute("entrada", info.getEntrada());
				request.setAttribute("saida", info.getSaida());
				RequestDispatcher r = request.getRequestDispatcher("Relatorio.jsp");
				r.forward(request, response);
			}

		} catch (Exception e) {
			RequestDispatcher r = request.getRequestDispatcher("erro.jsp");
			r.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		session.invalidate();
		RequestDispatcher r = request.getRequestDispatcher("index.html");
		r.forward(request, response);
	}

}
