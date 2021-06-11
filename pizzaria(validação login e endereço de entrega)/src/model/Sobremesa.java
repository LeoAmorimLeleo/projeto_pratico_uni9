package model;

public class Sobremesa {

    private int id;
    private String nome;
    private String descricao;
    private Float valor;
    private String foto;
    private String tipo;

    public Sobremesa() {
    }

    public Sobremesa(int id, String nome, String descricao, float valor, String foto) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.valor = valor;
        this.foto = foto;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
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
        return "Sobremesa{" + "id=" + id + ", nome=" + nome + ", tipo=" + tipo + ", descricao=" + descricao + ", valor=" + valor + ", foto=" + foto + '}';
    }    
}