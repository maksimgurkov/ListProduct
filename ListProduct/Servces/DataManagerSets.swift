//
//  DataManagerSets.swift
//  ListProduct
//
//  Created by Максим Гурков on 21.07.2022.
//

import Foundation

class DataManagerSets {
    
    static let sherad = DataManagerSets()
    
    let sets = [
        Sets(factory: .armadillo,
             category: .rigel,
             name: "Ригель хром (Armadillo)",
             description: """
                        Торцевой упор FB 5-1/2 применяется в распашных (двухстворчатых) дверях для надежной фиксации одной из створок. Материал изготовления: Цинковый сплав.
                        """,
             count: 1,
             price: 400),
        Sets(factory: .armadillo,
             category: .rigel,
             name: "Ригель золото (Armadillo)",
             description: """
                        Торцевой упор FB 5-1/2 применяется в распашных (двухстворчатых) дверях для надежной фиксации одной из створок. Материал изготовления: Цинковый сплав.
                        """,
             count: 1,
             price: 400),
        Sets(factory: .armadillo,
             category: .rigel,
             name: "Ригель бронза (Armadillo)",
             description: """
                        Торцевой упор FB 5-1/2 применяется в распашных (двухстворчатых) дверях для надежной фиксации одной из створок. Материал изготовления: Цинковый сплав.
                        """,
             count: 1,
             price: 400),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля универсальная Золото (Punto)",
             description: """
                        Универсальная дверная петля Punto 4B изготовлена из стали, подходит для дверей левого и правого открывания. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане и соответствует 1 классу ГОСТ. В петле установлены втулка-подшипники и стальной стержень, что обеспечивает работоспособность 200 000 циклов открывания/закрывания. Максимальная нагрузка на 2 петли 40 кг, на 3 петли 60 кг. Размер петли: 100x70x2,5. Цвет: бронза. Саморезы в цвет изделия в комплекте. Упаковка: картон.
                        """,
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля универсальная Хром (Punto)",
             description: """
                        Универсальная дверная петля Punto 4B изготовлена из стали, подходит для дверей левого и правого открывания. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане и соответствует 1 классу ГОСТ. В петле установлены втулка-подшипники и стальной стержень, что обеспечивает работоспособность 200 000 циклов открывания/закрывания. Максимальная нагрузка на 2 петли 40 кг, на 3 петли 60 кг. Размер петли: 100x70x2,5. Цвет: бронза. Саморезы в цвет изделия в комплекте. Упаковка: картон.
                        """,
             count: 1,
             price: 450),
        Sets(factory: .punto,
             category: .luop,
             name: "Петля универсальная Бронза (Punto)",
             description: """
                        Универсальная дверная петля Punto 4B изготовлена из стали, подходит для дверей левого и правого открывания. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане и соответствует 1 классу ГОСТ. В петле установлены втулка-подшипники и стальной стержень, что обеспечивает работоспособность 200 000 циклов открывания/закрывания. Максимальная нагрузка на 2 петли 40 кг, на 3 петли 60 кг. Размер петли: 100x70x2,5. Цвет: бронза. Саморезы в цвет изделия в комплекте. Упаковка: картон.
                        """,
             count: 1,
             price: 450),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля универсальная Золото (Fuaro)",
             description: """
             Универсальная дверная петля Fuaro 2BB изготовлена из стали, подходит для дверей правого и левого открывания. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 96 часов, что соответствует высшему 4 классу стойкости покрытия. Края петель прошли дополнительную полировку. В петле 2BB установлены два внутренних подшипника и стальной стержень, что обеспечивает 1 млн циклов открывания/закрывания. Максимальная нагрузка на 2 петли 40 кг, на 3 петли 60 кг. Размер петли: 100x75x2,5. Цвет: бронза. Саморезы в комплекте. Гарантия: 5 лет. Упаковка: картон.
             """,
             count: 1,
             price: 450),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля универсальная Хром (Fuaro)",
             description: """
             Универсальная дверная петля Fuaro 2BB изготовлена из стали, подходит для дверей правого и левого открывания. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 96 часов, что соответствует высшему 4 классу стойкости покрытия. Края петель прошли дополнительную полировку. В петле 2BB установлены два внутренних подшипника и стальной стержень, что обеспечивает 1 млн циклов открывания/закрывания. Максимальная нагрузка на 2 петли 40 кг, на 3 петли 60 кг. Размер петли: 100x75x2,5. Цвет: бронза. Саморезы в комплекте. Гарантия: 5 лет. Упаковка: картон.
             """,
             count: 1,
             price: 600),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля универсальная Бронза (Fuaro)",
             description: """
             Универсальная дверная петля Fuaro 2BB изготовлена из стали, подходит для дверей правого и левого открывания. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 96 часов, что соответствует высшему 4 классу стойкости покрытия. Края петель прошли дополнительную полировку. В петле 2BB установлены два внутренних подшипника и стальной стержень, что обеспечивает 1 млн циклов открывания/закрывания. Максимальная нагрузка на 2 петли 40 кг, на 3 петли 60 кг. Размер петли: 100x75x2,5. Цвет: бронза. Саморезы в комплекте. Гарантия: 5 лет. Упаковка: картон.
             """,
             count: 1,
             price: 600),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля бабочка кофе (Fuaro)",
             description: """
             Универсальная дверная петля без врезки Fuaro 500-2BB изготовлена из стали. Предназначена для установки на деревянные двери, подходит для дверей правого и левого открывания. Не требует врезки. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 96 часов, что соответствует высшему 4 классу стойкости покрытия. Края петель прошли дополнительную полировку. В петле 500-2BB установлены два внутренних подшипника и стальной стержень, что обеспечивает 1 млн циклов открывания/закрывания. Благодаря двум опорным подшипникам, петля устойчива к проседанию. Максимальная нагрузка на 2 петли 35 кг, на 3 петли 45 кг. Размер петли: 100x2,5. Цвет: матовая бронза. Саморезы в комплекте. Гарантия: 5 лет. Упаковка: картон.
             """,
             count: 1,
             price: 588),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля бабочка хром (Fuaro)",
             description: """
             Универсальная дверная петля без врезки Fuaro 500-2BB изготовлена из стали. Предназначена для установки на деревянные двери, подходит для дверей правого и левого открывания. Не требует врезки. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 96 часов, что соответствует высшему 4 классу стойкости покрытия. Края петель прошли дополнительную полировку. В петле 500-2BB установлены два внутренних подшипника и стальной стержень, что обеспечивает 1 млн циклов открывания/закрывания. Благодаря двум опорным подшипникам, петля устойчива к проседанию. Максимальная нагрузка на 2 петли 35 кг, на 3 петли 45 кг. Размер петли: 100x2,5. Цвет: матовая бронза. Саморезы в комплекте. Гарантия: 5 лет. Упаковка: картон.
             """,
             count: 1,
             price: 588),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля бабочка мат.золото (Fuaro)",
             description: """
             Универсальная дверная петля без врезки Fuaro 500-2BB изготовлена из стали. Предназначена для установки на деревянные двери, подходит для дверей правого и левого открывания. Не требует врезки. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 96 часов, что соответствует высшему 4 классу стойкости покрытия. Края петель прошли дополнительную полировку. В петле 500-2BB установлены два внутренних подшипника и стальной стержень, что обеспечивает 1 млн циклов открывания/закрывания. Благодаря двум опорным подшипникам, петля устойчива к проседанию. Максимальная нагрузка на 2 петли 35 кг, на 3 петли 45 кг. Размер петли: 100x2,5. Цвет: матовая бронза. Саморезы в комплекте. Гарантия: 5 лет. Упаковка: картон.
             """,
             count: 1,
             price: 588),
        Sets(factory: .fuaro,
             category: .luop,
             name: "Петля бабочка бронза (Fuaro)",
             description: """
             Универсальная дверная петля без врезки Fuaro 500-2BB изготовлена из стали. Предназначена для установки на деревянные двери, подходит для дверей правого и левого открывания. Не требует врезки. Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 96 часов, что соответствует высшему 4 классу стойкости покрытия. Края петель прошли дополнительную полировку. В петле 500-2BB установлены два внутренних подшипника и стальной стержень, что обеспечивает 1 млн циклов открывания/закрывания. Благодаря двум опорным подшипникам, петля устойчива к проседанию. Максимальная нагрузка на 2 петли 35 кг, на 3 петли 45 кг. Размер петли: 100x2,5. Цвет: матовая бронза. Саморезы в комплекте. Гарантия: 5 лет. Упаковка: картон.
             """,
             count: 1,
             price: 588),
        Sets(factory: .fuaro,
             category: .castle,
             name: "Защелка 45 бронза (Fuaro)",
             description: """
             Дверная защелка Fuaro F12 предназначена для установки в деревянные двери. Корпус выполнен из стали с надежным гальваническим покрытием. Защелка легко устанавливается, подходит для дверей левого и правого открывания. Защелка F12 с усиленной пружиной имеет высший 4 класс надежности (250 000 циклов открывания/закрывания). Отверстия под стяжные винты находятся на расстоянии 38-40 мм. Размер бэксета - 45 мм. Цвет: бронза. В комплектацию входят: ответная планка, декоративная заглушка и крепежная фурнитура.
             """,
             count: 1,
             price: 750),
        Sets(factory: .fuaro,
             category: .castle,
             name: "Защелка 45 мат золото (Fuaro)",
             description: """
             Дверная защелка Fuaro F12 предназначена для установки в деревянные двери. Корпус выполнен из стали с надежным гальваническим покрытием. Защелка легко устанавливается, подходит для дверей левого и правого открывания. Защелка F12 с усиленной пружиной имеет высший 4 класс надежности (250 000 циклов открывания/закрывания). Отверстия под стяжные винты находятся на расстоянии 38-40 мм. Размер бэксета - 45 мм. Цвет: бронза. В комплектацию входят: ответная планка, декоративная заглушка и крепежная фурнитура.
             """,
             count: 1,
             price: 750),
        Sets(factory: .fuaro,
             category: .castle,
             name: "Защелка 45 мат никель (Fuaro)",
             description: """
             Дверная защелка Fuaro F12 предназначена для установки в деревянные двери. Корпус выполнен из стали с надежным гальваническим покрытием. Защелка легко устанавливается, подходит для дверей левого и правого открывания. Защелка F12 с усиленной пружиной имеет высший 4 класс надежности (250 000 циклов открывания/закрывания). Отверстия под стяжные винты находятся на расстоянии 38-40 мм. Размер бэксета - 45 мм. Цвет: бронза. В комплектацию входят: ответная планка, декоративная заглушка и крепежная фурнитура.
             """,
             count: 1,
             price: 750),
        Sets(factory: .fuaro,
             category: .cstleWC,
             name: "Защелка 72 бронза (Fuaro)",
             description: """
             Дверная защелка Fuaro F72 предназначена для установки в деревянные двери. Корпус выполнен из стали с надежным гальваническим покрытием. Легкая смена направления язычка защелки, подходит для дверей левого и правого открывания. Защелка F72 с усиленным блоком пружин имеет высший 4 класс надежности (250 000 циклов открывания/закрывания). Отверстия под стяжные винты находятся на расстоянии 35-40 мм. Размер бэксета - 45 мм. Размер межосевого расстояния - 70 мм. Цвет: медь. В комплектацию входят: ответная планка, декоративная заглушка и крепежная фурнитура.
             """,
             count: 1,
             price: 1500),
        Sets(factory: .fuaro,
             category: .cstleWC,
             name: "Защелка 72 мат золото (Fuaro)",
             description: """
             Дверная защелка Fuaro F72 предназначена для установки в деревянные двери. Корпус выполнен из стали с надежным гальваническим покрытием. Легкая смена направления язычка защелки, подходит для дверей левого и правого открывания. Защелка F72 с усиленным блоком пружин имеет высший 4 класс надежности (250 000 циклов открывания/закрывания). Отверстия под стяжные винты находятся на расстоянии 35-40 мм. Размер бэксета - 45 мм. Размер межосевого расстояния - 70 мм. Цвет: медь. В комплектацию входят: ответная планка, декоративная заглушка и крепежная фурнитура.
             """,
             count: 1,
             price: 1500),
        Sets(factory: .fuaro,
             category: .cstleWC,
             name: "Защелка 72 мат никель (Fuaro)",
             description: """
             Дверная защелка Fuaro F72 предназначена для установки в деревянные двери. Корпус выполнен из стали с надежным гальваническим покрытием. Легкая смена направления язычка защелки, подходит для дверей левого и правого открывания. Защелка F72 с усиленным блоком пружин имеет высший 4 класс надежности (250 000 циклов открывания/закрывания). Отверстия под стяжные винты находятся на расстоянии 35-40 мм. Размер бэксета - 45 мм. Размер межосевого расстояния - 70 мм. Цвет: медь. В комплектацию входят: ответная планка, декоративная заглушка и крепежная фурнитура.
             """,
             count: 1,
             price: 1500),
        Sets(factory: .fuaro,
             category: .set,
             name: "Комплект L45 кофе (Fuaro)",
             description: "Комплект механизм L45, ручка Prima ",
             count: 1,
             price: 5793),
        Sets(factory: .fuaro,
             category: .set,
             name: "Комплект L70 кофе (Fuaro)",
             description: "Комплект механизм L70, фиксатор, ручка Prima ",
             count: 1,
             price: 7749),
        Sets(factory: .fuaro,
             category: .set,
             name: "Комплект L45 бронза (Fuaro)",
             description: "Комплект механизм L45, ручка Prima ",
             count: 1,
             price: 5793),
        Sets(factory: .fuaro,
             category: .set,
             name: "Комплект L70 бронза (Fuaro)",
             description: "Комплект механизм L70, фиксатор, ручка Prima ",
             count: 1,
             price: 7749),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка INTRA хром (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка INTRA золото (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка SOLO хром (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка TEMPO хром (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка TEMPO бронза (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка PRIMA хром (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка PRIMA золото (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .handle,
             name: "Ручка PRIMA бронза (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверные ручки серии RM (Ritmo) центральным элементом двери. Дверная ручка на раздельном основании Fuaro INTRO RM на круглом основании подходит для установки на внутренние входные и межкомнатные двери. Максимальная масса двери 60 кг. Посадочные размеры оснований совместимы со всеми типами межкомнатных механизмов. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Ресурс работы дверных ручек более 150 000 циклов открывания/закрывания, что гарантирует безотказную работу двери более чем на 10 лет. Стяжные винты в комплекте обеспечивают более прочное крепление на полотне двери, подходят для установки на двери толщиной 35-55 мм. Цвет: матовое золото/золото. В комплект входят: стяжные винты, соединительный квадрат 8x105 мм, саморезы, фиксирующие винты, шестигранник.
             """,
             count: 1,
             price: 5700),
        Sets(factory: .fuaro,
             category: .stopWC,
             name: "Фиксатор хром (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверную фурнитуру серии RM (Ritmo) центральным элементом двери. Поворотные ручки на круглом основании Fuaro BK6 серии RM подходят для установки на внутренние входные и межкомнатные двери. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Цвет: золото/матовое золото. В комплект входят: соединительный квадрат 6x80 мм, винты.
             """,
             count: 1,
             price: 2250),
        Sets(factory: .fuaro,
             category: .stopWC,
             name: "Фиксатор золото (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверную фурнитуру серии RM (Ritmo) центральным элементом двери. Поворотные ручки на круглом основании Fuaro BK6 серии RM подходят для установки на внутренние входные и межкомнатные двери. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Цвет: золото/матовое золото. В комплект входят: соединительный квадрат 6x80 мм, винты.
             """,
             count: 1,
             price: 2250),
        Sets(factory: .fuaro,
             category: .stopWC,
             name: "Фиксатор бронза (Fuaro)",
             description: """
             Ритм, линии, изгибы рождают новые формы. Безупречная эргономика и лаконичный дизайн делают дверную фурнитуру серии RM (Ritmo) центральным элементом двери. Поворотные ручки на круглом основании Fuaro BK6 серии RM подходят для установки на внутренние входные и межкомнатные двери. Материал изготовления: ZAMAK (сплав цинка, алюминия, магния и меди). Гальваническое покрытие прошло тест на устойчивость к коррозии в соляном тумане - более 72 часов. Цвет: золото/матовое золото. В комплект входят: соединительный квадрат 6x80 мм, винты.
             """,
             count: 1,
             price: 2250),
        Sets(factory: .agb,
             category: .castleWCMagnet,
             name: "Механизм L72 магнитный хром (AGB)",
             description: """
             Замок врезной B06102.50.34.567 с защелкой WC серии MEDIANA POLARIS предназначен для установки в межкомнатные двери. Бесшумный магнитный замок взаимозаменяемый с MEDIANA EVOLUTION. Прямой ригель обеспечивает универсальность замка: подходит для левых и правых дверей. Остроумное решение ответной части, точность закрывания и простота установки. В комплект входит ответная планка B2402.05.34. Цвет: матовый хром. Упаковка: блистер.
             """,
             count: 1,
             price: 1100),
        Sets(factory: .agb,
             category: .castleWCMagnet,
             name: "Механизм L72 магнитный золото (AGB)",
             description: """
             Замок врезной B06102.50.34.567 с защелкой WC серии MEDIANA POLARIS предназначен для установки в межкомнатные двери. Бесшумный магнитный замок взаимозаменяемый с MEDIANA EVOLUTION. Прямой ригель обеспечивает универсальность замка: подходит для левых и правых дверей. Остроумное решение ответной части, точность закрывания и простота установки. В комплект входит ответная планка B2402.05.34. Цвет: матовый хром. Упаковка: блистер.
             """,
             count: 1,
             price: 1100),
        Sets(factory: .agb,
             category: .castleWCMagnet,
             name: "Механизм L72 магнитный бронза (AGB)",
             description: """
             Замок врезной B06102.50.34.567 с защелкой WC серии MEDIANA POLARIS предназначен для установки в межкомнатные двери. Бесшумный магнитный замок взаимозаменяемый с MEDIANA EVOLUTION. Прямой ригель обеспечивает универсальность замка: подходит для левых и правых дверей. Остроумное решение ответной части, точность закрывания и простота установки. В комплект входит ответная планка B2402.05.34. Цвет: матовый хром. Упаковка: блистер.
             """,
             count: 1,
             price: 1100),
    ]
    
    
    private init() {}
}
