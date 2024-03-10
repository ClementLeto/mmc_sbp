part of '../mmc_sbp.dart';

sealed class _Constants {
  static const Map<String, dynamic> s2bMembers = {
    "version": "1.0",
    "dictionary": [
      {
        "bankName": "Сбербанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000111.png",
        "schema": "bank100000000111",
        "package_name": "ru.sberbankmobile"
      },
      {
        "bankName": "Тинькофф Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000004.png",
        "schema": "bank100000000004",
        "package_name": "com.idamob.tinkoff.android"
      },
      {
        "bankName": "Банк ВТБ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000005.png",
        "schema": "bank110000000005",
        "package_name": "ru.vtb24.mobilebanking.android",
        "webClientUrl": "https://online.vtb.ru/i/paymentSbp",
        "isWebClientActive": "true"
      },
      {
        "bankName": "АЛЬФА-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000008.png",
        "schema": "bank100000000008",
        "package_name": "ru.alfabank.mobile.android"
      },
      {
        "bankName": "Райффайзенбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000007.png",
        "schema": "bank100000000007",
        "package_name": "ru.raiffeisennews"
      },
      {
        "bankName": "Банк ОТКРЫТИЕ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000015.png",
        "schema": "bank100000000015",
        "package_name": "com.openbank"
      },
      {
        "bankName": "Газпромбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000001.png",
        "schema": "bank100000000001",
        "package_name": "ru.gazprombank.android.mobilebank.app"
      },
      {
        "bankName": "Промсвязьбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000010.png",
        "schema": "bank100000000010",
        "package_name": "logo.com.mbanking",
        "webClientUrl": "https://ib.psbank.ru/sbp/payment",
        "isWebClientActive": "true"
      },
      {
        "bankName": "Совкомбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000013.png",
        "schema": "bank100000000013",
        "package_name": "ru.sovcomcard.halva.v1",
        "webClientUrl": "https://halvacard.ru/lk/qr",
        "isWebClientActive": "true"
      },
      {
        "bankName": "РОСБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000012.png",
        "schema": "bank100000000012",
        "package_name": "ru.rosbank.android"
      },
      {
        "bankName": "Россельхозбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000020.png",
        "schema": "bank100000000020",
        "package_name": "ru.rshb.dbo"
      },
      {
        "bankName": "МОСКОВСКИЙ КРЕДИТНЫЙ БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000025.png",
        "schema": "bank100000000025",
        "package_name": "ru.mkb.mobile"
      },
      {
        "bankName": "ЮниКредит Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000030.png",
        "schema": "bank100000000030",
        "package_name": "ru.unicredit.android",
        "webClientUrl": "https://enter.unicredit.ru/c2b",
        "isWebClientActive": "true"
      },
      {
        "bankName": "Банк Синара",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000003.png",
        "schema": "bank100000000003",
        "package_name": "ru.skbbank.ib"
      },
      {
        "bankName": "Газэнергобанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000043.png",
        "schema": "bank100000000043",
        "package_name": "ru.gebank.ib"
      },
      {
        "bankName": "АКБ АВАНГАРД",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000028.png",
        "schema": "bank100000000028",
        "package_name": "ru.avangard.sbp_client"
      },
      {
        "bankName": "ПНКО ЭЛПЛАТ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000086.png",
        "schema": "bank100000000086",
        "package_name": "ru.elplat.elplat2"
      },
      {
        "bankName": "РНКБ Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000011.png",
        "schema": "bank100000000011",
        "package_name": "com.bifit.rncbbeta"
      },
      {
        "bankName": "Экспобанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000044.png",
        "schema": "bank100000000044",
        "package_name": "ru.ftc.faktura.expobank"
      },
      {
        "bankName": "Банк ВБРР",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000049.png",
        "schema": "bank100000000049",
        "package_name": "com.bssys.vbrrretail"
      },
      {
        "bankName": "АБ РОССИЯ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000095.png",
        "schema": "bank100000000095",
        "package_name": "ru.artsofte.russiafl"
      },
      {
        "bankName": "ДБО Фактура",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000900.png",
        "schema": "bank100000000900",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "КБ Хлынов",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000056.png",
        "schema": "bank100000000056",
        "package_name": "ru.bank_hlynov.xbank"
      },
      {
        "bankName": "Бланк банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000053.png",
        "schema": "bank100000000053",
        "package_name": "ru.ftc.faktura.vesta"
      },
      {
        "bankName": "КБ Солидарность",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000121.png",
        "schema": "bank100000000121",
        "package_name": "com.isimplelab.ibank.solidarnost"
      },
      {
        "bankName": "Банк ДОМ.РФ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000082.png",
        "schema": "bank100000000082",
        "package_name": "com.bssys.roscapretail"
      },
      {
        "bankName": "Хакасский муниципальный банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000127.png",
        "schema": "bank100000000127",
        "package_name": "ru.ftc.faktura.kbhmb"
      },
      {
        "bankName": "МТС-Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000017.png",
        "schema": "bank100000000017",
        "package_name": "ru.mts.money"
      },
      {
        "bankName": "Банк ПСКБ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000087.png",
        "schema": "bank100000000087",
        "package_name": "ru.ftc.faktura.pskb"
      },
      {
        "bankName": "Банк Левобережный",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000052.png",
        "schema": "bank100000000052",
        "package_name": "ru.ftc.faktura.nskbl"
      },
      {
        "bankName": "АК БАРС БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000006.png",
        "schema": "bank100000000006",
        "package_name": "ru.akbars.mobile"
      },
      {
        "bankName": "КБ РостФинанс",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000098.png",
        "schema": "bank100000000098",
        "package_name": "ru.ftc.faktura.rostfinance"
      },
      {
        "bankName": "БыстроБанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000092.png",
        "schema": "bank100000000092",
        "webClientUrl": "https://www.bystrobank.ru/sbp/c2b/",
        "isWebClientActive": "true"
      },
      {
        "bankName": "МС Банк Рус",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000229.png",
        "schema": "bank100000000229",
        "package_name": "ru.mcbankrus.MCBankRus"
      },
      {
        "bankName": "Кредит Европа Банк (Россия)",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000027.png",
        "schema": "bank100000000027"
      },
      {
        "bankName": "АКБ Алмазэргиэнбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000080.png",
        "schema": "bank100000000080",
        "package_name": "ru.albank.online.aebit"
      },
      {
        "bankName": "ИК Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000122.png",
        "schema": "bank100000000122",
        "package_name": "com.bifit.mobile.citizen.icbru"
      },
      {
        "bankName": "БАНК ОРЕНБУРГ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000124.png",
        "schema": "bank100000000124",
        "package_name": "ru.ftc.faktura.orbank"
      },
      {
        "bankName": "КБ АГРОПРОМКРЕДИТ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000118.png",
        "schema": "bank100000000118",
        "package_name": "ru.ftc.faktura.agropromkredit"
      },
      {
        "bankName": "АКБ Энергобанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000159.png",
        "schema": "bank100000000159",
        "package_name": "com.energobank.digital"
      },
      {
        "bankName": "КОШЕЛЕВ-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000146.png",
        "schema": "bank100000000146",
        "package_name": "com.bifit.mobile.citizen.kbnk"
      },
      {
        "bankName": "СДМ-Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000069.png",
        "schema": "bank100000000069",
        "package_name": "ru.ftc.faktura.sdm"
      },
      {
        "bankName": "МБ Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000140.png",
        "schema": "bank100000000140",
        "package_name": "com.bifit.mobile.citizen.mbb"
      },
      {
        "bankName": "АКБ Абсолют Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000047.png",
        "schema": "bank100000000047",
        "package_name": "ru.ftc.faktura.absolutbank"
      },
      {
        "bankName": "КБ Модульбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000099.png",
        "schema": "bank100000000099",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "Банк Акцепт",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000135.png",
        "schema": "bank100000000135",
        "package_name": "ru.ftc.faktura.akcept"
      },
      {
        "bankName": "КБ ЭНЕРГОТРАНСБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000139.png",
        "schema": "bank100000000139",
        "package_name": "ru.ftc.faktura.etbank"
      },
      {
        "bankName": "СИБСОЦБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000166.png",
        "schema": "bank100000000166",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "Банк Развитие-Столица",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000172.png",
        "schema": "bank100000000172",
        "package_name": "ru.ftc.faktura.razvitiestolica"
      },
      {
        "bankName": "Банк РЕСО Кредит",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000187.png",
        "schema": "bank100000000187",
        "package_name": "ru.ftc.faktura.resokreditbank"
      },
      {
        "bankName": "НКО ЮМани",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000022.png",
        "schema": "bank100000000022",
        "package_name": "ru.yoo.money"
      },
      {
        "bankName": "Банк Санкт-Петербург",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000029.png",
        "schema": "bank100000000029",
        "package_name": "ru.bspb"
      },
      {
        "bankName": "КБ Кубань Кредит",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000050.png",
        "schema": "bank100000000050",
        "package_name": "com.isimplelab.ibank.kubankredit"
      },
      {
        "bankName": "Точка ФК Открытие",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000065.png",
        "schema": "bank100000000065",
        "package_name": "com.tochka.bank"
      },
      {
        "bankName": "АКБ НОВИКОМБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000177.png",
        "schema": "bank100000000177",
        "package_name": "com.bssys.novikomretail"
      },
      {
        "bankName": "РосДорБанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000084.png",
        "schema": "bank100000000084",
        "package_name": "ru.rosdorbank.physical"
      },
      {
        "bankName": "СКБ Приморья Примсоцбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000088.png",
        "schema": "bank100000000088",
        "package_name": "ru.ftc.faktura.primsoc"
      },
      {
        "bankName": "Банк Саратов",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000126.png",
        "schema": "bank100000000126",
        "package_name": "ru.ftc.faktura.banksaratov"
      },
      {
        "bankName": "Таврический Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000173.png",
        "schema": "bank100000000173",
        "package_name": "ru.ftc.faktura.tavrich"
      },
      {
        "bankName": "Тольяттихимбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000152.png",
        "schema": "bank100000000152",
        "package_name": "com.bifit.mobile.citizen.thbank"
      },
      {
        "bankName": "Банк Кремлевский",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000201.png",
        "schema": "bank100000000201",
        "package_name": "ru.ftc.faktura.kremlevskiy"
      },
      {
        "bankName": "ТКБ БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000034.png",
        "schema": "bank100000000034",
        "package_name": "ru.ftc.faktura.tkbbank"
      },
      {
        "bankName": "ЧЕЛЯБИНВЕСТБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000094.png",
        "schema": "bank100000000094",
        "package_name": "ru.chelyabinvestbank.investpay"
      },
      {
        "bankName": "АКБ Держава",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000235.png",
        "schema": "bank100000000235",
        "package_name": "ru.ftc.faktura.derzhava"
      },
      {
        "bankName": "НБД-Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000134.png",
        "schema": "bank100000000134",
        "package_name": "ru.nbd.android"
      },
      {
        "bankName": "БАНК СНГБ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000091.png",
        "schema": "bank100000000091",
        "package_name": "ru.sngb.dbo.client.android"
      },
      {
        "bankName": "АИКБ Енисейский объединенный банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000258.png",
        "schema": "bank100000000258",
        "package_name": "ru.ftc.faktura.united"
      },
      {
        "bankName": "Банк Венец",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000153.png",
        "schema": "bank100000000153",
        "package_name": "ru.ftc.faktura.venetsbank"
      },
      {
        "bankName": "Почта Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000016.png",
        "schema": "bank100000000016",
        "package_name": "ru.letobank.Prometheus"
      },
      {
        "bankName": "Банк Русский Стандарт",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000014.png",
        "schema": "bank100000000014",
        "package_name": "ru.simpls.brs2.mobbank"
      },
      {
        "bankName": "Дальневосточный банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000083.png",
        "schema": "bank100000000083",
        "package_name": "com.bifit.dvbank"
      },
      {
        "bankName": "Банк Интеза",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000170.png",
        "schema": "bank100000000170",
        "package_name": "ru.ftc.faktura.intesabank"
      },
      {
        "bankName": "ГЕНБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000037.png",
        "schema": "bank100000000037",
        "package_name": "com.mmonline.mobile"
      },
      {
        "bankName": "ВУЗ-банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000215.png",
        "schema": "bank100000000215",
        "package_name": "cb.ibank.vuz"
      },
      {
        "bankName": "УРАЛПРОМБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000142.png",
        "schema": "bank100000000142",
        "package_name": "ru.uralprombank.mobilebanknew.googleplay"
      },
      {
        "bankName": "Банк Национальный стандарт",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000243.png",
        "schema": "bank100000000243",
        "package_name": "ru.ftc.faktura.nsbank"
      },
      {
        "bankName": "Банк Екатеринбург",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000090.png",
        "schema": "bank100000000090",
        "package_name": "ru.emb.android"
      },
      {
        "bankName": "МОРСКОЙ БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000171.png",
        "schema": "bank100000000171",
        "package_name": "ru.ftc.faktura.maritimebank"
      },
      {
        "bankName": "Кредит Урал Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000064.png",
        "schema": "bank100000000064",
        "package_name": "com.credituralbank.CUBmobilenew"
      },
      {
        "bankName": "Углеметбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000093.png",
        "schema": "bank100000000093",
        "package_name": "com.isimplelab.isimpleceo.uglemet"
      },
      {
        "bankName": "Авто Финанс Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000253.png",
        "schema": "bank100000000253",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "КБ СТРОЙЛЕСБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000193.png",
        "schema": "bank100000000193",
        "package_name": "com.bssys.stroylesretail"
      },
      {
        "bankName": "Банк ИТУРУП",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000158.png",
        "schema": "bank100000000158",
        "package_name": "ru.ftc.faktura.iturup"
      },
      {
        "bankName": "Первый Инвестиционный Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000174.png",
        "schema": "bank100000000174",
        "package_name": "ru.ftc.faktura.finbank"
      },
      {
        "bankName": "Газтрансбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000183.png",
        "schema": "bank100000000183",
        "package_name": "ru.ftc.faktura.gaztransbank"
      },
      {
        "bankName": "ЧЕЛИНДБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000106.png",
        "schema": "bank100000000106",
        "package_name": "com.isimplelab.ibank.chelind"
      },
      {
        "bankName": "НИКО-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000115.png",
        "schema": "bank100000000115",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "НОКССБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000062.png",
        "schema": "bank100000000062",
        "package_name": "ru.ftc.faktura.nokss"
      },
      {
        "bankName": "ВЛАДБИЗНЕСБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000058.png",
        "schema": "bank100000000058",
        "package_name": "ru.ftc.faktura.vlbb"
      },
      {
        "bankName": "Кузнецкбизнесбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000195.png",
        "schema": "bank100000000195",
        "package_name": "ru.ftc.faktura.kbb"
      },
      {
        "bankName": "Автоградбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000130.png",
        "schema": "bank100000000130",
        "package_name": "ru.faktura.avtograd.person"
      },
      {
        "bankName": "Томскпромстройбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000206.png",
        "schema": "bank100000000206",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "АКБ МЕЖДУНАРОДНЫЙ ФИНАНСОВЫЙ КЛУБ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000203.png",
        "schema": "bank100000000203",
        "package_name": "ru.ftc.faktura.mfkbank"
      },
      {
        "bankName": "АКБ Форштадт",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000081.png",
        "schema": "bank100000000081",
        "package_name": "ru.ftc.faktura.forshtadt"
      },
      {
        "bankName": "АКБ Солид",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000230.png",
        "schema": "bank100000000230",
        "package_name": "ru.ftc.faktura.solidbank"
      },
      {
        "bankName": "Банк АЛЕКСАНДРОВСКИЙ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000211.png",
        "schema": "bank100000000211",
        "package_name": "ru.ftc.faktura.alexbank"
      },
      {
        "bankName": "АКИБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000107.png",
        "schema": "bank100000000107",
        "package_name": "ru.ftc.faktura.akibank"
      },
      {
        "bankName": "Нацинвестпромбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000185.png",
        "schema": "bank100000000185",
        "package_name": "ru.ftc.faktura.nipbank"
      },
      {
        "bankName": "АКБ Алеф-Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000113.png",
        "schema": "bank100000000113",
        "package_name": "ru.ftc.faktura.alefbank"
      },
      {
        "bankName": "КБ ВНЕШФИНБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000248.png",
        "schema": "bank100000000248",
        "package_name": "com.bifit.vfbank"
      },
      {
        "bankName": "КБ Урал ФД",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000151.png",
        "schema": "bank100000000151",
        "package_name": "com.bssys.uralfdretail"
      },
      {
        "bankName": "КБ АРЕСБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000129.png",
        "schema": "bank100000000129",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "Северный Народный Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000208.png",
        "schema": "bank100000000208",
        "package_name": "com.snb.online"
      },
      {
        "bankName": "Банк Объединенный капитал",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000182.png",
        "schema": "bank100000000182",
        "package_name": "com.bifit.mobile.citizen.okbank"
      },
      {
        "bankName": "ТАТСОЦБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000189.png",
        "schema": "bank100000000189",
        "package_name": "com.tatsotsbank.dbomobile"
      },
      {
        "bankName": "Норвик Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000202.png",
        "schema": "bank100000000202",
        "package_name": "ru.vtkbank.android"
      },
      {
        "bankName": "Джей энд Ти Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000213.png",
        "schema": "bank100000000213",
        "package_name": "ru.ftc.faktura.jtbank"
      },
      {
        "bankName": "НС Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000071.png",
        "schema": "bank100000000071",
        "package_name": "ru.ftc.faktura.ns"
      },
      {
        "bankName": "Земский банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000066.png",
        "schema": "bank100000000066",
        "package_name": "ru.ftc.faktura.zemskybank"
      },
      {
        "bankName": "Банк Аверс",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000154.png",
        "schema": "bank100000000154",
        "package_name": "com.bssys.aversretail"
      },
      {
        "bankName": "КБ РУСНАРБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000194.png",
        "schema": "bank100000000194",
        "package_name": "ru.rusnarbank.correqts.retail"
      },
      {
        "bankName": "РЕАЛИСТ БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000232.png",
        "schema": "bank100000000232",
        "package_name": "ru.ftc.faktura.baikalinvestbank"
      },
      {
        "bankName": "Эс-Би-Ай Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000105.png",
        "schema": "bank100000000105",
        "package_name": "ru.sbi.android"
      },
      {
        "bankName": "МЕТКОМБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000136.png",
        "schema": "bank100000000136",
        "package_name": "com.metkombank.mobile"
      },
      {
        "bankName": "КБЭР Банк Казани",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000191.png",
        "schema": "bank100000000191",
        "package_name": "com.isimplelab.ionic.kazan.fl"
      },
      {
        "bankName": "АКБ Трансстройбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000197.png",
        "schema": "bank100000000197",
        "package_name": "com.intervale.sbp.atlas"
      },
      {
        "bankName": "Банк Заречье",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000205.png",
        "schema": "bank100000000205",
        "package_name": "com.bifit.mobile.citizen.zarech"
      },
      {
        "bankName": "КБ Центр-инвест",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000059.png",
        "schema": "bank100000000059",
        "package_name": "ru.centrinvest.mobilebanking2018"
      },
      {
        "bankName": "Датабанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000070.png",
        "schema": "bank100000000070",
        "package_name": "com.mifors.izhcombank"
      },
      {
        "bankName": "КБ Гарант-Инвест",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000112.png",
        "schema": "bank100000000112",
        "package_name": "com.intervale.sbp.atlas"
      },
      {
        "bankName": "СОЦИУМ-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000223.png",
        "schema": "bank100000000223",
        "package_name": "com.intervale.sbp.atlas"
      },
      {
        "bankName": "КБ СИНКО-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000148.png",
        "schema": "bank100000000148",
        "package_name": "com.intervale.sbp.atlas"
      },
      {
        "bankName": "ИШБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000199.png",
        "schema": "bank100000000199",
        "package_name": "com.bifit.pmobile.isbank"
      },
      {
        "bankName": "Банк ЗЕНИТ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000045.png",
        "schema": "bank100000000045",
        "package_name": "ru.zenit.android"
      },
      {
        "bankName": "АКБ ФОРА-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000217.png",
        "schema": "bank100000000217",
        "package_name": "ru.briginvest.sense"
      },
      {
        "bankName": "МП Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000169.png",
        "schema": "bank100000000169",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "Банк БКФ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000227.png",
        "schema": "bank100000000227",
        "package_name": "com.bifit.mobile.citizen.cfb"
      },
      {
        "bankName": "ГОРБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000125.png",
        "schema": "bank100000000125",
        "package_name": "com.isimplelab.ionic.gorbank.prod"
      },
      {
        "bankName": "МОСКОМБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000176.png",
        "schema": "bank100000000176",
        "package_name": "ru.ftc.faktura.moscombank"
      },
      {
        "bankName": "Тимер Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000144.png",
        "schema": "bank100000000144",
        "package_name": "com.timerbank.retail"
      },
      {
        "bankName": "КБ Ситибанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000128.png",
        "schema": "bank100000000128",
        "package_name": "com.citibank.mobile.ru"
      },
      {
        "bankName": "Автоторгбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000181.png",
        "schema": "bank100000000181",
        "package_name": "com.bifit.atbbank"
      },
      {
        "bankName": "БАНК УРАЛСИБ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000026.png",
        "schema": "bank100000000026",
        "package_name": "ru.bankuralsib.mb.android"
      },
      {
        "bankName": "Ингосстрах Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000078.png",
        "schema": "bank100000000078",
        "package_name": "com.banksoyuz.artsofte"
      },
      {
        "bankName": "Русьуниверсалбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000165.png",
        "schema": "bank100000000165",
        "package_name": "ru.rubank.ubsmobile"
      },
      {
        "bankName": "КБ УБРиР",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000031.png",
        "schema": "bank100000000031",
        "package_name": "cb.ibank"
      },
      {
        "bankName": "АКБ Приморье",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000226.png",
        "schema": "bank100000000226",
        "package_name": "ru.ftc.faktura.multibank"
      },
      {
        "bankName": "Банк ИПБ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000236.png",
        "schema": "bank100000000236",
        "package_name": "ru.ipb.ubsmobile",
        "webClientUrl": "https://on-line.ipb.ru/sbp",
        "isWebClientActive": "true"
      },
      {
        "bankName": "КБ Пойдём!",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000103.png",
        "schema": "bank100000000103",
        "package_name": "com.openwaygroup.ic.panda.poidem"
      },
      {
        "bankName": "АКБ ТЕНДЕР-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000175.png",
        "schema": "bank100000000175",
        "package_name": "com.bifit.mobile.citizen.tenderbank"
      },
      {
        "bankName": "ОТП Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000018.png",
        "schema": "bank100000000018",
        "package_name": "ru.otpbank.mobile"
      },
      {
        "bankName": "КБ Крокус-Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000212.png",
        "schema": "bank100000000212",
        "package_name": "ru.krk.ubsmobile"
      },
      {
        "bankName": "Хоум кредит",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000024.png",
        "schema": "bank100000000024",
        "package_name": "ru.homecredit.mycredit"
      },
      {
        "bankName": "КБ Ренессанс Кредит",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000032.png",
        "schema": "bank100000000032",
        "package_name": "cz.bsc.rc"
      },
      {
        "bankName": "УКБ Белгородсоцбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000225.png",
        "schema": "bank100000000225",
        "package_name": "com.bifit.mobile.citizen.belsocbank"
      },
      {
        "bankName": "Хайс Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000272.png",
        "schema": "bank100000000272",
        "package_name": "com.hicebank.android"
      },
      {
        "bankName": "Севергазбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000219.png",
        "schema": "bank100000000219",
        "package_name": "com.bpc.crossplatform_trading.bpc_trading"
      },
      {
        "bankName": "АКБ НРБанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000184.png",
        "schema": "bank100000000184",
        "package_name": "com.bifit.nrb"
      },
      {
        "bankName": "КБ Москоммерцбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000110.png",
        "schema": "bank100000000110",
        "package_name": "com.bifit.mobile.citizen.moskb"
      },
      {
        "bankName": "Кубаньторгбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000180.png",
        "schema": "bank100000000180",
        "package_name": "ru.isfront.android.kt"
      },
      {
        "bankName": "УКБ Новобанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000222.png",
        "schema": "bank100000000222",
        "package_name": "ru.ftc.faktura.novobank"
      },
      {
        "bankName": "НК Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000233.png",
        "schema": "bank100000000233",
        "package_name": "com.bifit.mobile.citizen.nkbank"
      },
      {
        "bankName": "Тойота Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000138.png",
        "schema": "bank100000000138",
        "package_name": "com.isimplelab.ibank.toyota"
      },
      {
        "bankName": "ББР Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000133.png",
        "schema": "bank100000000133",
        "package_name": "com.bifit.mobile.private.bbr"
      },
      {
        "bankName": "АКБ Ланта-Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000245.png",
        "schema": "bank100000000245",
        "package_name": "ru.ftc.faktura.lanta"
      },
      {
        "bankName": "КБ Долинск",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000270.png",
        "schema": "bank100000000270",
        "package_name": "ru.ftc.faktura.dolinsk"
      },
      {
        "bankName": "Банк Финсервис",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000216.png",
        "schema": "bank100000000216",
        "package_name": "com.finservice.mobile"
      },
      {
        "bankName": "КБ ЮНИСТРИМ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000042.png",
        "schema": "bank100000000042",
        "package_name": "com.ltech.unistream"
      },
      {
        "bankName": "КБ Новый век",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000067.png",
        "schema": "bank100000000067",
        "package_name": "com.isimplelab.ionic.standart"
      },
      {
        "bankName": "Банк МБА-МОСКВА",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000192.png",
        "schema": "bank100000000192",
        "package_name": "ru.ibam.retailmobile"
      },
      {
        "bankName": "БКС Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000041.png",
        "schema": "bank100000000041",
        "package_name": "ru.bcs.bcsbank"
      },
      {
        "bankName": "АКБ СЛАВИЯ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000200.png",
        "schema": "bank100000000200",
        "package_name": "com.isimplelab.ionic.slavia.prod"
      },
      {
        "bankName": "АКБ ЕВРОФИНАНС МОСНАРБАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000167.png",
        "schema": "bank100000000167",
        "package_name": "com.bifit.mobile.citizen.efbank"
      },
      {
        "bankName": "Яндекс Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000150.png",
        "schema": "bank100000000150",
        "package_name": "com.yandex.bank"
      },
      {
        "bankName": "Банк БЖФ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000260.png",
        "schema": "bank100000000260",
        "package_name": "ru.ftc.faktura.bgfbank"
      },
      {
        "bankName": "КБ ЛОКО-Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000161.png",
        "schema": "bank100000000161",
        "package_name": "com.idamobile.android.LockoBank"
      },
      {
        "bankName": "БАНК МОСКВА-СИТИ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000234.png",
        "schema": "bank100000000234",
        "package_name": "com.bifit.mobile.citizen.MCBank"
      },
      {
        "bankName": "Драйв Клик Банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000250.png",
        "schema": "bank100000000250",
        "package_name": "com.cetelem.cetelem_android",
        "webClientUrl": "https://online.driveclickbank.ru",
        "isWebClientActive": "true"
      },
      {
        "bankName": "ГУТА-БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000149.png",
        "schema": "bank100000000149",
        "package_name": "com.bssys.gutaretail"
      },
      {
        "bankName": "ФИНСТАР БАНК",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000278.png",
        "schema": "bank100000000278",
        "package_name": "ru.ftc.faktura.siab"
      },
      {
        "bankName": "банк Раунд",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000247.png",
        "schema": "bank100000000247",
        "package_name": "com.isimplelab.ionic.round.prod"
      },
      {
        "bankName": "Прио-Внешторгбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000228.png",
        "schema": "bank100000000228",
        "package_name": "com.priobank.prio"
      },
      {
        "bankName": "Инбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000196.png",
        "schema": "bank100000000196",
        "package_name": "com.inbank.mobilebank"
      },
      {
        "bankName": "Уралфинанс",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000096.png",
        "schema": "bank100000000096",
        "package_name": "com.isimplelab.isimplemobile.payjet"
      },
      {
        "bankName": "Банк Агророс",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000102.png",
        "schema": "bank100000000102",
        "package_name": "ru.ftc.faktura.agroros"
      },
      {
        "bankName": "ЮГ-Инвестбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000160.png",
        "schema": "bank100000000160",
        "package_name": "com.bifit.mobile.citizen.invb"
      },
      {
        "bankName": "ЦентроКредит",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000231.png",
        "schema": "bank100000000231",
        "package_name": "com.compassplus.mobicash.customer"
      },
      {
        "bankName": "Снежинский",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000163.png",
        "schema": "bank100000000163",
        "package_name": "com.compassplus.mobicash.customer"
      },
      {
        "bankName": "Банк ФИНАМ",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000040.png",
        "schema": "bank100000000040",
        "package_name": "ru.finambank.app"
      },
      {
        "bankName": "Банк Точка",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000284.png",
        "schema": "bank100000000284",
        "package_name": ""
      },
      {
        "bankName": "банк Элита",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000266.png",
        "schema": "bank100000000266",
        "package_name": ""
      },
      {
        "bankName": "Металлинвестбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000046.png",
        "schema": "bank100000000046",
        "package_name": ""
      },
      {
        "bankName": "ПроБанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000117.png",
        "schema": "bank100000000117",
        "webClientUrl": "https://bk.probank.pro/a567/",
        "isWebClientActive": "true"
      },
      {
        "bankName": "Цифра банк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000265.png",
        "schema": "bank100000000265",
        "package_name": ""
      },
      {
        "bankName": "Озон Банк (Ozon)",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000273.png",
        "schema": "bank100000000273",
        "package_name": ""
      },
      {
        "bankName": "Первый Дортрансбанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000137.png",
        "schema": "bank100000000137",
        "package_name": ""
      },
      {
        "bankName": "ЦМРБанк",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000282.png",
        "schema": "bank100000000282",
        "package_name": ""
      },
      {
        "bankName": "Плайт",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000296.png",
        "schema": "bank100000000296",
        "webClientUrl": "https://plait.ru/lk/qr",
        "isWebClientActive": "true"
      },
      {
        "bankName": "Банк Оранжевый",
        "logoURL": "https://qr.nspk.ru/proxyapp/logo/bank100000000286.png",
        "schema": "bank100000000286"
      }
    ]
  };
}
