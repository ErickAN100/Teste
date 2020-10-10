package com.suam.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.suam.bean.Usuario;
import com.suam.factory.ConnectionFactory;

public class UsuarioService {

	public static void inserir(Usuario usuario) throws SQLException {
		Connection conexao = ConnectionFactory.getConnection();

		String sql = "INSERT INTO usuario (login,senha,cargo) VALUES (?,?,?)";
		try {
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, usuario.getLogin());
			ps.setString(2, usuario.getSenha());;
			ps.setString(3, usuario.getCargo());
			
			ps.execute();
			conexao.commit();
		} catch (SQLException e) {
			// Erro, provoca um Rollback (volta ao estado anterior do banco)
			conexao.rollback();
			e.printStackTrace();
			throw new SQLException();
		} finally {
			// fechar a conexão
			conexao.close();
		}
	}
	
	public static List<Usuario> consultar(String login, String senha) throws SQLException {
		Connection conexao = ConnectionFactory.getConnection();
		List<Usuario> listaUsuario = new ArrayList<Usuario>();
		
		String sql = "SELECT login,senha FROM usuario where login=? and senha=?";

		try {
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, login);
			ps.setString(2, senha);
			
			ResultSet rs = ps.executeQuery();
			
			
			while(rs.next()){
				Usuario usuario = new Usuario();
				usuario.setLogin(rs.getString("login"));
				usuario.setSenha(rs.getString("senha"));
				listaUsuario.add(usuario);
			}
			
			conexao.commit();
		} catch (SQLException e) {
			// Erro, provoca um Rollback (volta ao estado anterior do banco)
			conexao.rollback();
		} finally {
			// fechar a conexão
			conexao.close();
		}
		
		return listaUsuario;
	}
	
	public static boolean autenticar(String login, String senha) throws SQLException {
		
		List<Usuario> listaUsuario = consultar(login, senha);
		
		if(!listaUsuario.isEmpty()){
			return true;
		} 
		
		else{
			return false;
		}
		
	}
	
	public static void info(Usuario info) throws SQLException {
		Connection conexao = ConnectionFactory.getConnection();
	
		String sql = "INSERT INTO ponto (cpf,entrada,saida,data) VALUES (?,?,?,?)";
	
		try {
			
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, info.getCpf());
			ps.setString(2, info.getEntrada());
			ps.setString(3, info.getSaida());
			ps.setString(4, info.getData());
			
			ps.execute();
			conexao.commit();
		} catch (SQLException e) {
			// Erro, provoca um Rollback (volta ao estado anterior do banco)
			conexao.rollback();
			e.printStackTrace();
			throw new SQLException();
		} finally {
			// fechar a conexão
			conexao.close();
		}
	}
	public static List<Usuario> infoConsultar(String cpf, String data) throws SQLException {
		Connection conexao = ConnectionFactory.getConnection();
		List<Usuario> listaInfo = new ArrayList<Usuario>();
		
		String sql = "SELECT cpf,entrada,saida,data FROM ponto where cpf=? and data=?";

		try {
			PreparedStatement ps = conexao.prepareStatement(sql);
			ps.setString(1, cpf);
			ps.setString(2, data);
			
			ResultSet rs = ps.executeQuery();
			
			
			while(rs.next()){	
				Usuario info = new Usuario();
				info.setCpf(rs.getString("cpf"));
				info.setEntrada(rs.getString("entrada"));
				info.setSaida(rs.getString("saida"));
				info.setData(rs.getString("data"));
				listaInfo.add(info);
			}
			
			conexao.commit();
		} catch (SQLException e) {
			// Erro, provoca um Rollback (volta ao estado anterior do banco)
			conexao.rollback();
		} finally {
			// fechar a conexão
			conexao.close();
		}
		
		return listaInfo;
	}
public static boolean infoconfirm(String cpf, String data) throws SQLException {
		
		List<Usuario> listainfo = infoConsultar(cpf, data);
		
		if(!listainfo.isEmpty()){
			return true;
		} 
		
		else{
			return false;
		}
		
	}
	
}
