//
//  ViewModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 29/05/21.
//

import Foundation

class CookingViewModel: ObservableObject {
    @Published var recipesList: [RecipeModel] = []
    
    func filterRecipes(category: CookingCategories) -> [RecipeModel] {
        recipesList.filter { recipe in
            recipe.category == category
        }
    }
    
    init() { // inserir dados abaixo!
        
        // MARK: -- breakfests
        
        let omelete = RecipeModel(
            title: "Omelete",
            imageName: "OmeleteContent",
            category: .breakfest,
            time: 4,
            servings: 1,
            vegan: false,
            ingredients: ["2 ovos",
                          "1 pitada de sal",
                          "1 fatia de presunto",
                          "2 fatias de queijo",
                          "tempero verde a gosto",
                          "caldo de galinha a gosto"],
            structions: "Bata os 2 ovos, pode ser na batedeira ou não.\nApós ter batido bem, coloque-o na frigideira já untada com óleo, acrescente o sal, o presunto picado em quadradinhos e as duas fatias de queijo (não precisa picar o queijo).\nColoque os temperos a gosto, espere ficar firme, e vire o omelete.\nEstá pronto um omelete delicioso, bom apetite!")
        
        let panquecaAmericana = RecipeModel(
            title: "Panqueca Americana",
            imageName: "PanquecasContent",
            category: .breakfest,
            time: 40,
            servings: 8,
            vegan: false,
            ingredients: ["1 e 1/4 xícara (chá) de farinha de trigo",
                          "1 colher (sopa) de açúcar",
                          "3 colheres (chá) de fermento em pó",
                          "2 ovos levemente batidos",
                          "1 xícara (chá) de leite",
                          "2 colheres (sopa) de manteiga derretida",
                          "pitada de sal",
                          "óleo"],
            structions: "Misture em um recipiente: a farinha, o açúcar, o fermento e o sal. Em outro recipiente, misture os ovos, o leite e a manteiga.\nAcrescente os líquidos aos secos, sem misturar em excesso. O ponto da massa não deve ser muito líquido, deve escorrer lentamente.\nAqueça e unte a frigideira com óleo, coloque a massa no centro, cerca de 1/4 xícara por panqueca.\nVire a massa para assar do outro lado e está pronto!")
        
        let aveia = RecipeModel(
            title: "Mingau",
            imageName: "Mingau",
            category: .breakfest,
            time: 15,
            servings: 1,
            vegan: true,
            ingredients: ["1 colher (sopa) farelo de aveia",
                          "1 colher (sopa) aveia em flocos",
                          "1 xícara (chá) leite a sua escolha",
                          "1 Banana",
                          "1 colher (chá) baunilha essência",
                          "1 colher (chá) adoçante",
                          "1 colher (chá) canela"],
            structions: "Em uma panela, aqueça o leite e coloque o farelo e a aveia em flocos.Mexa até engrossar. Desligue o fogo e acrescente a essência de baunilha e o adoçante. Corte 3 rodelas de banana e separe. Amasse o restante da banana e acrescente ao mingau. Sirva em um recipiente, polvilhe canela e enfeite com as rodelas de banana.")
        
        let muffinDeBanana = RecipeModel(
            title: "Mufflin de Banana",
            imageName: "MuflinBanana",
            category: .breakfest,
            time: 35,
            servings: 10,
            vegan: false,
            ingredients: ["1 e 1/2 xícaras de farinha de trigo peneirada",
                          "1 colher (chá) de bicarbonato de sódio",
                          "1 colher (chá) de fermento em pó",
                          "1/2 colher (chá) de sal",
                          "3 bananas (grandes) amassadas (purê)",
                          "3/4 xícara de açúcar refinado",
                          "1 ovo levemente batido",
                          "1/3 xícara de manteiga sem sal derretida",
                          "1/3 xícara de açúcar demerara",
                          "2 colheres (sopa) de farinha de trigo",
                          "1/2 colher (chá) de canela em pó",
                          "1 colher (sopa) de margarina ou manteiga"],
            structions: "Preaqueça o forno a 190° C. Unte levemente as formas para muffins ou use forminhas de papel. Em uma tigela grande misture bem a farinha de trigo peneirada (1 xícara e 1/2), o bicarbonato de sódio, o fermento em pó e o sal. À parte, em outra travessa, misture muito bem as bananas amassadas, o ovo, o açúcar refinado e a manteiga derretida. Depois coloque a mistura de bananas na mistura de farinha delicadamente-só o suficiente para incorporar. Coloque a mistura pronta nas forminhas para muffins com uma colher grande. Misture em uma vasilha o açúcar demerara, a farinha de trigo (2 colheres), a canela em pó e a margarina (ou manteiga), misture bem até a mistura se tornar uma farofa granulada. Espalhe sobre os muffins essa farofa. Leve ao forno preaquecido por 18 a 20 minutos, até o palito de dentes sair limpo.")
        
        let cafeGelado = RecipeModel(
            title: "Café Gelado",
            imageName: "ArrozContent",
            category: .breakfest,
            time: 15,
            servings: 2,
            vegan: false,
            ingredients: ["1/2 litro de café forte",
                          "Leite e açucar a gosto"],
            structions: "Prepare um café forte. Deixe esfriar. Coloque numa fôrma de cubinhos de gelo e congele. Depois que o café estiver congelado, retire uns 4 a 5 cubos de gelo e coloque no liquidificador. Acrescente o leite e açúcar a gosto. Bata até que os cubos se desfaçam e a mistura fique cremosa. Despeje em copos altos. Decore a gosto e sirva imediatamente.")
        
        // MARK: -- lunches...
        
        let arroz = RecipeModel(
            title: "Arroz",
            imageName: "ArrozContent",
            category: .lunch,
            time: 20,
            servings: 3,
            vegan: true,
            ingredients: ["1 xícara de arroz lavado",
                          "2 xícaras de água fervente",
                          "1 dente de alho amassado",
                          "1/4 de cebola picada",
                          "azeite o suficiente",
                          "sal a gosto"],
            structions: "Refogue o alho e a cebola no azeite.\nColoque o arroz e deixe fritar por cerca de 30 segundos.\nAdicione a água fervente e o sal.\nAbaixe o fogo e deixe cozinhar até a água quase secar\nTampe a panela e aguarde cerca de 20 minutos antes de servir.\nSe desejar fazer mais, é só seguir as proporções, principalmente da água.")
        
        let almondegas = RecipeModel(
            title: "Almondegas",
            imageName: "ArrozContent",
            category: .lunch,
            time: 60,
            servings: 4,
            vegan: false,
            ingredients: ["500 g de carne moída",
                          "2 colheres (sopa) de azeite de oliva (30 ml)",
                          "1 xícara de cebola bem picada (60 g)",
                          "1 ovo",
                          "150 g de farinha de rosca",
                          "sal a gosto",
                          "pimenta-do-reino a gosto",
                          "395 g de molho de tomate"],
            structions: "Misture a carne com o ovo, a cebola, o sal, um pouco de azeite de oliva (ou óleo) e a pimenta. Agregue a farinha até dar o ponto de enrolar as almôndegas. Faça pequenas bolinhas. Em uma panela com um pouco de azeite, frite as almôndegas selando-as em fogo alto. Retire as almôndegas e reserve. Em outra panela, esquente o molho de tomate em fogo baixo. Na mesma panela da almôndega, elimine o excesso de azeite e coloque o molho de tomate, colocando as almôndegas para cozinhar por alguns minutos. Em cerca de 15 minutos as almôndegas estarão totalmente cozidas e o prato estará pronto.")
        
        let strogonoff = RecipeModel(
            title: "Strogonoff",
            imageName: "ArrozContent",
            category: .lunch,
            time: 60,
            servings: 10,
            vegan: false,
            ingredients: ["3 peitos de frango cortados em cubos",
                          "1 dente de alho picado",
                          "Sal e pimenta a gosto",
                          "1 cebola picada",
                          "2 colheres (sopa) de maionese",
                          "1 colher de manteiga",
                          "1/2 copo de ketchup",
                          "1/3 copo de mostarda",
                          "1 copo de cogumelos",
                          "1 copo de creme de leite",
                          "Batata palha a gosto"],
            structions: "Em uma panela, misture o frango, o alho, a maionese, o sal e a pimenta. Em uma frigideira grande, derreta a manteiga e doure a cebola. Junte o frango temperado até que esteja dourado. Adicione os cogumelos, o ketchup e a mostarda. Incorpore o creme de leite e retire do fogo antes de ferver. Sirva com arroz branco e batata palha.")
        
        let panqueca = RecipeModel(
            title: "Panqueca Salgada",
            imageName: "ArrozContent",
            category: .lunch,
            time: 40,
            servings: 10,
            vegan: false,
            ingredients: ["Massa:",
                          "1 e 1/2 xícara (chá) de farinha de trigo",
                          "1 xícara (chá) de leite",
                          "2 ovos",
                          "4 colheres (sopa) de óleo",
                          "sal a gosto",
                          "Recheio:",
                          "300 g de carne moída",
                          "2 colheres (sopa) de cebola picada ou ralada",
                          "1/2 tomate cortado em cubos",
                          "1/2 lata de extrato de tomate",
                          "1 caixa de creme de leite",
                          "sal a gosto",
                          "400 g de muçarela fatiado",
                          "queijo ralado a gosto"],
            structions: "Misture a massa até obter uma consistência cremosa. Com um papel-toalha, espalhe óleo por toda a frigideira e despeje uma concha de massa. Faça movimentos circulares para que a massa se espalhe por toda a frigideira. Espere até a massa soltar do fundo e vire a massa para fritar do outro lado. \n \n Recheio \n \n Em uma panela, doure a cebola com o óleo e acrescente a carne. Deixe cozinhar até que saia água da carne, diminua o fogo e tampe. Acrescente o tomate picado e tampe novamente. Deixe cozinhar por mais 3 minutos e misture. Acrescente o extrato de tomate e temperos a gosto. Deixe cozinhar por mais 10 minutos. Quando o molho engrossar, desligue o fogo. Deixe esfriar o molho, acrescente o creme de leite e misture bem. Quando estiver bem homogêneo, leve novamente ao fogo e deixe cozinhar em fogo baixo por mais 5 minutos. \n \n Montagem \n \n Recheie a panqueca com uma fatia de mussarela, uma porção de carne e enrole. Faça esse processo com todas as panquecas. Despeje um pouco de caldo no fundo de um refratário, para untar. Disponha as panquecas já prontas no refratário e despeje sobre elas o restante do molho. Polvilhe queijo ralado sobre as panquecas. Leve ao forno para gratinar, em fogo médio, por 20 minutos ou até que o queijo esteja derretido.")
        
        let macarrao = RecipeModel(
            title: "Macarrão com bacon e molho branco",
            imageName: "ArrozContent",
            category: .lunch,
            time: 30,
            servings: 6,
            vegan: false,
            ingredients: ["1 pacote de macarrão",
                          "2 copos de leite",
                          "1 colher de manteiga",
                          "1/2 kg de bacon frito",
                          "1 caldo de galinha",
                          "cebola, cheiro-verde (temperos a gosto)",
                          "2 colheres de maisena dissolvidas em leite",
                          "milho e ervilha (opcional)",
                          "sal a gosto"],
            structions: "Cozinhe o macarrão em água e sal. Escorra, lave em água fria e reserve. Frite o bacon e reserve. Em uma panela junte a manteiga, a cebola picada, o cheiro-verde e os temperos que você desejar e frite. Em seguida acrescente o leite e o caldo de galinha e o sal a gosto. Quando começar a ferver acrescente a maisena dissolvida e deixe engrossar. Junte o bacon, o milho e a ervilha. Misture tudo no macarrão, cubra com bastante queijo e leve ao forno para gratinar.")
        
        // MARK: -- deserts...
        
        let brigadeirao = RecipeModel(
            title: "Brigadeirão",
            imageName: "ArrozContent",
            category: .desert,
            time: 240,
            servings: 1,
            vegan: false,
            ingredients: ["1 lata de leite condensado",
                          "1 lata de creme de leite sem soro",
                          "1 xícara de chocolate em pó",
                          "1 colher de sopa de manteiga derretida",
                          "2 ovos",
                          "1 gema",
                          "4 colheres de sopa de açúcar",
                          "Granulado de chocolate para decorar"],
            structions: "Bater no liquidificador todos os ingredientes, exceto o granulado de chocolate. Despejar em uma forma com um furo no meio, untada com manteiga. Levar ao forno preaquecido a 180 graus, em banho-maria, durante 1 hora ou até que fique firme. Retirar do forno, deixar esfriar um pouco e levar à geladeira durante 3 horas. Desenformar e decorar com o granulado de chocolate.")
        
        let copinhosChocolate = RecipeModel(
            title: "Copinhos de chocolate recheados",
            imageName: "ArrozContent",
            category: .desert,
            time: 45,
            servings: 6,
            vegan: false,
            ingredients: ["Forminhas de muffin",
                          "450g de chocolate meio amargo derretido",
                          "200g de creme de amendoim"],
            structions: "Despejar uma porção de chocolate derretido nas forminhas de muffin. Colocar uma colherada de creme de amendoim no centro. Cobrir mais uma porção de chocolate derretido. Levar para a geladeira por 30 minutos. Desenformar e servir.")
        
        let mouseChocolateVegano = RecipeModel(
            title: "Mousse de chocolate vegano",
            imageName: "ArrozContent",
            category: .desert,
            time: 120,
            servings: 3,
            vegan: false,
            ingredients: ["1 abacate maduro",
                          "2 colheres (sopa) de cacau em pó",
                          "1 pitada de canela em pó",
                          "4 colheres (sopa) de melado de cana",
                          "1 colher (chá) de essência de baunilha"],
            structions: "No liquidificador, adicione o abacate, o cacau, a canela, o melado e a essência de baunilha. Bata bem e leve à geladeira por 2 horas.")
        
        let brigadeiro = RecipeModel(
            title: "Brigadeiro",
            imageName: "ArrozContent",
            category: .desert,
            time: 25,
            servings: 30,
            vegan: false,
            ingredients: ["1 caixa de leite condensado",
                          "1 colher (sopa) de margarina sem sal",
                          "7 colheres (sopa) de achocolatado ou 4 colheres (sopa) de chocolate em pó",
                          "chocolate granulado"],
            structions: "Em uma panela funda, acrescente o leite condensado, a margarina e o chocolate em pó. Cozinhe em fogo médio e mexa até que o brigadeiro comece a desgrudar da panela. Deixe esfriar e faça pequenas bolas com a mão passando a massa no chocolate granulado. Quer saber quando o seu brigadeiro chegou no ponto certo? Passe a colher no meio da panela, fazendo um caminho. Se a mistura demorar a voltar para o meio e você conseguir enxergar o fundo da panela, está pronto. Se não, continue mexendo em fogo médio. ")
        
        let mouseMaracuja = RecipeModel(
            title: "Mousse de Maracujá",
            imageName: "ArrozContent",
            category: .desert,
            time: 15,
            servings: 6,
            vegan: false,
            ingredients: ["2 caixas de gelatina de maracujá",
                          "2 xícaras de água quente",
                          "1/2 xícara de suco de maracujá",
                          "2 xícaras de leite de vaca",
                          "1 lata de leite condensado",
                          "1 lata de creme de leite sem soro"],
            structions: "Prepare a gelatina com a água quente. Depois é só bater todos os ingredientes no liquidificador e colocar numa travessa para gelar.")
        
        // breakfest
        recipesList.append(omelete)
        recipesList.append(panquecaAmericana)
        recipesList.append(aveia)
        recipesList.append(muffinDeBanana)
        recipesList.append(cafeGelado)
        
        // lunch
        recipesList.append(arroz)
        recipesList.append(almondegas)
        recipesList.append(strogonoff)
        recipesList.append(panqueca)
        recipesList.append(macarrao)
        
        // desert
        recipesList.append(brigadeirao)
        recipesList.append(copinhosChocolate)
        recipesList.append(mouseChocolateVegano)
        recipesList.append(brigadeiro)
        recipesList.append(mouseMaracuja)
    }
}
