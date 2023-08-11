import SwiftUI

struct Song {
    var name: String
    var description: String
}

struct SongListView: View {
    var title: String
    var songs: [Song] // Update the parameter type to [Song]
    
    var body: some View {
        List(songs, id: \.name) { song in
            NavigationLink(destination: Text(song.description).multilineTextAlignment(.leading)) {
                Text(song.name)
            }
        }
        .navigationBarTitle(title)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("homepage1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 250.0, alignment: .center)
                    .border(Color.white, width: 3.0)
                    .clipped()
                
                NavigationLink(destination: SongListView(title: "Indirimbo (Ikinyarwanda)", songs: [
                    Song(name: "1 Murinzi We Vuz' Impanda", description: """
                            1   Murinzi, jy’ uvuz’ impanda,
                                Uhan’ umuntu wese.
                                Ng’ uzumv’ izo nkuru nziza,
                                Yihan’ akizw’ ibyaha
                                            
                            Gusubiramo
                                            
                            Murinzi we vuz’ impanda!
                            Yivuze cyane hose.
                            Menyesha bosubutumwa,
                            Imbohe zibohorwe.
                                            
                            2   Yivugirize mu mpinga,
                                Mw ishyamba mu gisiza;
                                Ndetse no mu nyanja hose,
                                Bameny’ ako gakiza.
                                            
                            3   Yivugirize mu nzira,
                                Mu rwiherero hose.
                                Datarabategereje,
                                Nta cy’ ataringanije.
                                            
                            4   Uyivugiriz’ indembe,
                                Na zo zikizw’ ibyaha.
                                Yesarabatumir’ ati:
                                Nimuze mbaboneze.

                    """), Song(name: "2 Umwam' Ageze Kw' irembo", description:
                                """
                    1   Umwam’ ageze kw irembo,
                        Wabambwe ku musaraba;
                        Yaje gukorany’ abera,
                        Babane mw ijuru.
                    
                    Gusubiramo
                    
                        Kw irembo, Kw irembo,
                        Kw irembo, Ubari kw irembo;
                        Nukw araje, Nukw araje,
                        Kand’ ageze kw irembo.
                    
                    2   Ibyerekana kuza kwe,
                        Birihuta kuboneka;
                        Kandi tugiye guhabwa,
                        Kubaho kw’ iteka.
                    
                    3   Ntabw’ intambar’ izashira,
                        Ntabw’ amahor’ azahora,
                        Kerek’ ibyaha n’ urupfu,
                        Byatsembwe na Yesu.
                    
                    4   Maze mw isi yagizwe nshya,
                        Niho tuzabah iteka;
                        Kudapfa kwakuye gupfa,
                        Dushiz’ agahinda.
                    """),Song(name: "3 Nzabona Yesu", description:
                                """
                    1   Nzabona Yesu mu maso,
                        Umuns’ azatujyana;
                        Niho nzamwitegereza,
                        Kw ari we wampfiriye.
                    
                    Gusubiramo
                    
                        Nzamurora mu maso ye,
                        uri kumwe mw ijuru;
                        Mmeny’ uk’ ubwiza bwe busa;
                        Nzamusingiz’ iteka.
                    
                    2   Ubu ndamutekereza,
                        Ariko simmurora.
                        Umuns’ uhiriw’ uzaza,
                        Nzamubonan’ ubwiza.
                    
                    3   Tuzishimir’ imbere ye,
                        Ubw’ ishavu rishize,
                        Ibigande, biganduwe,
                        N’ ahijimye hakeye.
                    
                    4   Nzanezererw’ imbere ye,
                        Nzamurora mmumenye,
                        Nzabane, na Yes’unkunda,
                        Ni we Mukiza wanjye.

                    """),Song(name: "4 Har' Amakuru Meza", description:
                                """
                    1   Har’ amakuru mez’ amenywa n’ abagenzi,
                        Bazerera kure y’ iwabo,
                        Kub’ Umukiza yenda kuza mu bwiza bwe,
                        Kand’ agiye kwim’ ingoma ye.
                    
                    Gusubiramo
                    
                        Azaza, ndabizi kw azagaruka,
                        Nuk azaza rwos’ azaza.
                        Abagenzi bose barembye,Bazakir’ Umukiza n’ aza kwima.
                    
                    2   Ibituro by’ abera bos’ uko bangana,
                        Byose bizakingurwa rwose;
                        Kand’ inteko z’ abasinzira mu kuzimu,
                        Bazongera gutura kw isi.
                    
                    3   Nta kizadutanya mur’ iyo si nshya nziza,
                        Tuzaririmb’ uko twakize.
                        Abacunguwe bazaba bavuye hose,
                        Baramy’ Umwami wo mw ijuru.
                    
                    4   Halleluy’ amina, halleluya iteka;
                        Ni twitonda tuzahatura.
                        Ba maso nezerwa,
                        kand’ ujye wiringira;
                        Mazuzambar’ ikamba ryiza.
                    """),Song(name: "5 Murinzi We Menyesh' Igihe", description:
                                """
                    1   Murinzi we! menyesh’ igihe!
                        Mbes’ iwacu n’ imuhero?
                        At’ ijoro ryijimye cyane,
                        Ariko buracya.
                        Ntukarire, Gumy’ ugende,
                        Nturorere kwiringira,
                        Kugez’ igihuzasohora,
                        Mu muns’ uhoraho.
                    
                    2   Murwanyi we! Tyo mbwira nawe!
                        Ansubiza yitonz’ ati:
                        Intambar’ igiye gushira,
                        Guma ku rugamba.
                        Wibabara, ihangane,
                        Wirek’ imirimo yawe,
                        Kuko tuzabon’ ibihembo,
                        Tumaze gutsinda.
                    
                    3   Ndacyabaz’ ibyaremwe byose,
                        Binsubiza bitya biti:
                        Iyi s’igiye guhanguka,
                        Haz’ ind’ idashira.
                        Ntukarir’ibimenyetso
                        ,byerekan’ aho tugeze;
                        Kand’ ibintu byose byaremwe,
                        biriteg’ impanda.
                    
                    4   Imuhir’ ubu ni bugufi,
                        Tunezerwe mu mitima.
                        Duhumure ko tuzakira,
                        Dushir’ agahinda.
                        Ntukarire tuzabana,
                        amakub’ azab’ ashize.
                        Ntabwo tuzabur’ amahoro
                        Mu rugo rwa Data.
                    
                    """),Song(name: "6 Mwebw' Abera Mube Maso", description:
                                """
                    1   Mwebw’ abera mube maso,
                        Ibyaremwe birahinda.
                        Mukomez’ imuri zanyu,
                        Mwiteg’ Umwam’ ari hafi.
                    
                    Gusubiramo
                    
                        Ara je Yes’ araje! Azanye n’icyubahiro.
                        Yes’ aje kwim’ ingoma ye,
                        Araje, Yes’ araje.
                    
                    2   Wibuk’ Umuvunyi wave,
                        Agakiza n’imbabazi,
                        Ikamba icyubahiro.
                        Jya wogez’ ako gakiza.
                    
                    3   Nta bwami budahanguka;
                        Wumv’ amagare y’ asuma.
                        Bwira bos’ iby’ imbabazi,
                        Ubu n’igihe impuhwe.
                    
                    4   oko yos’ azashira;
                        Krist’ atebuts’ ubwami bwe;
                        Is’ igiye guhanguka;
                        Nimwishim’ abahiriwe.
                    
                    5   Banyabyaha mwe nimuze!
                        Abitwarire kuri Se.
                        Mwese nimugire bwangu!
                        Imbabazi zikiriho.
                    
                    """),Song(name: "7 Ubwo Yesu Azagaruka", description:
                                """
                    1   Ubwo Yes’ azagaruka, kwend’ abo yatoye,
                        Bemeye kumuyoboka, N’abatoni be.
                    
                    Gusubiramo
                    
                        Bazaka nk’ inyenyeri, Zitatse kw ikamba rye;
                        Bazatangaza cyane, Bakize rwose.
                    
                    2   Ubw’ azaza gukorany’ abo yatoye bose,
                        Bera baboneye rwose, b’abatoni be.
                    
                    3   Yemwe bana! yemwe bana! bakund’ Umukiza;
                        Abakunda, abakunda, nk’ abatoni be.

                    """),Song(name: "8 Abarokots'Ibyago Byo Hasi.", description:
                                """
                    1   Abarokots’ ibyago byo hasi hazakoranywa,
                        Ab’ azatumir’ azajyana na bo.
                        Umwami n’agaruk’ ikondera rye rizavuga,
                        atek’ azab’ agiye gucibwa.
                    
                    Gusubiramo
                    
                        Azaba yabararitse,
                        Ubw’azabahamagara.
                        Azaba yabararitse,
                        Ab’azatumir’azajyana na bo.
                    
                    2   Uwo muns abapfuye muri Kristo bazazurwa,
                        Bazava mu bituro nka we rwose.
                        Abo yitoreye bazimana na we mw ijuru,Ubw’ azagenda, azajyana na bo.
                    
                    3   Ni ho tuzajya dukorer’ Umwami tudahwema;Tuzajya dusingiz’ urukundo rwe.Maz’ ubwo tuzarangiz’ imirimo yacu mw isi,Tuzateranywa tujyanwe mw ijuru.
                    
                    """),Song(name: "9 Vuz' Impanda Yumvikane Hose", description:
                                """
                    1   Vuz’ impanda yumvikane hose, Yesu agiye kuza!Muririmbe bagenzi mwishima, Yesu agiye kuza.
                    
                    Gusubiramo
                    
                        Ari hafi, Ari hafi,Umwam’ agiye kuza.
                    
                    2   Mujye muhererekanya hose, Yesu agiye kuza!Azazanicyubahiro cyinshi, Yesu agiye kuza.
                    
                    3   Yivugirize mu nyanja hose, Yesu agiye kuza!Yivugirize no mu bikombe, Yesu agiye kuza.
                    
                    4   Mu misoz’ uyihavugirize, Yesu agiye kuza!Imiyag’ ijyan’ ayo makuru, Yesu agiye kuza.
                    
                    5   ok’ubw’ azasubiranamo, Yesu agiye kuza!Ubwenge bwungukwa bwerekana, Ko Yes’ agiye kuza.
                    
                    """),Song(name: "10 Duhunre Ku Mugezi", description:
                                """
                    1   Duhurire ku mugezi,
                        Dusange bamaraika;
                        azi yawatunganye,
                        Atemb av’ imbere y’ Imana.
                    
                    Gusubiramo
                    
                        Nuko tujye ku mugezi!
                        Duhurire n’ abera ku mugezi!
                        Ku mugez’ utunganye w’ Imana,
                        Utemb’ imbere y’ intebe.
                    
                    2   Ku nkombe y’ uwo mugezi,
                        Ni ho tuzatambagira,
                        Turamy’ Umwami w’ Iteka,
                        Mu gihe cyiza kidashira.
                    
                    3   Tutageze ku mugezi,
                        Dutur’ imitwaro yacu;
                        Tuzakirishw’ imbabazi,
                        Duhabw’ umwambaro n’ikamba.
                    
                    4   Ub’umugez’ uri hafi,
                        Urugendo ruzashira;
                        Tuzishima mu thitima,
                        N’ indirimbo z’umunezero.

                    """),Song(name: "11 Mukiza Ngukunkne", description:
                                """
                    1   Mukiza ngukurikire, Ah’ unshakira hose;
                        Ah’ ujya ngukurikire, Mwami ngukurikire.
                    
                    Gusubiramo
                    
                        Mukiza ngukurikire, Wamviriy’ amaraso;
                        Nib’ utagir’ ukwita ho, Jye nkwikurikirire.
                    
                    2   Nahw inzira yazitirwa, Naho yakukumuka,
                        Kowayinyuzetno mbere, Nyicamo mfit’ ishimwe.
                    
                    3   Naho naterwa n’ibyago, Nkageragezwa cyane,
                        Warageragejwe nawe, Mwami ngukurikize.
                    
                    4   Nib’ unyobora mw ishavu, Niba nkena nkanenwa,
                        Wigeze kuba ruvumwa, Nanjye ngukurikize.
                    
                    """),Song(name: "12 Har' Isoko", description:
                                """
                    1   Har’ isokw ivamw amaraso,
                        Yo mu mitsi y’ Imanuweri.
                        Ni y’ atungany’ abanyabyaha,
                        Bagashirahw inenge,
                        Bagatsembwahw ibicumuro,
                        Byose bikabacikaho.
                        Ni y’ atunganyabanyabyaha,
                        Bagashirahw inenge.
                    
                    2   Igisambo ku musaraba,
                        Kiyarabutswe cyarihannye;
                        Nanjye mbwiriza nkwizigire,
                        Noye kujya nshumura;
                        Ibyaha mbicikeho rwose,
                        Noye kujya nkugomera;
                        Nanjye mbwiriza nkwizigire,
                        Noye kujya nshumura.
                    
                    3   araso yaw’ atunganye,
                        Ahoran’ imbaraga nyinshi;
                        Ni yo wacunguj’ itorero,
                        Yaritsembyemw ibyaha;
                        Ryaganjijimbaraga yabyo.
                        Ryarabirokotse rwose.
                        Ni yo wacungujitorero,
                        Yaritsembyemw ibyaha.
                    
                    4   Mperey’ igihe mmeny’ isoko,
                        Iva mu bikomere byawe.
                        Nogez’ urwo rukundo rwawe,
                        Nzahora ngusingiza;
                        Nzahora ngusingiz’ iteka,
                        Nzajya ngusingiz’ iteka.
                        Nogez’ urwo rukundo rwawe,
                        Nzahora ngusingiza.
                    
                    5   Mwami mpora ngucumuraho,
                        Mpa kwizer’ imbabazi zawe!
                        N’ amaraso yaw’ atunganye,
                        Mpa kuramishwa nawe!
                        Mpa kuramishwa nawe Yesu!
                        Mpa no kuramishwa nawe!
                        N’ amaraso yaw atunganye,
                        Mpa kuramishwa nawe!
                    
                    6   Har’ indirimbo zera ntazi,
                        Nzaziririmbira mw ijuru.
                        Naho nagobw’ ururim’ ubu,
                        Uzarugobotora;
                        Uzarugobotora Yesu,
                        Ni wow’ uzankiza rwose.
                        Naho nagobw’ ururim’ ubu,
                        Uzarugobotora.
                    
                    """),Song(name: "13 Mwami Yesu Ndifuza", description:
                                """
                    1   Mwami Yesu ndifuza k’ umboneza;
                        Ndashaka k’ umba mu mutim’ iteka.
                        Noye kujya nita ku bigirwamana.
                    
                    3   Yesu ndagutakambira nkomeje,
                        Ngo mbon’ uko nkwitega Mwami mwiza!
                        Ntunganish’ umuvu w’ amaraso yawe!
                    
                    4   Mwami ngutegereje nihanganye,
                        Yesu ngwin’ ump’ umutim’ utunganye!
                        Ntiwari wirengagiz’ abagushaka.
                    
                    """),Song(name: "14 Wumv' Amatur' Agwa", description:
                                """
                    1   Wumv’ amakut’ agwa, Ukw ajegera.
                        Yose n’ aya Yesu, Ni we dutura.
                    
                    Gusubiramo
                    
                        Agwa, agwa, agwa, agwa, akut’ agwa;
                        Yose n’aya Yesu, Ni we dutura.
                    
                    2   Ava mu tuganza, Wumv’ agumy’ agwa!
                        N’ ituro rya Yesu, ryo mu twana twe.
                    
                    3   Ubu turi bato, Ni yo dufite;
                        Ubwo tuzakura, Tuzasumbyaho.
                    
                    4   Ni tugira bike, Tukwihe Mwami.
                        Byos’ azabyakira, Atwikirize.
                    
                    """),Song(name: "15 Urukundo Rwa Yesu", description:
                                """
                    1   Urukundo rwa Yesu, Rwageze kuri twebwe;
                        Rudukuraho rwose, Urubanza rwo gupfa.
                    
                    Gusubiramo
                    
                        Aradukunda, aradukunda,
                        Aradukunda, Yesu Mutabazi.
                    
                    2   Abatari bahabwa, Ubugingo bw’ iteka,
                        Twihute tubabwire, Urukundo rwa Yesu.
                    
                    3   Kuko yaradukunze, Yadupfiriye twese,
                        Natwe dukunde dutyo, Abakiri mu byaha.
                    
                    4   Aho Yes’ azazira, Aje kwim’ ingoma ye,
                        Ni bwo tuzumv’ ijwi rye, Ati: Mwakoze neza.
                    
                    """),Song(name: "16 Mbonez' Intoke Zanjye", description:
                                """
                    1   Mbonez’ intoke zanjye, Zibonere rwose;
                        Ko nazihaye Yesu, Ngo zimukorere.
                        
                    Gusubiramo
                    
                        Nitondesh’ intambwe, Aho njya hose.
                        Ne kuyobok’ undi, Keretse Yesu.
                    
                    2   Nteg’ amatwi ngo numve, Nez’ umunsi wose.
                        Nkor’ ibikwive numva, Ntagir’ icyo mpuga.
                    
                    3   Mpang’ amabokw amaso, Ngo ndeb’ iby’ akora;
                        Nyabuze kwenderanya, Ngw akorere Yesu.
                    
                    """),Song(name: "17 Njye Nsingiz' Urukundo", description:
                                """
                    1Njye nsingiz’ urukundo, Ni rwo rumbwiriza,
                    Kugirir’ abandi neza, Bakamenya Yesu.
                    
                    Gusubiramo
                    
                    Data We ko nd’ umwana wawe!
                    Data We ngukurikize!
                    Njye nsingiz’ urukundo, Ni rwo rumbwiriza,
                    Kugirir’ abandi neza, Bakamenya Yesu.
                    
                    2Iyi s’ibamw ishavu, N’ ibyaha n’urupfu;
                    Ntibimbuza kuyobora, bamw’ ibwami bwawe.
                    
                    3Maz’ ibyo ni bishira, Tuzabe mw ijuru,
                    Tuzajye tuguhimbaza, Mwami w’ urukundo.

                    """),Song(name: "18 Yemwe Ngabo Z' Umwami", description:
                                """
                    """),Song(name: "19 Ba Mas' Udacumusa", description:
                                """
                    """),Song(name: "20 Huguka Mutima Wanjye", description:
                                """
                    """),Song(name: "21 Ndeger' Umusaraba", description:
                                """
                    """),Song(name: "22 Mwami Mp' Umugisha Wawe", description:
                                """
                    """),Song(name: "23 Untambe Hejum Mwuka Wera", description:
                                """
                    """),Song(name: "24 Ndagushak' Iteka", description:
                                """
                    """),Song(name: "25 Yesu Nd' Uwawe Nyakira", description:
                                """
                    """),Song(name: "26 Ubu Nj' Uko Ndi", description:
                                """
                    """),Song(name: "27  Dushim' Imana", description:
                                """
                    """),Song(name: "28 Shaka Gutungana", description:
                                """
                    """),Song(name: "29 Ungumane", description:
                                """
                    """),Song(name: "30 gah' Umuns' Urakuze", description:
                                """
                    """),Song(name: "31 Mukiza We Niwe Mucyo Waka", description:
                                """
                    """),Song(name: "32 Yesu N' Urutare Rwacu", description:
                                """
                    """),Song(name: "33Song2", description:
                                """
                    """),Song(name: "34Song2", description:
                                """
                    """),Song(name: "35Song2", description:
                                """
                    """),Song(name: "36Song2", description:
                                """
                    """),Song(name: "37Song2", description:
                                """
                    """),Song(name: "38Song2", description:
                                """
                    """),Song(name: "39Song2", description:
                                """
                    """),Song(name: "40Song2", description:
                                """
                    """),Song(name: "41Song2", description:
                                """
                    """),Song(name: "42Song2", description:
                                """
                    """),Song(name: "43Song2", description:
                                """
                    """),Song(name: "44Song2", description:
                                """
                    """),Song(name: "45Song2", description:
                                """
                    """),Song(name: "46Song2", description:
                                """
                    """),Song(name: "47Song2", description:
                                """
                    """),Song(name: "48Song2", description:
                                """
                    """),Song(name: "49Song2", description:
                                """
                    """),Song(name: "50Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """),Song(name: "Song2", description:
                                """
                    """)
                
                        ])) {
                    Text("Indirimbo Zo Guhimbaza Imana")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: SongListView(title: "Indirimbo (Kirundi)", songs: [
                    Song(name: "Song 1", description: "Description for Song 1"),
                    Song(name: "Song 2", description: "Description for Song 2"),
                    Song(name: "Song 3", description: "Description for Song 3")
                ])) {
                    Text("Indirimbo Zo Guhimbaza Imana")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: SongListView(title: "Nyimbo Za Wokovu", songs: [
                    Song(name: "Song 1", description: "Description for Song 1"),
                    Song(name: "Song 2", description: "Description for Song 2"),
                    Song(name: "Song 3", description: "Description for Song 3")
                ])) {
                    Text("Nyimbo Za Wokovu")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationBarTitle("Song Selection")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

