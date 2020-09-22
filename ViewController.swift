//
//  ViewController.swift
//  Alunos
//
//  Created by Bruno Diegues on 02/09/20.
//  Copyright © 2020 Bruno Diegues. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomeLabel: UILabel!
    @IBOutlet weak var idadeLabel: UILabel!
    @IBOutlet weak var botaoLabel: UIButton!
    var arrayAlunos:[Aluno] = []
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Setar os valores das labels
        
        var aluno1:Aluno = Aluno(nome: "Bruno", sobrenome: nil, sexo: "Masculino", peso: 70, idade: 34, matricula: "1234", turma: "iOS", periodo: "Noite", matriculado: true)
        var aluno2:Aluno = Aluno(nome: "Fulano", sobrenome: "De Tal", sexo: "Masculino", peso: 56, idade: 20, matricula: "5678", turma: "Android", periodo: "Noite", matriculado: true)
        var aluno3:Aluno = Aluno(nome: "Joana", sobrenome: "da Silva", sexo: "Feminino", peso: 40, idade: 40, matricula: "7890", turma: "iOS", periodo: "Manhã", matriculado: true)
        

        self.arrayAlunos = [aluno1, aluno2, aluno3]
        
        var pessoa1:Pessoa = Pessoa()
        pessoa1.nome = "Bruno"
        
        
        print("Array usando Classe \n \(arrayAlunos)")
        self.nomeLabel.text = "Bruno Diegues"
        self.idadeLabel.text = "34"
        
        // Setar a cor de background das labels
        self.nomeLabel.backgroundColor = .darkGray
        self.idadeLabel.backgroundColor = .blue
        
        // Setar a cor do texto
        self.nomeLabel.textColor = .orange
        self.idadeLabel.textColor = .black
        
        // Arredondar botão
        self.botaoLabel.layer.masksToBounds = true
        self.botaoLabel.layer.cornerRadius = 5
        self.botaoLabel.setTitle("Sortear", for: .normal)
    }
    
    // Ação para o botão
    @IBAction func clicouBotao(_ sender: UIButton) {
//        sender.backgroundColor = .black
        if self.idadeLabel.backgroundColor == .blue {
            self.idadeLabel.backgroundColor = .gray
        }else{
            self.idadeLabel.backgroundColor = .blue
        }
        
        let alunoSorteado: Aluno? = self.arrayAlunos.randomElement()
        
        if let _alunoSorteado = alunoSorteado {
            
            self.nomeLabel.text = _alunoSorteado.nome
            self.idadeLabel.text = String(_alunoSorteado.idade ?? 0)
            
        }
//        self.nomeLabel.text = self.arrayAlunos.randomElement()
        
    }
    
    
    
}

