//
//  DetailViewController.swift
//  CaciqueAppZero
//
//  Created by Bruno Neves Oliveira on 15/06/21.
//


import Foundation
import UIKit

class DetailViewController: UIViewController{
    var concepts: [TypeConcept] = []
    var indexDetail: Int!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tituloTipos: UILabel!
    @IBOutlet weak var detailImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        concepts.append(TypeConcept(title: "Léxico Tipográfico", text: "A tipografia tem um vasto léxico que descreve toda a sua diversidade. \n\nA seguir, estão apresentados alguns desses termos tipográficos\n\n", color: .systemBackground, image: UIImage(named: "lexico") ?? UIImage() ))
        concepts.append(TypeConcept(title: "Cor Tipográfica", text: "A Cor Tipográfica refere-se à quantidade de área preenchida pela cor de um texto em relação a um mesmo espaço, tendo como parâmetros a densidade dos  distintos caracteres e pesos.\n\n Assim, quanto maior o peso, mais denso será o texto e, portanto, mais cor haverá. Utilizar fontes com Negrito ou Black (e variantes) resultará  numa presença mais pronunciada na página.\n\n A combinação de letra, espaçamento entre as palavras (ou espacejamento) e as linhas resulta na Cor tipográfica."))
        concepts.append(TypeConcept(title: "Alinhamento", text: "Para dar diferentes tratamentos e apresentações horizontais, o texto pode ser posicionado de diferentes modos. Este texto está alinhado ao topo e à esquerda do bloco de texto.\n\nEste texto está centralizado verticalmente ao corpo da página. \n\nEste texto está alinhado ao mesmo tempo à direita e abaixo do bloco de texto. \n\nPodemos justificar horizontal e verticalmente esse texto para forçá-lo a se distribuir por maior parte do espaço disponível."))
        concepts.append(TypeConcept(title: "Espacejamento: Entrelinhas", text: "Existe um espacejamento adicional, que é aquele feito entre as linhas (entrelinhas) de um texto.\n\nO entrelinhas de corpo é o espaço padrão produzido por cada fonte de forma que as letras acima e abaixo não se toquem. (100% espacejamento)\n\nValores negativos de entrelinhas podem ser usados, sobrepondo linhas.\n\nJá o uso abusivo de grande espaço entrelinhas dificulta a leitura eficiente pelo olho humano, e esse espaço em branco subjuga a presença e a cor do texto. (200%)"))
        concepts.append(TypeConcept(title: "Espacejamento: Entre as letras", text: "Tracking é o nome que se dá ao espacejamento entre as letras, comprimindo-as ou extendendo as palavras do texto, (que pode ficar desarticulado).\n\n\n\nO espaço entre as palavras varia muito de acordo com o meio: num livro será maior, num jornal mais reduzido.\n\nNote que todo alinhamento justificado automaticamente varia o espaço entre palavras, distribuindo-as para preencher ao longo dos limites horizontais.\n\n\n\nKerning é uma forma de diminuir pequenos espaços vazios entre alguns pares de letras, note a mudança:\n\nVA LT AT LV (sem Kerning)\n\nVA LT AT LV (com Kerning)"))
        concepts.append(TypeConcept(title: "Escrita Medieval", text: "A escrita medieval parece pesada e difícil de ler, mas só parece: legibilidade tem a ver com familiaridade. Qualquer leitor da idade média, lendo esse texto... iria tirar de letra! \n\nA esse tipo de escrita “fraturada” ou Gótica dá-se o nome de Fraktur, e foi a que predominou por muitos séculos antes da modernidade. \n\nHoje em dia ainda pode-se ver o eco desse passado quando certificados ou livros de contos de fada usam as iniciais maiúsculas, bastante pronunciadas, no início do texto."))
        concepts.append(TypeConcept(title: "As Serifas", text: "Serifas são aqueles pequenos traços e prolongamentos que vemos no fim das hastes das letras em algumas fontes. Consideradas meramente decorativas, hoje em dia se sabe que, mesmo pouco visíveis, facilitam a leitura, guiando o olho ao longo das linhas. São recomendadas para textos longos.\n\nEm contraste, tipos sem serifas (sans-serif, do francês) irão possuir um visual bastante enxuto e minimalista, mas sua leitura contínua se torna rapidamente cansativa para o olho, sendo portanto uma fonte recomendada apenas para textos curtos.\nTítulos, cabeçalhos, notas de rodapé e legendas são usos ideais."))
        concepts.append(TypeConcept(title: "Cursiva e Symbol", text: "Tipos de letras cursivos buscam imitar a caligrafia manual, que foi a base da escrita humana por muitos séculos, seja por pena e tinta, canetas-tinteiro e até pincéis.\n\nA tipologia Symbol agrega todas as fontes que não se enquadraram nas outras classificações, tais como fontes decorativas, Display e Experimentais."))

        
        self.view.backgroundColor = concepts[indexDetail].color
        
        
        nameLabel.text = concepts[indexDetail].text
        self.navigationController?.title = concepts[indexDetail].title
        tituloTipos.text = concepts[indexDetail].title
        tituloTipos.font = UIFont.systemFont(ofSize: 20, weight: .medium)
        detailImage.image = concepts[indexDetail].image
        
        
    }
}
