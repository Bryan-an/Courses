package mysql;

import javazoom.jl.decoder.JavaLayerException;
import mysql.data.Connect;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javazoom.jl.player.*;

public class Main {

    public static void main(String[] args) {
        try (Connection connection = Connect.getConnection();
             PreparedStatement statement = connection.prepareStatement(
                     "UPDATE instructors SET music=? WHERE id=1")
             ) {

            InputStream music = new FileInputStream(new File("C:\\Users\\bryan\\Music\\Programación-ProyectoFinal\\High NCS Release.mp3"));

            Player player = new Player(music);
            player.play();


            /*statement.setBlob(1, music);
            
            statement.executeUpdate();*/
            
        } catch (SQLException | FileNotFoundException | JavaLayerException throwable) {
            throwable.printStackTrace();
        }
    }

}
