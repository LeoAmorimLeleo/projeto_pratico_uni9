package model;

public class Bebida {

    private int id;
    private String nome;
    private String descricao;
    private float valor;
    private String volume;
    private String foto;

    public Bebida() {
    }

    public Bebida(int id, String nome, String descricao, float valor, String volume, String foto) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.valor = valor;
        this.volume = volume;
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

    public String getVolume() {
        return volume;
    }

    public void setVolume(String volume) {
        this.volume = volume;
    }   

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    @Override
    public String toString() {
        return "Bebida{" + "id=" + id + ", nome=" + nome + ", descricao=" + descricao + ", valor=" + valor + ", volume=" + volume + ", foto=" + foto + '}';
    }

    
}