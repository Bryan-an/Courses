package mysql.data;

import mysql.domain.Person;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PersonDAO {

    private Connection transactionalConnection;
    private Connection connection;
    private PreparedStatement statement;
    private ResultSet results;

    public PersonDAO(Connection transactionalConnection){
        this.transactionalConnection = transactionalConnection;
    }

    public static void select(){
        System.out.println(long.class);
    }



}
