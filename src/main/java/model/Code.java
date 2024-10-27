package model;

public class Code {
    private final int id;
    private final String name;

    // Constructor
    public Code(int id, String name) {
        this.id = id;
        this.name = name;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return name;  // Para que se muestre correctamente en la interfaz
    }
}
