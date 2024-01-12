package com.helloWorld.helloWorld.controller;

import java.util.ArrayList;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class HelloWorldController {
	
	@GetMapping("/hello-world")
	public String helloWorld() {
		return "Hello World!";
	}
	
	@GetMapping("/bsms-generation-brasil")
	 public static String[] bsmsGenerationBrasil(){
        String[] bsms = {"Comunicação","Proatividade","Orientação ao detalhe", "Trabalho em equipe", "Mentalidade de crescimento", "Orientação ao futuro", "Responsabilidade pessoal", "Persistência"};
        return bsms;
	}
	
	@GetMapping("/objetivos-aprendizagem")
	 public static String[] objetivosAprendizagem(){
       String[] objetivos = {"Aprender spring boot", "Organizar meu github", "Ler novamente os cookbooks"};
       return objetivos;
	}
}
