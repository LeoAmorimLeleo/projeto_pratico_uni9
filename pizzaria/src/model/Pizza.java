package model;

public class Pizza {

    private int id;
    private String sabor;
    private String descricao;
    private String tamanho;
    private Float valor;
    private String foto;
    private String tipo;

    public Pizza() {
    }

    public Pizza(int id, String sabor, String descricao, String tamanho, float valor, String foto) {
        this.id = id;
        this.sabor = sabor;
        this.descricao = descricao;
        this.tamanho = tamanho;
        this.valor = valor;
        this.foto = foto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSabor() {
        return sabor;
    }

    public void setSabor(String sabor) {
        this.sabor = sabor;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public float getValor() {
        return valor;
    }

    public void setValor(float valor) {
        this.valor = valor;
    }   

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }
    
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    @Override
    public String toString() {
        return "Bebida{" + "id=" + id + ", nome=" + sabor + ", tipo=" + tipo + ", descricao=" + descricao + ", valor=" + valor + ", tamanho=" + tamanho + ", foto=" + foto + '}';
    }

    
}