//
//  SubTopics.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 25/05/21.
//

import Foundation
import SwiftUI



class Item: ObservableObject, Hashable, Identifiable{
    
    @Published var name : String
    @Published var description : String
    @Published var time : Int
    @Published var ingredients : [String]
    @Published var portion : Int
    @Published var veg : Bool
    @Published var introduction : String
    @Published var steps : [String]
    
    var id: UUID = UUID()
    
    
    //Receitas
    
    static var cafeDaManha: [Item] = {
        let mock1 = Item(name: "Panqueca Americana")
        mock1.ingredients.append("1 e 1/4 xícara (chá) de farinha de trigo")
        mock1.ingredients.append("1 colher (sopa) de açúcar")
        mock1.ingredients.append("3 colheres (chá) de fermento em pó")
        mock1.ingredients.append("2 ovos levemente batidos")
        mock1.ingredients.append("1 xícara (chá) de leite")
        mock1.ingredients.append("2 colheres (sopa) de manteiga derretida")
        mock1.ingredients.append("pitada de sal")
        mock1.ingredients.append("óleo")
        
        mock1.description = "Misture em um recipiente: a farinha, o açúcar, o fermento e o sal. Em outro recipiente, misture os ovos, o leite e a manteiga. Acrescente os líquidos aos secos, sem misturar em excesso. O ponto da massa não deve ser muito líquido, deve escorrer lentamente. Aqueça e unte a frigideira com óleo, coloque a massa no centro, cerca de 1/4 xícara por panqueca.Vire a massa para assar do outro lado e está pronto! "
        mock1.time = 40
        mock1.portion = 8
        
        let mock2 = Item(name: "Omelete")
        mock2.ingredients.append("2 ovos")
        mock2.ingredients.append("1 pitada de sal")
        mock2.ingredients.append("1 fatia de presunto")
        mock2.ingredients.append("2 fatias de queijo")
        mock2.ingredients.append("tempero verde a gosto")
        mock2.ingredients.append("caldo de galinha a gosto")
       
        mock2.description = "Bata os 2 ovos, pode ser na batedeira ou não. Após ter batido bem, coloque-o na frigideira já untada com óleo, acrescente o sal, o presunto picado em quadradinhos e as duas fatias de queijo (não precisa picar o queijo). Coloque os temperos a gosto, espere ficar firme, e vire o omelete. Está pronto um omelete delicioso, bom apetite!"
        mock2.time = 4
        mock2.portion = 1
        
        let mock3 = Item(name: "Mingau")
        mock3.ingredients.append("1 colher (sopa) farelo de aveia")
        mock3.ingredients.append("1 colher (sopa) aveia em flocos")
        mock3.ingredients.append("1 xícara (chá) leite a sua escolha")
        mock3.ingredients.append("1 Banana")
        mock3.ingredients.append("1 colher (chá) baunilha essência")
        mock3.ingredients.append("1 colher (chá) adoçante")
        mock3.ingredients.append("1 colher (chá) canela")
        
        mock3.description = "Em uma panela, aqueça o leite e coloque o farelo e a aveia em flocos.Mexa até engrossar. Desligue o fogo e acrescente a essência de baunilha e o adoçante. Corte 3 rodelas de banana e separe. Amasse o restante da banana e acrescente ao mingau. Sirva em um recipiente, polvilhe canela e enfeite com as rodelas de banana."
        mock3.time = 15
        mock3.portion = 1
        mock3.veg = true
        
        let mock4 = Item(name: "Muffin de Banana")
        mock4.ingredients.append("1 e 1/2 xícaras de farinha de trigo peneirada")
        mock4.ingredients.append("1 colher (chá) de bicarbonato de sódio")
        mock4.ingredients.append("1 colher (chá) de fermento em pó")
        mock4.ingredients.append("1/2 colher (chá) de sal")
        mock4.ingredients.append("3 bananas (grandes) amassadas (purê)")
        mock4.ingredients.append("3/4 xícara de açúcar refinado")
        mock4.ingredients.append("1 ovo levemente batido")
        mock4.ingredients.append("1/3 xícara de manteiga sem sal derretida")
        mock4.ingredients.append("1/3 xícara de açúcar demerara")
        mock4.ingredients.append("2 colheres (sopa) de farinha de trigo")
        mock4.ingredients.append("1/2 colher (chá) de canela em pó")
        mock4.ingredients.append("1 colher (sopa) de margarina ou manteiga")
        
        mock4.description = "Preaqueça o forno a 190° C. Unte levemente as formas para muffins ou use forminhas de papel. Em uma tigela grande misture bem a farinha de trigo peneirada (1 xícara e 1/2), o bicarbonato de sódio, o fermento em pó e o sal. À parte, em outra travessa, misture muito bem as bananas amassadas, o ovo, o açúcar refinado e a manteiga derretida. Depois coloque a mistura de bananas na mistura de farinha delicadamente-só o suficiente para incorporar. Coloque a mistura pronta nas forminhas para muffins com uma colher grande. Misture em uma vasilha o açúcar demerara, a farinha de trigo (2 colheres), a canela em pó e a margarina (ou manteiga), misture bem até a mistura se tornar uma farofa granulada. Espalhe sobre os muffins essa farofa. Leve ao forno preaquecido por 18 a 20 minutos, até o palito de dentes sair limpo."
        mock4.time = 35
        mock4.portion = 10
        
        let mock5 = Item(name: "Café Gelado")
        mock5.ingredients.append("1/2 litro de café forte")
        mock5.ingredients.append("Leite e açucar a gosto")
    
        
        mock5.description = "Prepare um café forte. Deixe esfriar. Coloque numa fôrma de cubinhos de gelo e congele. Depois que o café estiver congelado, retire uns 4 a 5 cubos de gelo e coloque no liquidificador. Acrescente o leite e açúcar a gosto. Bata até que os cubos se desfaçam e a mistura fique cremosa. Despeje em copos altos. Decore a gosto e sirva imediatamente."
        mock5.time = 15
        mock5.portion = 2
        
        return [mock1,mock2,mock3,mock4,mock5]
    }()
    
    static var almoço: [Item] = {
        let mock1 = Item(name: "Arroz")
        mock1.ingredients.append("1 xícara de arroz lavado")
        mock1.ingredients.append("2 xícaras de água fervente")
        mock1.ingredients.append("1 dente de alho amassado")
        mock1.ingredients.append("1/4 de cebola picada")
        mock1.ingredients.append("azeite o suficiente")
        mock1.ingredients.append("sal a gosto")
        
        mock1.description = "Refogue o alho e a cebola no azeite. Coloque o arroz e deixe fritar por cerca de 30 segundos. Adicione a água fervente e o sal. Abaixe o fogo e deixe cozinhar até a água quase secar. Tampe a panela e aguarde cerca de 20 minutos antes de servir. Se desejar fazer mais, é só seguir as proporções, principalmente da água."
        mock1.time = 20
        mock1.portion = 3
        mock1.veg = true
        
        let mock2 = Item(name: "Almôndegas")
        mock2.ingredients.append("500 g de carne moída")
        mock2.ingredients.append("2 colheres (sopa) de azeite de oliva (30 ml)")
        mock2.ingredients.append("1 xícara de cebola bem picada (60 g)")
        mock2.ingredients.append("1 ovo")
        mock2.ingredients.append("150 g de farinha de rosca")
        mock2.ingredients.append("sal a gosto")
        mock2.ingredients.append("pimenta-do-reino a gosto")
        mock2.ingredients.append("395 g de molho de tomate")
        
        mock2.description = "Misture a carne com o ovo, a cebola, o sal, um pouco de azeite de oliva (ou óleo) e a pimenta. Agregue a farinha até dar o ponto de enrolar as almôndegas. Faça pequenas bolinhas. Em uma panela com um pouco de azeite, frite as almôndegas selando-as em fogo alto. Retire as almôndegas e reserve. Em outra panela, esquente o molho de tomate em fogo baixo. Na mesma panela da almôndega, elimine o excesso de azeite e coloque o molho de tomate, colocando as almôndegas para cozinhar por alguns minutos. Em cerca de 15 minutos as almôndegas estarão totalmente cozidas e o prato estará pronto."
        mock2.time = 60
        mock2.portion = 4
        
        let mock3 = Item(name: "Strogonoff")
        mock3.ingredients.append("3 peitos de frango cortados em cubos")
        mock3.ingredients.append("1 dente de alho picado")
        mock3.ingredients.append("Sal e pimenta a gosto")
        mock3.ingredients.append("1 cebola picada")
        mock3.ingredients.append("2 colheres (sopa) de maionese")
        mock3.ingredients.append("1 colher de manteiga")
        mock3.ingredients.append("1/2 copo de ketchup")
        mock3.ingredients.append("1/3 copo de mostarda")
        mock3.ingredients.append("1 copo de cogumelos")
        mock3.ingredients.append("1 copo de creme de leite")
        mock3.ingredients.append("Batata palha a gosto")
        
        mock3.description = "Em uma panela, misture o frango, o alho, a maionese, o sal e a pimenta. Em uma frigideira grande, derreta a manteiga e doure a cebola. Junte o frango temperado até que esteja dourado. Adicione os cogumelos, o ketchup e a mostarda. Incorpore o creme de leite e retire do fogo antes de ferver. Sirva com arroz branco e batata palha."
        mock3.time = 60
        mock3.portion = 10
        
        let mock4 = Item(name: "Panqueca Salgada")
        mock4.ingredients.append("Massa:")
        mock4.ingredients.append("1 e 1/2 xícara (chá) de farinha de trigo")
        mock4.ingredients.append("1 xícara (chá) de leite")
        mock4.ingredients.append("2 ovos")
        mock4.ingredients.append("4 colheres (sopa) de óleo")
        mock4.ingredients.append("sal a gosto")
        mock4.ingredients.append("Recheio:")
        mock4.ingredients.append("300 g de carne moída")
        mock4.ingredients.append("2 colheres (sopa) de cebola picada ou ralada")
        mock4.ingredients.append("1/2 tomate cortado em cubos")
        mock4.ingredients.append("1/2 lata de extrato de tomate")
        mock4.ingredients.append("1 caixa de creme de leite")
        mock4.ingredients.append("sal a gosto")
        mock4.ingredients.append("400 g de muçarela fatiado")
        mock4.ingredients.append("queijo ralado a gosto")
        
        mock4.description = "Misture a massa até obter uma consistência cremosa. Com um papel-toalha, espalhe óleo por toda a frigideira e despeje uma concha de massa. Faça movimentos circulares para que a massa se espalhe por toda a frigideira. Espere até a massa soltar do fundo e vire a massa para fritar do outro lado. \n \n Recheio \n \n Em uma panela, doure a cebola com o óleo e acrescente a carne. Deixe cozinhar até que saia água da carne, diminua o fogo e tampe. Acrescente o tomate picado e tampe novamente. Deixe cozinhar por mais 3 minutos e misture. Acrescente o extrato de tomate e temperos a gosto. Deixe cozinhar por mais 10 minutos. Quando o molho engrossar, desligue o fogo. Deixe esfriar o molho, acrescente o creme de leite e misture bem. Quando estiver bem homogêneo, leve novamente ao fogo e deixe cozinhar em fogo baixo por mais 5 minutos. \n \n Montagem \n \n Recheie a panqueca com uma fatia de mussarela, uma porção de carne e enrole. Faça esse processo com todas as panquecas. Despeje um pouco de caldo no fundo de um refratário, para untar. Disponha as panquecas já prontas no refratário e despeje sobre elas o restante do molho. Polvilhe queijo ralado sobre as panquecas. Leve ao forno para gratinar, em fogo médio, por 20 minutos ou até que o queijo esteja derretido."
        mock4.time = 40
        mock4.portion = 10
        
        let mock5 = Item(name: "Macarrão com bacon e molho branco")
        mock5.ingredients.append("1 pacote de macarrão")
        mock5.ingredients.append("2 copos de leite")
        mock5.ingredients.append("1 colher de manteiga")
        mock5.ingredients.append("1/2 kg de bacon frito")
        mock5.ingredients.append("1 caldo de galinha")
        mock5.ingredients.append("cebola, cheiro-verde (temperos a gosto)")
        mock5.ingredients.append("2 colheres de maisena dissolvidas em leite")
        mock5.ingredients.append("milho e ervilha (opcional)")
        mock5.ingredients.append("sal a gosto")
        
        mock5.description = "Cozinhe o macarrão em água e sal. Escorra, lave em água fria e reserve. Frite o bacon e reserve. Em uma panela junte a manteiga, a cebola picada, o cheiro-verde e os temperos que você desejar e frite. Em seguida acrescente o leite e o caldo de galinha e o sal a gosto. Quando começar a ferver acrescente a maisena dissolvida e deixe engrossar. Junte o bacon, o milho e a ervilha. Misture tudo no macarrão, cubra com bastante queijo e leve ao forno para gratinar."
        mock5.time = 30
        mock5.portion = 6
        
        return [mock1,mock2,mock3,mock4,mock5]
    }()
    
    static var sobremesa: [Item] = {
        let mock1 = Item(name: "Brigadeirão")
        mock1.ingredients.append("1 lata de leite condensado")
        mock1.ingredients.append("1 lata de creme de leite sem soro")
        mock1.ingredients.append("1 xícara de chocolate em pó")
        mock1.ingredients.append("1 colher de sopa de manteiga derretida")
        mock1.ingredients.append("2 ovos")
        mock1.ingredients.append("1 gema")
        mock1.ingredients.append("4 colheres de sopa de açúcar")
        mock1.ingredients.append("Granulado de chocolate para decorar")

        
        mock1.description = "Bater no liquidificador todos os ingredientes, exceto o granulado de chocolate. Despejar em uma forma com um furo no meio, untada com manteiga. Levar ao forno preaquecido a 180 graus, em banho-maria, durante 1 hora ou até que fique firme. Retirar do forno, deixar esfriar um pouco e levar à geladeira durante 3 horas. Desenformar e decorar com o granulado de chocolate."
        
        mock1.time = 240
        mock1.portion = 1
        
        let mock2 = Item(name: "Copinhos de chocolate recheados")
        mock2.ingredients.append("Forminhas de muffin")
        mock2.ingredients.append("450g de chocolate meio amargo derretido")
        mock2.ingredients.append("200g de creme de amendoim")
       
        mock2.description = "Despejar uma porção de chocolate derretido nas forminhas de muffin. Colocar uma colherada de creme de amendoim no centro. Cobrir mais uma porção de chocolate derretido. Levar para a geladeira por 30 minutos. Desenformar e servir."
        mock2.time = 45
        mock2.portion = 6
        
        let mock3 = Item(name: "Mousse de chocolate vegano")
        mock3.ingredients.append("1 abacate maduro")
        mock3.ingredients.append("2 colheres (sopa) de cacau em pó")
        mock3.ingredients.append("1 pitada de canela em pó")
        mock3.ingredients.append("4 colheres (sopa) de melado de cana")
        mock3.ingredients.append("1 colher (chá) de essência de baunilha")
      
        mock3.description = "No liquidificador, adicione o abacate, o cacau, a canela, o melado e a essência de baunilha. Bata bem e leve à geladeira por 2 horas."
        mock3.time = 120
        mock3.portion = 3
        mock3.veg = true
        
        let mock4 = Item(name: "Brigadeiro")
        mock4.ingredients.append("1 caixa de leite condensado")
        mock4.ingredients.append("1 colher (sopa) de margarina sem sal")
        mock4.ingredients.append("7 colheres (sopa) de achocolatado ou 4 colheres (sopa) de chocolate em pó")
        mock4.ingredients.append("chocolate granulado")
        
        mock4.description = "Em uma panela funda, acrescente o leite condensado, a margarina e o chocolate em pó. Cozinhe em fogo médio e mexa até que o brigadeiro comece a desgrudar da panela. Deixe esfriar e faça pequenas bolas com a mão passando a massa no chocolate granulado. Quer saber quando o seu brigadeiro chegou no ponto certo? Passe a colher no meio da panela, fazendo um caminho. Se a mistura demorar a voltar para o meio e você conseguir enxergar o fundo da panela, está pronto. Se não, continue mexendo em fogo médio. "
        mock4.time = 25
        mock4.portion = 30
        
        let mock5 = Item(name: "Mousse de Maracujá")
        mock5.ingredients.append("2 caixas de gelatina de maracujá")
        mock5.ingredients.append("2 xícaras de água quente")
        mock5.ingredients.append("1/2 xícara de suco de maracujá")
        mock5.ingredients.append("2 xícaras de leite de vaca")
        mock5.ingredients.append("1 lata de leite condensado")
        mock5.ingredients.append("1 lata de creme de leite sem soro")
        
        mock5.description = "Prepare a gelatina com a água quente. Depois é só bater todos os ingredientes no liquidificador e colocar numa travessa para gelar."
        mock5.time = 15
        mock5.portion = 6
        
        return [mock1,mock2,mock3,mock4,mock5]
    }()
    
    
    // Limpeza
    
    static var roupa: [Item] = {
        let mock1 = Item(name: "Dicas para Lavar roupa")
       
        mock1.introduction = ""
        mock1.description = ""
        
        mock1.steps.append("Separe as roupas: Separe as roupas pela cor, pelo tipo e nível de sujeira.")
        mock1.steps.append("Pré-lavagem: Caso alguma peça esteja manchada ou encardida, faça uma pré lavagem deixando-a de molho.")
        mock1.steps.append("Teste antes: Teste suas roupas novas para saber se soltam a cor.")
        mock1.steps.append("Proteja suas roupas: use sacos protetores nas suas peças mais delicadas ou nas que soltam pelos, fiapos e bolinhas.")
        mock1.steps.append("Remova os adereços: Remova cintos, broches, e qualquer adereço antes de lavar a peça.")
        mock1.steps.append("Botões e zíperes: abotoe todos os botões e feche todos os zíperes para evitar estragar sua roupa e a máquina.")
        mock1.steps.append("Verifique os bolsos: Verifique os boloso antes de começar a lavagem.")
        
        
    
        let mock2 = Item(name: "Como lavar roupa")
           
            mock2.introduction = "Esses são os passos básicos para lavar sua roupa na máquina. É claro que alguns equipamentos podem ter passos extras, mas esses são os comuns para qualquer modelo. Antes de iniciar o processo de lavagem, seja à mão ou na máquina de lavar, é necessário assegurar a remoção das manchas."
            
            mock2.steps.append("Antes de começar, separe as roupas brancas e mais claras das roupas coloridas e das roupas pretas. Faça também a separação por tipo de roupa e por nível de sujeira;")
            mock2.steps.append("Após separar as roupas, opte pelo ciclo de lavagem, de acordo com o tipo e sujeira da roupa;")
            mock2.steps.append("Dilua o sabão em pó e o amaciante antes de colocá-los nos respectivos reservatórios;")
            mock2.steps.append("E, por fim, selecione o nível de água de acordo com a quantidade de roupa.")
            mock2.steps.append("Depois que a máquina já tiver feito toda a lavagem, tire as roupas e coloque-as no varal.")
        
        
        let mock3 = Item(name: "Como tirar manchas de roupas")
        mock2.introduction = "Manchar as roupas causa uma das piores sensações do mundo. Ter que se desfazer de uma peça querida por conta de um descuido é muito frustrante. Mas, calma! Com nosso guia completo de como tirar manchas, você não vai se desesperar toda vez que aquele molho de tomate aterrissar na sua camisa branquinha. Descubra como tirar essa e outras manchas agora!"
        
        mock2.steps.append("Mancha de maquiagem(produtos em pó): Retire o excesso com uma escova macia e aplique um pouco de detergente. Esfregue com a escova e depois faça a lavagem normalmente, na máquina ou à mão.")
        mock2.steps.append("Mancha de caneta esferográfica: Utilize um algodão embebido em álcool. Esfregue-o sobre a mancha até ela sair. Siga com a lavagem normal.")
        mock2.steps.append("Mancha de gordura: coloque talco ou amido de milho sobre a mancha. Eles vão absorver a gordura. Deixe de um dia para o outro e, no dia seguinte, caso a mancha não tenha saído completamente, utilize detergente para louça incolor. Esfregue com cuidado, enxágue com vinagre branco, retire o excesso com água e siga com a lavagem normal.")
        
      
      
        return [mock1,mock2,mock3]
    }()
    
    static var casa: [Item] = {
        let mock1 = Item(name: "Limpeza de Vidros")
       
        mock1.introduction = "Para adquirir uma boa aparência, as janelas e vidros necessitam de uma limpeza regular. O ideal é que a limpeza seja feita mensalmente."
        mock1.description = "Os passos para a limpeza dos vidros são bastante simples. A forma e a ordem em que são feitos é que garante a limpeza eficiente. Veja os três passos que você deve seguir para deixar os vidros limpinhos:"
        
        mock1.steps.append("Antes de limpar os vidros é necessário limpar as janelas e aberturas primeiro. Uma sugestão é passar um pincel de cerdas largas entre as frestas da janela para eliminar o pó. Também é possível aspirar as partes de mais difícil acesso, principalmente os cantos;")
        mock1.steps.append("Limpe o vidro com uma solução de 5 litros de água para 1 colher de sopa de vinagre ou detergente neutro e 1 colher de sopa de álcool. Passe esta solução com o lado macio da esponja, enxague e seque. Para facilitar essa etapa veja as dicas e truques do tópico abaixo;")
        mock1.steps.append("Aplique o limpa vidros e seque para finalizar.")
        
        
    
        let mock2 = Item(name: "Rotina Limpeza Quarto")
           
            mock2.introduction = "O quarto é um cômodo da casa que precisa de atenção quando o assunto é limpeza. Isso porque o local também acumula sujeiras e ácaros, que afetam o bem-estar e a saúde respiratória de quem dorme no ambiente. E para evitar que isso aconteça, é necessário definir uma rotina de limpeza."
            
            mock2.steps.append("Organize as roupas: Encontrar roupas espalhadas pelo quarto ou em cima da cama não é algo raro. Isso porque as pessoas têm rotinas agitadas e vivem com pressa e, por isso, acabam não tendo tempo para dobrar a peça e guardar de volta no guarda-roupa. Por isso, o ideal é dar o destino certo para as roupas que estão largadas todos os dias: cesto de roupa suja ou armário.")
            mock2.steps.append("Mantenha o ambiente arejado: Antes de qualquer limpeza, a mudança de hábitos também colabora com a higienização do local. Atitudes simples como deixar as janelas e portas do cômodo abertas alguns minutos ao dia, por exemplo, facilitam a entrada de ar puro no cômodo, eliminando o cheiro de mofo e umidade das paredes.")
            mock2.steps.append("Recolha os objetos espalhados: Durante a semana, é comum que objetos fiquem espalhados pelo quarto. Copos, potes e embalagens de comida, por exemplo, são coisas que não deveriam estar neste ambiente, mas às vezes acabam deixados lá. Até mesmo outros objetos, como perfumes, acessórios e roupas, podem ficar fora do lugar durante o dia a dia. Mas a recomendação é que se recolha as coisas espalhadas todos os dias, mantendo o ambiente organizado e mais limpo até o dia da faxina pesada.")
        
        
        let mock3 = Item(name: "5 truques para a cozinha")
        
        mock3.introduction = "Confira 5 dicas de limpeza de cozinha para quem não tem tempo a perder no dia a dia!"
        
        mock3.steps.append("Liquidificador: coloque agua quente no liquidificador, acrescente detergente tampe o liquidificador e o ligue. Depois é só enxaguar o liquido dentro e está limpo!")
        mock3.steps.append("Tábuas de madeira: corte um limão em duas fatias e afunde em uma tigela de sal, esfregue o limão e o sal na tábua. Enxague e já está pronto. ")
        mock3.steps.append("Fogão encardido: coloque bicarbonato de sódio e água oxigenada em uma tigela e misture. Use uma esponja para limpar o foguão. ")
        mock3.steps.append("Panela queimada: coloque a panela em fogo alto, adicione bicarbonato de sódio e água e ferva. Com uma colher de madeira esfregue o fundo até a sujeira sair. Enxague.")
        mock3.steps.append("Panela de Ferro: adicione sal na panela e raspe com uma colher de madeira até ficar limpo. Tire todo o sal e adicione óleo vegetal, besunte dos dois lados.")
        
    
      
        return [mock1,mock2,mock3]
    }()
    
   
    
    // Diversos
    
    static var organização: [Item] = {
        let mock1 = Item(name: "")
       
        mock1.introduction = ""
        mock1.description = ""
        
        mock1.steps.append("")
        mock1.steps.append("")
        mock1.steps.append("")
        
        
    
        let mock2 = Item(name: "")
        let mock3 = Item(name: "")
        let mock4 = Item(name: "")
        let mock5 = Item(name: "")
      
        return [mock1,mock2,mock3,mock4,mock5]
    }()
    
    static var outros: [Item] = {
        let mock1 = Item(name: "")
       
        mock1.introduction = ""
        mock1.description = ""
        
        mock1.steps.append("")
        mock1.steps.append("")
        mock1.steps.append("")
        
        
    
        let mock2 = Item(name: "")
        let mock3 = Item(name: "")
        let mock4 = Item(name: "")
        let mock5 = Item(name: "")
      
        return [mock1,mock2,mock3,mock4,mock5]
    }()
    
    
    
    init(name: String) {
        self.name = name
        self.description = ""
        self.time = 0
        self.veg = false
        self.ingredients = []
        self.portion = 0
        self.steps = []
        self.introduction = ""
        
        
    }
    
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
    
}

