package model;

public class Typification {
    private final int id;
    private final String name;

    // Constructor
    public Typification(int id, String name) {
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
