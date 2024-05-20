package Canciones;
import java.sql.SQLException;
import java.util.ArrayList;
import crud.CRUD;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;


public class CancionesService implements CRUD<Canciones>{
    Connection conn;
    public CancionesService(Connection conn){
        this.conn = conn;
    }

    public ArrayList<Canciones> requestAll() throws SQLException{
        Statement statement = null;
        ArrayList<Canciones> result = new ArrayList<Canciones>();
        statement = this.conn.createStatement();   
        String sql = "SELECT codCancion, artista, cancion FROM canciones_users";
        // Ejecución de la consulta
        ResultSet querySet = statement.executeQuery(sql);
        // Recorrido del resultado de la consulta
        while(querySet.next()) {
            long codCancion = querySet.getLong("codCancion");
            String artista = querySet.getString("artista");
            String cancion = querySet.getString("cancion");

            result.add(new Canciones(codCancion, artista, cancion));
        } 
        statement.close();    
        return result;
    }

    public Canciones requestById(int codCancion) throws SQLException{
        Statement statement = null;
        Canciones result = null;
        statement = this.conn.createStatement();    
        String sql = String.format("SELECT codCancion, artista, cancion FROM canciones_users WHERE codCancion=%d", codCancion);
        // Ejecución de la consulta
        ResultSet querySet = statement.executeQuery(sql);
        // Recorrido del resultado de la consulta
        if(querySet.next()) {
            String artista = querySet.getString("artista");
            String cancion = querySet.getString("cancion");

            result = new Canciones(codCancion, artista, cancion);
        }
        statement.close();    
        return result;
    }

    public long create(String artista, String cancion) throws SQLException{
        Statement statement = null;
        statement = this.conn.createStatement();    
        String sql = String.format("INSERT INTO canciones_users (artista, cancion) VALUES ('%s', '%s')", artista, cancion);
        // Ejecución de la consulta
        int affectedRows = statement.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
        if (affectedRows == 0) {
            throw new SQLException("Creating user failed, no rows affected.");
        }
        try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
            if (generatedKeys.next()) {
                long codCancion = generatedKeys.getInt(1);
                statement.close();
                return codCancion;
            }
            else {
                statement.close();
                throw new SQLException("Creating user failed, no ID obtained.");
            }
        }
    }

    public int update(Canciones object) throws SQLException{
        long codCancion = object.getCodCancion();
        String artista = object.getArtista();
        String cancion = object.getCancion();
        Statement statement = null;
        statement = this.conn.createStatement();    
        String sql = String.format("UPDATE canciones_users SET artista = '%s', cancion = '%s' WHERE codCancion=%d", artista, cancion, codCancion);
        // Ejecución de la consulta
        int affectedRows = statement.executeUpdate(sql);
        statement.close();
        if (affectedRows == 0)
            throw new SQLException("Creating user failed, no rows affected.");
        else
            return affectedRows;
    }

    public boolean delete(long codCancion) throws SQLException{
        Statement statement = null;
        statement = this.conn.createStatement();    
        String sql = String.format("DELETE FROM canciones_users WHERE codCancion=%d", codCancion);
        // Ejecución de la consulta
        int result = statement.executeUpdate(sql);
        statement.close();
        return result==1;
    }

    @Override
    public ArrayList<Canciones> query(String column, String value) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'query'");
    }

    @Override
    public ArrayList<Canciones> query(String column, long value) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'query'");
    }

    @Override
    public ArrayList<Canciones> requestAll(String sortedBy) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'requestAll'");
    }

    @Override
    public long create(Canciones model) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'create'");
    }

    @Override
    public Canciones requestById(long id) throws SQLException {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'requestById'");
    }

    

}

    
