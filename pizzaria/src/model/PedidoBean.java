package model;
import java.util.ArrayList;
public class PedidoBean {
	
	private int id;
	private int id_cliente;
	private ArrayList<PizzaBean> pizzas;
	private int qtd_pizza;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_cliente() {
		return id_cliente;
	}
	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}
	public ArrayList<PizzaBean> getPizzas() {
		return pizzas;
	}
	public void setPizzas(ArrayList<PizzaBean> pizzas) {
		this.pizzas = pizzas;
	}
	public int getQtd_pizza() {
		return qtd_pizza;
	}
	public void setQtd_pizza(int qtd_pizza) {
		this.qtd_pizza = qtd_pizza;
	}
}
