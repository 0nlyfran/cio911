package app;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;
import utils.CommonUtils;
import utils.Paths;

/**
 * Clase principal de la aplicación JavaFX.
 * Extiende de Application, lo que permite iniciar la interfaz gráfica.
 */
public class MainApp extends Application {

    /**
     * Método start() es el punto de entrada de la aplicación JavaFX una vez que se ha inicializado.
     * Este método carga la vista principal, establece el título de la ventana y muestra el escenario.
     * @param primaryStage El Stage principal de la aplicación, donde se renderiza la interfaz.
     */
    @Override
    public void start(Stage primaryStage) {
        try {
            // Cargar el archivo FXML que define la interfaz de usuario desde la ruta definida en Paths.MAIN_VIEW
            FXMLLoader loader = new FXMLLoader(getClass().getResource(Paths.MAIN_VIEW));

            // Crear una nueva escena con el contenido cargado desde el archivo FXML
            Scene scene = new Scene(loader.load());

            // Asignar la escena al Stage principal
            primaryStage.setScene(scene);

            // Establecer el título de la ventana principal
            primaryStage.setTitle(CommonUtils.Titles.TITLE_SYSTEM);

            // Mostrar el Stage (ventana) principal
            primaryStage.show();
        } catch (Exception e) {
            // Capturar cualquier excepción que ocurra durante el proceso de carga de la interfaz
            throw new RuntimeException(e); // Lanza una excepción si ocurre algún error
        }
    }

    /**
     * Método main() es el punto de entrada de la aplicación.
     * Llama al método launch() que inicia el ciclo de vida de la aplicación JavaFX.
     * @param args Argumentos pasados desde la línea de comandos.
     */
    public static void main(String[] args) {
        launch(args); // Inicia la aplicación JavaFX
    }
}
