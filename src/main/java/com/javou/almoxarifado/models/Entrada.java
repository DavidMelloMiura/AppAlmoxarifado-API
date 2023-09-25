package com.javou.almoxarifado.models;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "entrada")
public class Entrada {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column (name = "id")
	private int id;

//	@Temporal(value = TemporalType.DATE)
//	@DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "dataEntrada")
	private Date dataEntrada;
	
	@Column(name = "quantidade")
	private int quantidade;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "produtoId")
	private Produto produto;
	
	

	
	
	
		
	// Getters and Setters
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public Date getDataEntrada() {
		return dataEntrada;
	}
	
	public void setDataEntrada(Date dataEntrada) {
		this.dataEntrada = dataEntrada;
	}
	
//	Propriedade auxiliar para obter a data do corpo da requisição
	public void setDataEntrada(String dataEntrada) throws ParseException {
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		this.setDataEntrada(df.parse(dataEntrada));
	}
	
	
	public Produto getProduto() {
		return produto;
	}
	
	public void setProduto(Produto produto) {
		this.produto = produto;
	}
	
	public int getQuantidade() {
		return quantidade;
	}
	
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
	


	@Override
	public String toString() {
		return String.format("[%d, %s, %d, %s]",
				this.getId(), this.getDataEntrada(), this.getQuantidade(), this.getProduto());
	}
}



