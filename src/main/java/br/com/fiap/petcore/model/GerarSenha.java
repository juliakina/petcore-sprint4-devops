package br.com.fiap.petcore.model;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Utilitario para gerar o hash BCrypt de uma senha.
 * Uso: informe a senha como argumento de execucao (nenhuma senha fica no codigo).
 */
public class GerarSenha {

    public static void main(String[] args) {

        if (args.length == 0) {
            System.out.println("Informe a senha como argumento de execucao.");
            return;
        }

        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

        String senha = encoder.encode(args[0]);

        System.out.println(senha);
    }
}
