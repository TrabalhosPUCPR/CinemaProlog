/* 

Part 1: Escreva regras para responder as seguintes perguntas:

    a. Em que ano estreiou o filme American Beauty released?
    b. Liste todos os filmes que estreiaram em 2000.
    c. Liste os filmes que estreiaram antes de 2000.
    d. Liste os filmes que estreiaram depois de 1990.
    f. Encontre o diretor dos filmes com Scarlett Johansson.
    g. Encontre os atores que também dirigiram filmes.
    h. Encontre os atores, ou atrizes, que dirigiram filmes.
    i. Encontre o filme no qual John Goodman e Jeff Bridges atuaram.
*/

/* Como este banco de dados foi montado:
    filme(M, Y) <- filme M estreiou no ano Y
    diretor(M, D) <- filme M dirigido pelo diretor D
    ator(M, A, R) <- ator A interpretou o papel de R no filme M
    atriz(M, A, R) <- atriz A interpretou o papel de R no filme M
*/

/*
 * usando discontiguos, podemos determinar a ordem em que os predicados 
 * irão aparecer no banco de dados. Neste caso, a ordem foi escolhida para 
 * ser adequada ao arquivo txt que continha estas informações.
 * */
:- discontiguous
        filme/2,
        diretor/2,
        ator/3,
        atriz/3.

/*
 * Você vai precisar usar a variável anônima _ veja o exemplo a seguir:
 * atriz(M, scarlett_johansson, _), diretor(M, D).
 * rode este querie e veja se funciona. 
 * Todas as variáveis anônimas, são diferentes entre si e como tal 
 * são tratadas de forma diferente.
 * Maria ama joao, joao ama paula, se queremos saber se paulo quer saber quem o ama
 * podemos usar uma variável comum, mas para saber se alguém o ama podemos usar uma 
 * variável anônima
 * ama(maria,joao).
 * ama(joao,paula).
 * ama(cachorro,bife).
 * ama(jose,maria).
 * tente: ama(X,joao).
 * tente: ama(_,joao).
 * */

 % RESPOSTAS:

/* 1
 * filme(american_beauty, X).
*/

% 2
 filmes2000(_) :- filme(X, 2000), write(X),nl, fail.

% 3
 filmesantes2000(_) :- filme(X, Y), Y < 2000, write(X),nl, fail.

% 4
 filmesdepois1990(_) :- filme(X, Y), Y > 1990, write(X),nl, fail.

% 5
 diretoresfilmecomjohansson(_) :- atriz(X, scarlett_johansson, _), diretor(X, D), write(D),nl, fail.

% 6
 atoresquetambemsaodiretores(_) :- ator(X, Y, _), diretor(X, Y), write(Y),nl, fail.

% 7
 atoresouatrizesquetambemsaodiretores(_) :- (atriz(X, Y, _), diretor(X, Y); ator(X, Y, _), diretor(X, Y)), write(X),nl, fail.

% 8
 filmescomgoodmanebridges(_) :- ator(X, john_goodman, _), ator(X, jeff_bridges, _),write(X),nl, fail.

/** <examples>
?- filme(american_beauty, X).
?- filmes2000(_).
?- filmesantes2000(_).
?- filmesdepois1990(_).
?- diretoresfilmecomjohansson(_).
?- atoresquetambemsaodiretores(_).
?- atoresouatrizesquetambemsaodiretores(_).
?- filmescomgoodmanebridges(_).
*/

%Banco de Dados
filme(american_beauty, 1999).
diretor(american_beauty, sam_mendes).
ator(american_beauty, kevin_spacey, lester_burnham).
atriz(american_beauty, annette_bening, carolyn_burnham).
atriz(american_beauty, thora_birch, jane_burnham).
ator(american_beauty, wes_bentley, ricky_fitts).
atriz(american_beauty, mena_suvari, angela_hayes).
ator(american_beauty, chris_cooper, col_frank_fitts_usmc).
ator(american_beauty, peter_gallagher, buddy_kane).
atriz(american_beauty, allison_janney, barbara_fitts).
ator(american_beauty, scott_bakula, jim_olmeyer).
ator(american_beauty, sam_robards, jim_berkley).
ator(american_beauty, barry_del_sherman, brad_dupree).
atriz(american_beauty, ara_celi, sale_house_woman_1).
ator(american_beauty, john_cho, sale_house_man_1).
ator(american_beauty, fort_atkinson, sale_house_man_2).
atriz(american_beauty, sue_casey, sale_house_woman_2).
ator(american_beauty, kent_faulcon, sale_house_man_3).
atriz(american_beauty, brenda_wehle, sale_house_woman_4).
atriz(american_beauty, lisa_cloud, sale_house_woman_5).
atriz(american_beauty, alison_faulk, spartanette_1).
atriz(american_beauty, krista_goodsitt, spartanette_2).
atriz(american_beauty, lily_houtkin, spartanette_3).
atriz(american_beauty, carolina_lancaster, spartanette_4).
atriz(american_beauty, romana_leah, spartanette_5).
atriz(american_beauty, chekeshka_van_putten, spartanette_6).
atriz(american_beauty, emily_zachary, spartanette_7).
atriz(american_beauty, nancy_anderson, spartanette_8).
atriz(american_beauty, reshma_gajjar, spartanette_9).
atriz(american_beauty, stephanie_rizzo, spartanette_10).
atriz(american_beauty, heather_joy_sher, playground_girl_1).
atriz(american_beauty, chelsea_hertford, playground_girl_2).
atriz(american_beauty, amber_smith, christy_kane).
ator(american_beauty, joel_mccrary, catering_boss).
atriz(american_beauty, marissa_jaret_winokur, mr_smiley_s_counter_girl).
ator(american_beauty, dennis_anderson, mr_smiley_s_manager).
ator(american_beauty, matthew_kimbrough, firing_range_attendant).
atriz(american_beauty, erin_cathryn_strubbe, young_jane_burnham).
atriz(american_beauty, elaine_corral_kendall, newscaster).

filme(anna, 1987).
diretor(anna, yurek_bogayevicz).
atriz(anna, sally_kirkland, anna).
ator(anna, robert_fields, daniel).
atriz(anna, paulina_porizkova, krystyna).
ator(anna, gibby_brand, diretor_1).
ator(anna, john_robert_tillotson, diretor_2).
atriz(anna, julianne_gilliam, woman_author).
ator(anna, joe_aufiery, stage_manager).
ator(anna, lance_davis, assistant_1).
atriz(anna, deirdre_o_connell, assistant_2).
atriz(anna, ruth_maleczech, woman_1_woman_named_gloria).
atriz(anna, holly_villaire, woman_2_woman_with_bird).
atriz(anna, shirl_bernheim, woman_3_woman_in_white_veil).
atriz(anna, ren_e_coleman, woman_4_woman_in_bonnet).
atriz(anna, gabriela_farrar, woman_5_woman_in_black).
atriz(anna, jordana_levine, woman_6_woman_in_turban).
atriz(anna, rosalie_traina, woman_7_woman_in_gold).
atriz(anna, maggie_wagner, atriz_d).
ator(anna, charles_randall, agent).
atriz(anna, mimi_weddell, agent_s_secretary).
ator(anna, larry_pine, baskin).
atriz(anna, lola_pashalinski, producer).
ator(anna, stefan_schnabel, professor).
ator(anna, steven_gilborn, tonda).
ator(anna, rand_stone, george).
atriz(anna, geena_goodwin, daniel_s_mother).
ator(anna, david_r_ellis, daniel_s_father).
ator(anna, brian_kohn, jonathan).
atriz(anna, caroline_aaron, interviewer).
ator(anna, vasek_simek, czech_demonstrator_1).
ator(anna, paul_leski, czech_demonstrator_2).
ator(anna, larry_attile, czech_demonstrator_3).
atriz(anna, sofia_coppola, noodle).
ator(anna, theo_mayes, dancing_dishwasher).
atriz(anna, nina_port, dancing_dishwasher).

filme(barton_fink, 1991).
diretor(barton_fink, ethan_coen).
diretor(barton_fink, joel_coen).
ator(barton_fink, john_turturro, barton_fink).
ator(barton_fink, john_goodman, charlie_meadows).
atriz(barton_fink, judy_davis, audrey_taylor).
ator(barton_fink, michael_lerner, jack_lipnick).
ator(barton_fink, john_mahoney, w_p_mayhew).
ator(barton_fink, tony_shalhoub, ben_geisler).
ator(barton_fink, jon_polito, lou_breeze).
ator(barton_fink, steve_buscemi, chet).
ator(barton_fink, david_warrilow, garland_stanford).
ator(barton_fink, richard_portnow, detective_mastrionotti).
ator(barton_fink, christopher_murney, detective_deutsch).
ator(barton_fink, i_m_hobson, derek).
atriz(barton_fink, meagen_fay, poppy_carnahan).
ator(barton_fink, lance_davis, richard_st_claire).
ator(barton_fink, harry_bugin, pete).
ator(barton_fink, anthony_gordon, maitre_d).
ator(barton_fink, jack_denbo, stagehand).
ator(barton_fink, max_grod_nchik, clapper_boy).
ator(barton_fink, robert_beecher, referee).
ator(barton_fink, darwyn_swalve, wrestler).
atriz(barton_fink, gayle_vance, geisler_s_secretary).
ator(barton_fink, johnny_judkins, sailor).
atriz(barton_fink, jana_marie_hupp, uso_girl).
atriz(barton_fink, isabelle_townsend, beauty).
ator(barton_fink, william_preston_robertson, voice).

filme(the_big_lebowski, 1998).
diretor(the_big_lebowski, joel_coen).
ator(the_big_lebowski, jeff_bridges, jeffrey_lebowski__the_dude).
ator(the_big_lebowski, john_goodman, walter_sobchak).
atriz(the_big_lebowski, julianne_moore, maude_lebowski).
ator(the_big_lebowski, steve_buscemi, theodore_donald_donny_kerabatsos).
ator(the_big_lebowski, david_huddleston, jeffrey_lebowski__the_big_lebowski).
ator(the_big_lebowski, philip_seymour_hoffman, brandt).
atriz(the_big_lebowski, tara_reid, bunny_lebowski).
ator(the_big_lebowski, philip_moon, woo_treehorn_thug).
ator(the_big_lebowski, mark_pellegrino, blond_treehorn_thug).
ator(the_big_lebowski, peter_stormare, uli_kunkel_nihilist_1__karl_hungus).
ator(the_big_lebowski, flea, nihilist_2).
ator(the_big_lebowski, torsten_voges, nihilist_3).
ator(the_big_lebowski, jimmie_dale_gilmore, smokey).
ator(the_big_lebowski, jack_kehler, marty).
ator(the_big_lebowski, john_turturro, jesus_quintana).
ator(the_big_lebowski, james_g_hoosier, liam_o_brien).
ator(the_big_lebowski, carlos_leon, maude_s_thug).
ator(the_big_lebowski, terrence_burton, maude_s_thug).
ator(the_big_lebowski, richard_gant, older_cop).
ator(the_big_lebowski, christian_clemenson, younger_cop).
ator(the_big_lebowski, dom_irrera, tony_the_chauffeur).
ator(the_big_lebowski, g_rard_l_heureux, lebowski_s_chauffeur).
ator(the_big_lebowski, david_thewlis, knox_harrington).
atriz(the_big_lebowski, lu_elrod, coffee_shop_waitress).
ator(the_big_lebowski, mike_gomez, auto_circus_cop).
ator(the_big_lebowski, peter_siragusa, gary_the_bartender).
ator(the_big_lebowski, sam_elliott, the_stranger).
ator(the_big_lebowski, marshall_manesh, doctor).
ator(the_big_lebowski, harry_bugin, arthur_digby_sellers).
ator(the_big_lebowski, jesse_flanagan, little_larry_sellers).
atriz(the_big_lebowski, irene_olga_l_pez, pilar_sellers_housekeeper).
ator(the_big_lebowski, luis_colina, corvette_owner).
ator(the_big_lebowski, ben_gazzara, jackie_treehorn).
ator(the_big_lebowski, leon_russom, malibu_police_chief).
ator(the_big_lebowski, ajgie_kirkland, cab_driver).
ator(the_big_lebowski, jon_polito, da_fino).
atriz(the_big_lebowski, aimee_mann, nihilist_woman).
ator(the_big_lebowski, jerry_haleva, saddam_hussein).
atriz(the_big_lebowski, jennifer_lamb, pancake_waitress).
ator(the_big_lebowski, warren_keith, funeral_diretor).
atriz(the_big_lebowski, wendy_braun, chorine_dancer).
atriz(the_big_lebowski, asia_carrera, sherry_in_logjammin).
atriz(the_big_lebowski, kiva_dawson, dancer).
atriz(the_big_lebowski, robin_jones, checker_at_ralph_s).
ator(the_big_lebowski, paris_themmen, '').

filme(blade_runner, 1997).
diretor(blade_runner, joseph_d_kucan).
ator(blade_runner, martin_azarow, dino_klein).
ator(blade_runner, lloyd_bell, additional_voices).
ator(blade_runner, mark_benninghoffen, ray_mccoy).
ator(blade_runner, warren_burton, runciter).
atriz(blade_runner, gwen_castaldi, dispatcher_and_newscaster).
atriz(blade_runner, signy_coleman, dektora).
ator(blade_runner, gary_columbo, general_doll).
ator(blade_runner, jason_cottle, luthur_lance_photographer).
ator(blade_runner, timothy_dang, izo).
ator(blade_runner, gerald_deloff, additional_voices).
atriz(blade_runner, lisa_edelstein, crystal_steele).
ator(blade_runner, gary_l_freeman, additional_voices).
ator(blade_runner, jeff_garlin, lieutenant_edison_guzza).
ator(blade_runner, eric_gooch, additional_voices).
ator(blade_runner, javier_grajeda, gaff).
ator(blade_runner, mike_grayford, additional_voices).
atriz(blade_runner, gloria_hoffmann, mia).
ator(blade_runner, james_hong, dr_chew).
atriz(blade_runner, kia_huntzinger, additional_voices).
ator(blade_runner, anthony_izzo, officer_leary).
ator(blade_runner, brion_james, leon).
atriz(blade_runner, shelly_johnson, additional_voices).
ator(blade_runner, terry_jourden, spencer_grigorian).
ator(blade_runner, jerry_kernion, holloway).
ator(blade_runner, joseph_d_kucan, crazylegs_larry).
ator(blade_runner, jerry_lan, murray).
ator(blade_runner, michael_b_legg, additional_voices).
ator(blade_runner, demarlo_lewis, additional_voices).
ator(blade_runner, tse_cheng_lo, additional_voices).
atriz(blade_runner, etsuko_mader, additional_voices).
ator(blade_runner, mohanned_mansour, additional_voices).
atriz(blade_runner, karen_maruyama, fish_dealer).
ator(blade_runner, michael_mcshane, marcus_eisenduller).
ator(blade_runner, alexander_mervin, sadik).
ator(blade_runner, tony_mitch, governor_kolvig).
ator(blade_runner, toru_nagai, howie_lee).
ator(blade_runner, dwight_k_okahara, additional_voices).
ator(blade_runner, gerald_okamura, zuben).
ator(blade_runner, bruno_oliver, gordo_frizz).
atriz(blade_runner, pauley_perrette, lucy_devlin).
ator(blade_runner, mark_rolston, clovis).
ator(blade_runner, stephen_root, early_q).
ator(blade_runner, william_sanderson, j_f_sebastian).
ator(blade_runner, vincent_schiavelli, bullet_bob).
atriz(blade_runner, rosalyn_sidewater, isabella).
ator(blade_runner, ron_snow, blimp_announcer).
ator(blade_runner, stephen_sorrentino, shoeshine_man_hasan).
atriz(blade_runner, jessica_straus, answering_machine_female_announcer).
atriz(blade_runner, melonie_sung, additional_voices).
ator(blade_runner, iqbal_theba, moraji).
atriz(blade_runner, myriam_tubert, insect_dealer).
ator(blade_runner, joe_turkel, eldon_tyrell).
ator(blade_runner, bill_wade, hanoi).
ator(blade_runner, jim_walls, additional_voices).
atriz(blade_runner, sandra_wang, additional_voices).
ator(blade_runner, marc_worden, baker).
atriz(blade_runner, sean_young, rachael).
ator(blade_runner, joe_tippy_zeoli, officer_grayford).

filme(blood_simple, 1984).
diretor(blood_simple, ethan_coen).
diretor(blood_simple, joel_coen).
ator(blood_simple, john_getz, ray).
atriz(blood_simple, frances_mcdormand, abby).
ator(blood_simple, dan_hedaya, julian_marty).
ator(blood_simple, m_emmet_walsh, loren_visser_private_detective).
ator(blood_simple, samm_art_williams, meurice).
atriz(blood_simple, deborah_neumann, debra).
atriz(blood_simple, raquel_gavia, landlady).
ator(blood_simple, van_brooks, man_from_lubbock).
ator(blood_simple, se_or_marco, mr_garcia).
ator(blood_simple, william_creamer, old_cracker).
ator(blood_simple, loren_bivens, strip_bar_exhorter).
ator(blood_simple, bob_mcadams, strip_bar_exhorter).
atriz(blood_simple, shannon_sedwick, stripper).
atriz(blood_simple, nancy_finger, girl_on_overlook).
ator(blood_simple, william_preston_robertson, radio_evangelist).
atriz(blood_simple, holly_hunter, helene_trend).
ator(blood_simple, barry_sonnenfeld, marty_s_vomiting).

filme(the_cotton_club, 1984).
diretor(the_cotton_club, francis_ford_coppola).
ator(the_cotton_club, richard_gere, michael_dixie_dwyer).
ator(the_cotton_club, gregory_hines, sandman_williams).
atriz(the_cotton_club, diane_lane, vera_cicero).
atriz(the_cotton_club, lonette_mckee, lila_rose_oliver).
ator(the_cotton_club, bob_hoskins, owney_madden).
ator(the_cotton_club, james_remar, dutch_schultz).
ator(the_cotton_club, nicolas_cage, vincent_dwyer).
ator(the_cotton_club, allen_garfield, abbadabba_berman).
ator(the_cotton_club, fred_gwynne, frenchy_demange).
atriz(the_cotton_club, gwen_verdon, tish_dwyer).
atriz(the_cotton_club, lisa_jane_persky, frances_flegenheimer).
ator(the_cotton_club, maurice_hines, clay_williams).
ator(the_cotton_club, julian_beck, sol_weinstein).
atriz(the_cotton_club, novella_nelson, madame_st_clair).
ator(the_cotton_club, laurence_fishburne, bumpy_rhodes).
ator(the_cotton_club, john_p_ryan, joe_flynn).
ator(the_cotton_club, tom_waits, irving_stark).
ator(the_cotton_club, ron_karabatsos, mike_best).
ator(the_cotton_club, glenn_withrow, ed_popke).
atriz(the_cotton_club, jennifer_grey, patsy_dwyer).
atriz(the_cotton_club, wynonna_smith, winnie_williams).
atriz(the_cotton_club, thelma_carpenter, norma_williams).
ator(the_cotton_club, charles_honi_coles, suger_coates).
ator(the_cotton_club, larry_marshall, cab_calloway_minnie_the_moocher__lady_with_the_fan_and_jitterbug_sung_by).
ator(the_cotton_club, joe_dallesandro, charles_lucky_luciano).
ator(the_cotton_club, ed_o_ross, monk).
ator(the_cotton_club, frederick_downs_jr, sullen_man).
atriz(the_cotton_club, diane_venora, gloria_swanson).
ator(the_cotton_club, tucker_smallwood, kid_griffin).
ator(the_cotton_club, woody_strode, holmes).
ator(the_cotton_club, bill_graham, j_w).
ator(the_cotton_club, dayton_allen, solly).
ator(the_cotton_club, kim_chan, ling).
ator(the_cotton_club, ed_rowan, messiah).
ator(the_cotton_club, leonard_termo, danny).
ator(the_cotton_club, george_cantero, vince_hood).
ator(the_cotton_club, brian_tarantina, vince_hood).
ator(the_cotton_club, bruce_macvittie, vince_hood).
ator(the_cotton_club, james_russo, vince_hood).
ator(the_cotton_club, giancarlo_esposito, bumpy_hood).
ator(the_cotton_club, bruce_hubbard, bumpy_hood).
ator(the_cotton_club, rony_clanton, caspar_holstein).
ator(the_cotton_club, damien_leake, bub_jewett).
ator(the_cotton_club, bill_cobbs, big_joe_ison).
ator(the_cotton_club, joe_lynn, marcial_flores).
ator(the_cotton_club, oscar_barnes, spanish_henry).
ator(the_cotton_club, ed_zang, hotel_clerk).
atriz(the_cotton_club, sandra_beall, myrtle_fay).
ator(the_cotton_club, zane_mark, duke_ellington).
ator(the_cotton_club, tom_signorelli, butch_murdock).
ator(the_cotton_club, paul_herman, policeman_1).
ator(the_cotton_club, randle_mell, policeman_2).
ator(the_cotton_club, steve_vignari, trigger_mike_coppola).
atriz(the_cotton_club, susan_mechsner, gypsie).
ator(the_cotton_club, gregory_rozakis, charlie_chaplin).
ator(the_cotton_club, marc_coppola, ted_husing).
atriz(the_cotton_club, norma_jean_darden, elda_webb).
ator(the_cotton_club, robert_earl_jones, stage_door_joe).
ator(the_cotton_club, vincent_jerosa, james_cagney).
atriz(the_cotton_club, rosalind_harris, fanny_brice).
ator(the_cotton_club, steve_cafiso, child_in_street).
ator(the_cotton_club, john_cafiso, child_in_street).
atriz(the_cotton_club, sofia_coppola, child_in_street).
atriz(the_cotton_club, ninon_digiorgio, child_in_street).
atriz(the_cotton_club, daria_hines, child_in_street).
atriz(the_cotton_club, patricia_letang, child_in_street).
ator(the_cotton_club, christopher_lewis, child_in_street).
atriz(the_cotton_club, danielle_osborne, child_in_street).
ator(the_cotton_club, jason_papalardo, child_in_street).
ator(the_cotton_club, demetrius_pena, child_in_street).
atriz(the_cotton_club, priscilla_baskerville, creole_love_call_sung_by).
atriz(the_cotton_club, ethel_beatty, bandana_babies_lead_vocal_dancer).
atriz(the_cotton_club, sydney_goldsmith, barbecue_bess_sung_by).
ator(the_cotton_club, james_buster_brown, hoofer).
ator(the_cotton_club, ralph_brown, hoofer).
ator(the_cotton_club, harold_cromer, hoofer).
ator(the_cotton_club, bubba_gaines, hoofer).
ator(the_cotton_club, george_hillman, hoofer).
ator(the_cotton_club, henry_phace_roberts, hoofer).
ator(the_cotton_club, howard_sandman_sims, hoofer).
ator(the_cotton_club, jimmy_slyde, hoofer).
ator(the_cotton_club, henry_letang, hoofer).
ator(the_cotton_club, charles_young, hoofer).
ator(the_cotton_club, skip_cunningham, tip_tap__toe).
ator(the_cotton_club, luther_fontaine, tip_tap__toe).
ator(the_cotton_club, jan_mickens, tip_tap__toe).
atriz(the_cotton_club, lydia_abarca, dancer).
atriz(the_cotton_club, sarita_allen, dancer).
atriz(the_cotton_club, tracey_bass, dancer).
atriz(the_cotton_club, jacquelyn_bird, dancer).
atriz(the_cotton_club, shirley_black_brown, dancer).
atriz(the_cotton_club, jhoe_breedlove, dancer).
ator(the_cotton_club, lester_brown, dancer).
atriz(the_cotton_club, leslie_caldwell, dancer).
atriz(the_cotton_club, melanie_caldwell, dancer).
ator(the_cotton_club, benny_clorey, dancer).
atriz(the_cotton_club, sheri_cowart, dancer).
atriz(the_cotton_club, karen_dibianco, dancer).
atriz(the_cotton_club, cisco_drayton, dancer).
atriz(the_cotton_club, anne_duquesnay, dancer).
atriz(the_cotton_club, carla_earle, dancer).
atriz(the_cotton_club, wendy_edmead, dancer).
atriz(the_cotton_club, debbie_fitts, dancer).
ator(the_cotton_club, ruddy_l_garner, dancer).
atriz(the_cotton_club, ruthanna_graves, dancer).
atriz(the_cotton_club, terri_griffin, dancer).
atriz(the_cotton_club, robin_harmon, dancer).
atriz(the_cotton_club, jackee_harree, dancer).
atriz(the_cotton_club, sonya_hensley, dancer).
ator(the_cotton_club, dave_jackson, dancer).
atriz(the_cotton_club, gail_kendricks, dancer).
atriz(the_cotton_club, christina_kumi_kimball, dancer).
atriz(the_cotton_club, mary_beth_kurdock, dancer).
ator(the_cotton_club, alde_lewis, dancer).
atriz(the_cotton_club, paula_lynn, dancer).
ator(the_cotton_club, bernard_manners, dancer).
ator(the_cotton_club, bernard_marsh, dancer).
ator(the_cotton_club, david_mcharris, dancer).
atriz(the_cotton_club, delores_mcharris, dancer).
atriz(the_cotton_club, vody_najac, dancer).
atriz(the_cotton_club, vya_negromonte, dancer).
atriz(the_cotton_club, alice_anne_oates, dancer).
atriz(the_cotton_club, anne_palmer, dancer).
atriz(the_cotton_club, julie_pars, dancer).
atriz(the_cotton_club, antonia_pettiford, dancer).
atriz(the_cotton_club, valarie_pettiford, dancer).
atriz(the_cotton_club, janet_powell, dancer).
atriz(the_cotton_club, renee_rodriguez, dancer).
atriz(the_cotton_club, tracey_ross, dancer).
atriz(the_cotton_club, kiki_shepard, dancer).
ator(the_cotton_club, gary_thomas, dancer).
ator(the_cotton_club, mario_van_peebles, dancer).
atriz(the_cotton_club, rima_vetter, dancer).
atriz(the_cotton_club, karen_wadkins, dancer).
ator(the_cotton_club, ivery_wheeler, dancer).
ator(the_cotton_club, donald_williams, dancer).
atriz(the_cotton_club, alexis_wilson, dancer).
ator(the_cotton_club, george_coutoupis, gangster).
ator(the_cotton_club, nicholas_j_giangiulio, screen_test_thug).
atriz(the_cotton_club, suzanne_kaaren, the_duchess_of_park_avenue).
ator(the_cotton_club, mark_margolis, gunman_sooting_cage_s_character).
ator(the_cotton_club, kirk_taylor, cotton_club_waiter).
ator(the_cotton_club, stan_tracy, legs_diamond_s_bodyguard).
ator(the_cotton_club, rick_washburn, hitman).

filme(cq, 2001).
diretor(cq, roman_coppola).
ator(cq, jeremy_davies, paul).
atriz(cq, angela_lindvall, dragonfly_valentine).
atriz(cq, lodie_bouchez, marlene).
ator(cq, g_rard_depardieu, andrezej).
ator(cq, giancarlo_giannini, enzo).
ator(cq, massimo_ghini, fabrizio).
ator(cq, jason_schwartzman, felix_demarco).
ator(cq, billy_zane, mr_e).
ator(cq, john_phillip_law, chairman).
ator(cq, silvio_muccino, pippo).
ator(cq, dean_stockwell, dr_ballard).
atriz(cq, natalia_vodianova, brigit).
ator(cq, bernard_verley, trailer_voiceover_ator).
ator(cq, l_m_kit_carson, fantasy_critic).
ator(cq, chris_bearne, fantasy_critic).
ator(cq, jean_paul_scarpitta, fantasy_critic).
ator(cq, nicolas_saada, fantasy_critic).
ator(cq, remi_fourquin, fantasy_critic).
ator(cq, jean_claude_schlim, fantasy_critic).
atriz(cq, sascha_ley, fantasy_critic).
ator(cq, jacques_deglas, fantasy_critic).
ator(cq, gilles_soeder, fantasy_critic).
ator(cq, julian_nest, festival_critic).
atriz(cq, greta_seacat, festival_critic).
atriz(cq, barbara_sarafian, festival_critic).
ator(cq, leslie_woodhall, board_member).
ator(cq, jean_baptiste_kremer, board_member).
ator(cq, franck_sasonoff, angry_man_at_riots).
ator(cq, jean_fran_ois_wolff, party_man).
ator(cq, eric_connor, long_haired_ator_at_party).
atriz(cq, diana_gartner, cute_model_at_party).
atriz(cq, st_phanie_gesnel, atriz_at_party).
ator(cq, fr_d_ric_de_brabant, steward).
ator(cq, shawn_mortensen, revolutionary_guard).
ator(cq, matthieu_tonetti, revolutionary_guard).
atriz(cq, ann_maes, vampire_atriz).
atriz(cq, gintare_parulyte, vampire_atriz).
atriz(cq, caroline_lies, vampire_atriz).
atriz(cq, stoyanka_tanya_gospodinova, vampire_atriz).
atriz(cq, magali_dahan, vampire_atriz).
atriz(cq, natalie_broker, vampire_atriz).
atriz(cq, wanda_perdelwitz, vampire_atriz).
ator(cq, mark_thompson_ashworth, lead_ghoul).
ator(cq, pieter_riemens, assistant_diretor).
atriz(cq, federica_citarella, talkative_girl).
ator(cq, andrea_cormaci, soldier_boy).
atriz(cq, corinne_terenzi, teen_lover).
atriz(cq, sofia_coppola, enzo_s_mistress).
ator(cq, emidio_la_vella, italian_ator).
ator(cq, massimo_schina, friendly_guy_at_party).
atriz(cq, caroline_colombini, girl_in_miniskirt).
atriz(cq, rosa_pianeta, woman_in_fiat).
ator(cq, christophe_chrompin, jealous_boyfriend).
ator(cq, romain_duris, hippie_filmmaker).
ator(cq, chris_anthony, second_assistant_diretor).
ator(cq, dean_tavoularis, man_at_screening).

filme(crimewave, 1985).
diretor(crimewave, sam_raimi).
atriz(crimewave, louise_lasser, helene_trend).
ator(crimewave, paul_l_smith, faron_crush).
ator(crimewave, brion_james, arthur_coddish).
atriz(crimewave, sheree_j_wilson, nancy).
ator(crimewave, edward_r_pressman, ernest_trend).
ator(crimewave, bruce_campbell, renaldo_the_heel).
ator(crimewave, reed_birney, vic_ajax).
ator(crimewave, richard_bright, officer_brennan).
ator(crimewave, antonio_fargas, blind_man).
ator(crimewave, hamid_dana, donald_odegard).
ator(crimewave, john_hardy, mr_yarman).
ator(crimewave, emil_sitka, colonel_rodgers).
ator(crimewave, hal_youngblood, jack_elroy).
ator(crimewave, sean_farley, jack_elroy_jr).
ator(crimewave, richard_demanincor, officer_garvey).
atriz(crimewave, carrie_hall, cheap_dish).
ator(crimewave, wiley_harker, governor).
ator(crimewave, julius_harris, hardened_convict).
ator(crimewave, ralph_drischell, executioner).
ator(crimewave, robert_symonds, guard_1).
ator(crimewave, patrick_stack, guard_2).
ator(crimewave, philip_a_gillis, priest).
atriz(crimewave, bridget_hoffman, nun).
atriz(crimewave, ann_marie_gillis, nun).
atriz(crimewave, frances_mcdormand, nun).
atriz(crimewave, carol_brinn, old_woman).
ator(crimewave, matthew_taylor, muscleman).
ator(crimewave, perry_mallette, grizzled_veteran).
ator(crimewave, chuck_gaidica, weatherman).
ator(crimewave, jimmie_launce, announcer).
ator(crimewave, joseph_french, bandleader).
ator(crimewave, ted_raimi, waiter).
ator(crimewave, dennis_chaitlin, fat_waiter).
ator(crimewave, joel_coen, reporter_at_execution).
atriz(crimewave, julie_harris, '').
ator(crimewave, dan_nelson, waiter).

filme(down_from_the_mountain, 2000).
diretor(down_from_the_mountain, nick_doob).
diretor(down_from_the_mountain, chris_hegedus).
diretor(down_from_the_mountain, d_a_pennebaker).
atriz(down_from_the_mountain, evelyn_cox, herself).
ator(down_from_the_mountain, sidney_cox, himself).
atriz(down_from_the_mountain, suzanne_cox, herself).
ator(down_from_the_mountain, willard_cox, himself).
ator(down_from_the_mountain, nathan_best, himself).
ator(down_from_the_mountain, issac_freeman, himself).
ator(down_from_the_mountain, robert_hamlett, himself).
ator(down_from_the_mountain, joseph_rice, himself).
ator(down_from_the_mountain, wilson_waters_jr, himself).
ator(down_from_the_mountain, john_hartford, himself).
ator(down_from_the_mountain, larry_perkins, himself).
atriz(down_from_the_mountain, emmylou_harris, herself).
ator(down_from_the_mountain, chris_thomas_king, himself).
atriz(down_from_the_mountain, alison_krauss, herself).
ator(down_from_the_mountain, colin_linden, himself).
ator(down_from_the_mountain, pat_enright, himself).
ator(down_from_the_mountain, gene_libbea, himself).
ator(down_from_the_mountain, alan_o_bryant, himself).
ator(down_from_the_mountain, roland_white, himself).
atriz(down_from_the_mountain, hannah_peasall, herself).
atriz(down_from_the_mountain, leah_peasall, herself).
atriz(down_from_the_mountain, sarah_peasall, herself).
ator(down_from_the_mountain, ralph_stanley, himself).
atriz(down_from_the_mountain, gillian_welch, herself).
ator(down_from_the_mountain, david_rawlings, himself).
ator(down_from_the_mountain, buck_white, himself).
atriz(down_from_the_mountain, cheryl_white, herself).
atriz(down_from_the_mountain, sharon_white, herself).
ator(down_from_the_mountain, barry_bales, house_band_bass).
ator(down_from_the_mountain, ron_block, house_band_banjo).
ator(down_from_the_mountain, mike_compton, house_band_mandolin).
ator(down_from_the_mountain, jerry_douglas, house_band_dobro).
ator(down_from_the_mountain, stuart_duncan, house_band_fiddle).
ator(down_from_the_mountain, chris_sharp, house_band_guitar).
ator(down_from_the_mountain, dan_tyminski, house_band_guitar).
ator(down_from_the_mountain, t_bone_burnett, himself).
ator(down_from_the_mountain, ethan_coen, himself).
ator(down_from_the_mountain, joel_coen, himself).
atriz(down_from_the_mountain, holly_hunter, herself).
ator(down_from_the_mountain, tim_blake_nelson, himself).
ator(down_from_the_mountain, billy_bob_thornton, audience_member).
ator(down_from_the_mountain, wes_motley, audience_member).
atriz(down_from_the_mountain, tamara_trexler, audience_member).

filme(fargo, 1996).
diretor(fargo, ethan_coen).
diretor(fargo, joel_coen).
ator(fargo, william_h_macy, jerry_lundegaard).
ator(fargo, steve_buscemi, carl_showalter).
ator(fargo, peter_stormare, gaear_grimsrud).
atriz(fargo, kristin_rudr_d, jean_lundegaard).
ator(fargo, harve_presnell, wade_gustafson).
ator(fargo, tony_denman, scotty_lundegaard).
ator(fargo, gary_houston, irate_customer).
atriz(fargo, sally_wingert, irate_customer_s_wife).
ator(fargo, kurt_schweickhardt, car_salesman).
atriz(fargo, larissa_kokernot, hooker_1).
atriz(fargo, melissa_peterman, hooker_2).
ator(fargo, steve_reevis, shep_proudfoot).
ator(fargo, warren_keith, reilly_diefenbach).
ator(fargo, steve_edelman, morning_show_host).
atriz(fargo, sharon_anderson, morning_show_hostess).
ator(fargo, larry_brandenburg, stan_grossman).
ator(fargo, james_gaulke, state_trooper).
ator(fargo, j_todd_anderson, victim_in_the_field).
atriz(fargo, michelle_suzanne_ledoux, victim_in_car).
atriz(fargo, frances_mcdormand, marge_gunderson).
ator(fargo, john_carroll_lynch, norm_gunderson).
ator(fargo, bruce_bohne, lou).
atriz(fargo, petra_boden, cashier).
ator(fargo, steve_park, mike_yanagita).
ator(fargo, wayne_a_evenson, customer).
ator(fargo, cliff_rakerd, officer_olson).
atriz(fargo, jessica_shepherd, hotel_clerk).
ator(fargo, peter_schmitz, airport_lot_attendant).
ator(fargo, steven_i_schafer, mechanic).
atriz(fargo, michelle_hutchison, escort).
ator(fargo, david_s_lomax, man_in_hallway).
ator(fargo, jos_feliciano, himself).
ator(fargo, bix_skahill, night_parking_attendant).
ator(fargo, bain_boehlke, mr_mohra).
atriz(fargo, rose_stockton, valerie).
ator(fargo, robert_ozasky, bismarck_cop_1).
ator(fargo, john_bandemer, bismarck_cop_2).
ator(fargo, don_wescott, bark_beetle_narrator).
ator(fargo, bruce_campbell, soap_opera_ator).
ator(fargo, clifford_nelson, heavyset_man_in_bar).

filme(the_firm, 1993).
diretor(the_firm, sydney_pollack).
ator(the_firm, tom_cruise, mitch_mcdeere).
atriz(the_firm, jeanne_tripplehorn, abby_mcdeere).
ator(the_firm, gene_hackman, avery_tolar).
ator(the_firm, hal_holbrook, oliver_lambert).
ator(the_firm, terry_kinney, lamar_quinn).
ator(the_firm, wilford_brimley, william_devasher).
ator(the_firm, ed_harris, wayne_tarrance).
atriz(the_firm, holly_hunter, tammy_hemphill).
ator(the_firm, david_strathairn, ray_mcdeere).
ator(the_firm, gary_busey, eddie_lomax).
ator(the_firm, steven_hill, f_denton_voyles).
ator(the_firm, tobin_bell, the_nordic_man).
atriz(the_firm, barbara_garrick, kay_quinn).
ator(the_firm, jerry_hardin, royce_mcknight).
ator(the_firm, paul_calderon, thomas_richie).
ator(the_firm, jerry_weintraub, sonny_capps).
ator(the_firm, sullivan_walker, barry_abanks).
atriz(the_firm, karina_lombard, young_woman_on_beach).
atriz(the_firm, margo_martindale, nina_huff).
ator(the_firm, john_beal, nathan_locke).
ator(the_firm, dean_norris, the_squat_man).
ator(the_firm, lou_walker, frank_mulholland).
atriz(the_firm, debbie_turner, rental_agent).
ator(the_firm, tommy_cresswell, wally_hudson).
ator(the_firm, david_a_kimball, randall_dunbar).
ator(the_firm, don_jones, attorney).
ator(the_firm, michael_allen, attorney).
ator(the_firm, levi_frazier_jr, restaurant_waiter).
ator(the_firm, brian_casey, telephone_installer).
ator(the_firm, reverend_william_j_parham, minister).
ator(the_firm, victor_nelson, cafe_waiter).
ator(the_firm, richard_ranta, congressman_billings).
atriz(the_firm, janie_paris, madge).
ator(the_firm, frank_crawford, judge).
ator(the_firm, bart_whiteman, dutch).
ator(the_firm, david_dwyer, prison_guard).
ator(the_firm, mark_w_johnson, fbi_agent).
ator(the_firm, jerry_chipman, fbi_agent).
ator(the_firm, jimmy_lackie, technician).
ator(the_firm, afemo_omilami, cotton_truck_driver).
ator(the_firm, clint_smith, cotton_truck_driver).
atriz(the_firm, susan_elliott, river_museum_guide).
atriz(the_firm, erin_branham, river_museum_guide).
ator(the_firm, ed_connelly, pilot).
atriz(the_firm, joey_anderson, ruth).
atriz(the_firm, deborah_thomas, quinns_maid).
ator(the_firm, tommy_matthews, elvis_aaron_hemphill).
ator(the_firm, chris_schadrack, lawyer_recruiter).
ator(the_firm, buck_ford, lawyer_recruiter).
ator(the_firm, jonathan_kaplan, lawyer_recruiter).
atriz(the_firm, rebecca_glenn, young_woman_at_patio_bar).
atriz(the_firm, terri_welles, woman_dancing_with_avery).
ator(the_firm, greg_goossen, vietnam_veteran).
atriz(the_firm, jeane_aufdenberg, car_rental_agent).
ator(the_firm, william_r_booth, seaplane_pilot).
ator(the_firm, ollie_nightingale, restaurant_singer).
ator(the_firm, teenie_hodges, restaurant_lead_guitarist).
ator(the_firm, little_jimmy_king, memphis_street_musician).
ator(the_firm, james_white, singer_at_hyatt).
ator(the_firm, shan_brisendine, furniture_mover).
ator(the_firm, harry_dach, garbage_truck_driver).
atriz(the_firm, julia_hayes, girl_in_bar).
ator(the_firm, tom_mccrory, associate).
ator(the_firm, paul_sorvino, tommie_morolto).
ator(the_firm, joe_viterelli, joey_morolto).

filme(frankenweenie, 1984).
diretor(frankenweenie, tim_burton).
atriz(frankenweenie, shelley_duvall, susan_frankenstein).
ator(frankenweenie, daniel_stern, ben_frankenstein).
ator(frankenweenie, barret_oliver, victor_frankenstein).
ator(frankenweenie, joseph_maher, mr_chambers).
atriz(frankenweenie, roz_braverman, mrs_epstein).
ator(frankenweenie, paul_bartel, mr_walsh).
atriz(frankenweenie, sofia_coppola, anne_chambers).
ator(frankenweenie, jason_hervey, frank_dale).
ator(frankenweenie, paul_c_scott, mike_anderson).
atriz(frankenweenie, helen_boll, mrs_curtis).
ator(frankenweenie, sparky, sparky).
ator(frankenweenie, rusty_james, raymond).

filme(ghost_busters, 1984).
diretor(ghost_busters, ivan_reitman).
ator(ghost_busters, bill_murray, dr_peter_venkman).
ator(ghost_busters, dan_aykroyd, dr_raymond_stantz).
atriz(ghost_busters, sigourney_weaver, dana_barrett).
ator(ghost_busters, harold_ramis, dr_egon_spengler).
ator(ghost_busters, rick_moranis, louis_tully).
atriz(ghost_busters, annie_potts, janine_melnitz).
ator(ghost_busters, william_atherton, walter_peck_wally_wick).
ator(ghost_busters, ernie_hudson, winston_zeddmore).
ator(ghost_busters, david_margulies, mayor).
ator(ghost_busters, steven_tash, male_student).
atriz(ghost_busters, jennifer_runyon, female_student).
atriz(ghost_busters, slavitza_jovan, gozer).
ator(ghost_busters, michael_ensign, hotel_manager).
atriz(ghost_busters, alice_drummond, librarian).
ator(ghost_busters, jordan_charney, dean_yeager).
ator(ghost_busters, timothy_carhart, violinist).
ator(ghost_busters, john_rothman, library_administrator).
ator(ghost_busters, tom_mcdermott, archbishop).
ator(ghost_busters, roger_grimsby, himself).
ator(ghost_busters, larry_king, himself).
ator(ghost_busters, joe_franklin, himself).
ator(ghost_busters, casey_kasem, himself).
ator(ghost_busters, john_ring, fire_commissioner).
ator(ghost_busters, norman_matlock, police_commissioner).
ator(ghost_busters, joe_cirillo, police_captain).
ator(ghost_busters, joe_schmieg, police_seargeant).
ator(ghost_busters, reginald_veljohnson, jail_guard).
atriz(ghost_busters, rhoda_gemignani, real_estate_woman).
ator(ghost_busters, murray_rubin, man_at_elevator).
ator(ghost_busters, larry_dilg, con_edison_man).
ator(ghost_busters, danny_stone, coachman).
atriz(ghost_busters, patty_dworkin, woman_at_party).
atriz(ghost_busters, jean_kasem, tall_woman_at_party).
ator(ghost_busters, lenny_del_genio, doorman).
atriz(ghost_busters, frances_e_nealy, chambermaid).
ator(ghost_busters, sam_moses, hot_dog_vendor).
ator(ghost_busters, christopher_wynkoop, tv_reporter).
ator(ghost_busters, winston_may, businessman_in_cab).
ator(ghost_busters, tommy_hollis, mayor_s_aide).
atriz(ghost_busters, eda_reiss_merin, louis_s_neighbor).
ator(ghost_busters, ric_mancini, policeman_at_apartment).
atriz(ghost_busters, kathryn_janssen, mrs_van_hoffman).
ator(ghost_busters, stanley_grover, reporter).
atriz(ghost_busters, carol_ann_henry, reporter).
ator(ghost_busters, james_hardie, reporter).
atriz(ghost_busters, frances_turner, reporter).
atriz(ghost_busters, nancy_kelly, reporter).
ator(ghost_busters, paul_trafas, ted_fleming).
atriz(ghost_busters, cheryl_birchenfield, annette_fleming).
atriz(ghost_busters, ruth_oliver, library_ghost).
atriz(ghost_busters, kymberly_herrin, dream_ghost).
ator(ghost_busters, larry_bilzarian, prisoner).
ator(ghost_busters, matteo_cafiso, boy_at_hot_dog_stand).
atriz(ghost_busters, paddi_edwards, gozer).
atriz(ghost_busters, deborah_gibson, birthday_girl_in_tavern_on_the_green).
ator(ghost_busters, charles_levin, honeymooner).
ator(ghost_busters, joseph_marzano, man_in_taxi).
ator(ghost_busters, joe_medjuck, man_at_library).
ator(ghost_busters, frank_patton, city_hall_cop).
ator(ghost_busters, harrison_ray, terror_dog).
ator(ghost_busters, ivan_reitman, zuul_slimer).
ator(ghost_busters, mario_todisco, prisoner).
ator(ghost_busters, bill_walton, himself).

filme(girl_with_a_pearl_earring, 2003).
diretor(girl_with_a_pearl_earring, peter_webber).
ator(girl_with_a_pearl_earring, colin_firth, johannes_vermeer).
atriz(girl_with_a_pearl_earring, scarlett_johansson, griet).
ator(girl_with_a_pearl_earring, tom_wilkinson, van_ruijven).
atriz(girl_with_a_pearl_earring, judy_parfitt, maria_thins).
ator(girl_with_a_pearl_earring, cillian_murphy, pieter).
atriz(girl_with_a_pearl_earring, essie_davis, catharina_vermeer).
atriz(girl_with_a_pearl_earring, joanna_scanlan, tanneke).
atriz(girl_with_a_pearl_earring, alakina_mann, cornelia_vermeer).
ator(girl_with_a_pearl_earring, chris_mchallem, griet_s_father).
atriz(girl_with_a_pearl_earring, gabrielle_reidy, griet_s_mother).
ator(girl_with_a_pearl_earring, rollo_weeks, frans).
atriz(girl_with_a_pearl_earring, anna_popplewell, maertge).
atriz(girl_with_a_pearl_earring, ana_s_nepper, lisbeth).
atriz(girl_with_a_pearl_earring, melanie_meyfroid, aleydis).
ator(girl_with_a_pearl_earring, nathan_nepper, johannes).
atriz(girl_with_a_pearl_earring, lola_carpenter, baby_franciscus).
atriz(girl_with_a_pearl_earring, charlotte_carpenter, baby_franciscus).
atriz(girl_with_a_pearl_earring, olivia_chauveau, baby_franciscus).
ator(girl_with_a_pearl_earring, geoff_bell, paul_the_butcher).
atriz(girl_with_a_pearl_earring, virginie_colin, emilie_van_ruijven).
atriz(girl_with_a_pearl_earring, sarah_drews, van_ruijven_s_daughter).
atriz(girl_with_a_pearl_earring, christelle_bulckaen, wet_nurse).
ator(girl_with_a_pearl_earring, john_mcenery, apothecary).
atriz(girl_with_a_pearl_earring, gintare_parulyte, model).
atriz(girl_with_a_pearl_earring, claire_johnston, white_haired_woman).
ator(girl_with_a_pearl_earring, marc_maes, old_gentleman).
ator(girl_with_a_pearl_earring, robert_sibenaler, priest).
ator(girl_with_a_pearl_earring, dustin_james, servant_1).
ator(girl_with_a_pearl_earring, joe_reavis, servant_2).
ator(girl_with_a_pearl_earring, martin_serene, sergeant).
ator(girl_with_a_pearl_earring, chris_kelly, gay_blade).
ator(girl_with_a_pearl_earring, leslie_woodhall, neighbour).

filme(the_godfather, 1972).
diretor(the_godfather, francis_ford_coppola).
ator(the_godfather, marlon_brando, don_vito_corleone).
ator(the_godfather, al_pacino, michael_corleone).
ator(the_godfather, james_caan, santino_sonny_corleone).
ator(the_godfather, richard_s_castellano, pete_clemenza).
ator(the_godfather, robert_duvall, tom_hagen).
ator(the_godfather, sterling_hayden, capt_mark_mccluskey).
ator(the_godfather, john_marley, jack_woltz).
ator(the_godfather, richard_conte, emilio_barzini).
ator(the_godfather, al_lettieri, virgil_sollozzo).
atriz(the_godfather, diane_keaton, kay_adams).
ator(the_godfather, abe_vigoda, salvadore_sally_tessio).
atriz(the_godfather, talia_shire, connie).
ator(the_godfather, gianni_russo, carlo_rizzi).
ator(the_godfather, john_cazale, fredo).
ator(the_godfather, rudy_bond, ottilio_cuneo).
ator(the_godfather, al_martino, johnny_fontane).
atriz(the_godfather, morgana_king, mama_corleone).
ator(the_godfather, lenny_montana, luca_brasi).
ator(the_godfather, john_martino, paulie_gatto).
ator(the_godfather, salvatore_corsitto, amerigo_bonasera).
ator(the_godfather, richard_bright, al_neri).
ator(the_godfather, alex_rocco, moe_greene).
ator(the_godfather, tony_giorgio, bruno_tattaglia).
ator(the_godfather, vito_scotti, nazorine).
atriz(the_godfather, tere_livrano, theresa_hagen).
ator(the_godfather, victor_rendina, philip_tattaglia).
atriz(the_godfather, jeannie_linero, lucy_mancini).
atriz(the_godfather, julie_gregg, sandra_corleone).
atriz(the_godfather, ardell_sheridan, mrs_clemenza).
atriz(the_godfather, simonetta_stefanelli, apollonia_vitelli_corleone).
ator(the_godfather, angelo_infanti, fabrizio).
ator(the_godfather, corrado_gaipa, don_tommasino).
ator(the_godfather, franco_citti, calo).
ator(the_godfather, saro_urz, vitelli).
ator(the_godfather, carmine_coppola, piano_player_in_montage_scene).
ator(the_godfather, gian_carlo_coppola, baptism_observer).
atriz(the_godfather, sofia_coppola, michael_francis_rizzi).
ator(the_godfather, ron_gilbert, usher_in_bridal_party).
ator(the_godfather, anthony_gounaris, anthony_vito_corleone).
ator(the_godfather, joe_lo_grippo, sonny_s_bodyguard).
ator(the_godfather, sonny_grosso, cop_with_capt_mccluskey_outside_hospital).
ator(the_godfather, louis_guss, don_zaluchi_outspoken_don_at_the_peace_conference).
ator(the_godfather, randy_jurgensen, sonny_s_killer_1).
ator(the_godfather, tony_lip, wedding_guest).
ator(the_godfather, frank_macetta, '').
ator(the_godfather, lou_martini_jr, boy_at_wedding).
ator(the_godfather, father_joseph_medeglia, priest_at_baptism).
ator(the_godfather, rick_petrucelli, man_in_passenger_seat_when_michael_is_driven_to_the_hospital).
ator(the_godfather, burt_richards, floral_designer).
ator(the_godfather, sal_richards, drunk).
ator(the_godfather, tom_rosqui, rocco_lampone).
ator(the_godfather, frank_sivero, extra).
atriz(the_godfather, filomena_spagnuolo, extra_at_wedding_scene).
ator(the_godfather, joe_spinell, willie_cicci).
ator(the_godfather, gabriele_torrei, enzo_robutti_the_baker).
ator(the_godfather, nick_vallelonga, wedding_party_guest).
ator(the_godfather, ed_vantura, wedding_guest).
ator(the_godfather, matthew_vlahakis, clemenza_s_son_pushing_toy_car_in_driveway).

filme(the_godfather_part_ii, 1974).
diretor(the_godfather_part_ii, francis_ford_coppola).
ator(the_godfather_part_ii, al_pacino, don_michael_corleone).
ator(the_godfather_part_ii, robert_duvall, tom_hagen).
atriz(the_godfather_part_ii, diane_keaton, kay_corleone).
ator(the_godfather_part_ii, robert_de_niro, vito_corleone).
ator(the_godfather_part_ii, john_cazale, fredo_corleone).
atriz(the_godfather_part_ii, talia_shire, connie_corleone).
ator(the_godfather_part_ii, lee_strasberg, hyman_roth).
ator(the_godfather_part_ii, michael_v_gazzo, frankie_pentangeli).
ator(the_godfather_part_ii, g_d_spradlin, sen_pat_geary).
ator(the_godfather_part_ii, richard_bright, al_neri).
ator(the_godfather_part_ii, gastone_moschin, don_fanucci).
ator(the_godfather_part_ii, tom_rosqui, rocco_lampone).
ator(the_godfather_part_ii, bruno_kirby, young_clemenza_peter).
ator(the_godfather_part_ii, frank_sivero, genco_abbandando).
atriz(the_godfather_part_ii, francesca_de_sapio, young_mama_corleone).
atriz(the_godfather_part_ii, morgana_king, older_carmella_mama_corleone).
atriz(the_godfather_part_ii, marianna_hill, deanna_dunn_corleone).
ator(the_godfather_part_ii, leopoldo_trieste, signor_roberto_landlord).
ator(the_godfather_part_ii, dominic_chianese, johnny_ola).
ator(the_godfather_part_ii, amerigo_tot, busetta_michael_s_bodyguard).
ator(the_godfather_part_ii, troy_donahue, merle_johnson).
ator(the_godfather_part_ii, john_aprea, young_sal_tessio).
ator(the_godfather_part_ii, joe_spinell, willie_cicci).
ator(the_godfather_part_ii, james_caan, sonny_corleone_special_participation).
ator(the_godfather_part_ii, abe_vigoda, sal_tessio).
atriz(the_godfather_part_ii, tere_livrano, theresa_hagen).
ator(the_godfather_part_ii, gianni_russo, carlo_rizzi).
atriz(the_godfather_part_ii, maria_carta, signora_andolini_vito_s_mother).
ator(the_godfather_part_ii, oreste_baldini, young_vito_andolini).
ator(the_godfather_part_ii, giuseppe_sillato, don_francesco_ciccio).
ator(the_godfather_part_ii, mario_cotone, don_tommasino).
ator(the_godfather_part_ii, james_gounaris, anthony_vito_corleone).
atriz(the_godfather_part_ii, fay_spain, mrs_marcia_roth).
ator(the_godfather_part_ii, harry_dean_stanton, fbi_man_1).
ator(the_godfather_part_ii, david_baker, fbi_man_2).
ator(the_godfather_part_ii, carmine_caridi, carmine_rosato).
ator(the_godfather_part_ii, danny_aiello, tony_rosato).
ator(the_godfather_part_ii, carmine_foresta, policeman).
ator(the_godfather_part_ii, nick_discenza, bartender).
ator(the_godfather_part_ii, father_joseph_medeglia, father_carmelo).
ator(the_godfather_part_ii, william_bowers, senate_committee_chairman).
ator(the_godfather_part_ii, joseph_della_sorte, michael_s_buttonman_1).
ator(the_godfather_part_ii, carmen_argenziano, michael_s_buttonman_2).
ator(the_godfather_part_ii, joe_lo_grippo, michael_s_buttonman_3).
ator(the_godfather_part_ii, ezio_flagello, impresario).
ator(the_godfather_part_ii, livio_giorgi, tenor_in_senza_mamma).
atriz(the_godfather_part_ii, kathleen_beller, girl_in_senza_mamma).
atriz(the_godfather_part_ii, saveria_mazzola, signora_colombo).
ator(the_godfather_part_ii, tito_alba, cuban_pres_fulgencio_batista).
ator(the_godfather_part_ii, johnny_naranjo, cuban_translator).
atriz(the_godfather_part_ii, elda_maida, pentangeli_s_wife).
ator(the_godfather_part_ii, salvatore_po, vincenzo_pentangeli).
ator(the_godfather_part_ii, ignazio_pappalardo, mosca_assassin_in_sicily).
ator(the_godfather_part_ii, andrea_maugeri, strollo).
ator(the_godfather_part_ii, peter_lacorte, signor_abbandando).
ator(the_godfather_part_ii, vincent_coppola, street_vendor).
ator(the_godfather_part_ii, peter_donat, questadt).
ator(the_godfather_part_ii, tom_dahlgren, fred_corngold).
ator(the_godfather_part_ii, paul_b_brown, sen_ream).
ator(the_godfather_part_ii, phil_feldman, senator_1).
ator(the_godfather_part_ii, roger_corman, senator_2).
atriz(the_godfather_part_ii, ivonne_coll, yolanda).
ator(the_godfather_part_ii, joe_de_nicola, attendant_at_brothel).
ator(the_godfather_part_ii, edward_van_sickle, ellis_island_doctor).
atriz(the_godfather_part_ii, gabriella_belloni, ellis_island_nurse).
ator(the_godfather_part_ii, richard_watson, customs_official).
atriz(the_godfather_part_ii, venancia_grangerard, cuban_nurse).
atriz(the_godfather_part_ii, erica_yohn, governess).
atriz(the_godfather_part_ii, theresa_tirelli, midwife).
ator(the_godfather_part_ii, roman_coppola, sonny_corleone_as_a_boy).
atriz(the_godfather_part_ii, sofia_coppola, child_on_steamship_in_ny_harbor).
ator(the_godfather_part_ii, larry_guardino, vito_s_uncle).
ator(the_godfather_part_ii, gary_kurtz, photographer_in_court).
atriz(the_godfather_part_ii, laura_lyons, '').
atriz(the_godfather_part_ii, connie_mason, extra).
ator(the_godfather_part_ii, john_megna, young_hyman_roth).
ator(the_godfather_part_ii, frank_pesce, extra).
atriz(the_godfather_part_ii, filomena_spagnuolo, extra_in_little_italy).

filme(the_godfather_part_iii, 1990).
diretor(the_godfather_part_iii, francis_ford_coppola).
ator(the_godfather_part_iii, al_pacino, don_michael_corleone).
atriz(the_godfather_part_iii, diane_keaton, kay_adams_mitchelson).
atriz(the_godfather_part_iii, talia_shire, connie_corleone_rizzi).
ator(the_godfather_part_iii, andy_garcia, don_vincent_vinnie_mancini_corleone).
ator(the_godfather_part_iii, eli_wallach, don_altobello).
ator(the_godfather_part_iii, joe_mantegna, joey_zasa).
ator(the_godfather_part_iii, george_hamilton, b_j_harrison).
atriz(the_godfather_part_iii, bridget_fonda, grace_hamilton).
atriz(the_godfather_part_iii, sofia_coppola, mary_corleone).
ator(the_godfather_part_iii, raf_vallone, cardinal_lamberto).
ator(the_godfather_part_iii, franc_d_ambrosio, anthony_vito_corleone_turiddu_sequence_cavalleria_rusticana).
ator(the_godfather_part_iii, donal_donnelly, archbishop_gilday).
ator(the_godfather_part_iii, richard_bright, al_neri).
ator(the_godfather_part_iii, helmut_berger, frederick_keinszig).
ator(the_godfather_part_iii, don_novello, dominic_abbandando).
ator(the_godfather_part_iii, john_savage, father_andrew_hagen).
ator(the_godfather_part_iii, franco_citti, calo).
ator(the_godfather_part_iii, mario_donatone, mosca).
ator(the_godfather_part_iii, vittorio_duse, don_tommasino).
ator(the_godfather_part_iii, enzo_robutti, don_licio_lucchesi).
ator(the_godfather_part_iii, michele_russo, spara).
ator(the_godfather_part_iii, al_martino, johnny_fontane).
ator(the_godfather_part_iii, robert_cicchini, lou_penning).
ator(the_godfather_part_iii, rogerio_miranda, twin_bodyguard_armand).
ator(the_godfather_part_iii, carlos_miranda, twin_bodyguard_francesco).
ator(the_godfather_part_iii, vito_antuofermo, anthony_the_ant_squigliaro_joey_zaza_s_bulldog).
ator(the_godfather_part_iii, robert_vento, father_john).
ator(the_godfather_part_iii, willie_brown, party_politician).
atriz(the_godfather_part_iii, jeannie_linero, lucy_mancini).
ator(the_godfather_part_iii, remo_remotti, camerlengo_cardinal_cardinal__sistine).
atriz(the_godfather_part_iii, jeanne_savarino_pesch, francesca_corleone).
atriz(the_godfather_part_iii, janet_savarino_smith, kathryn_corleone).
atriz(the_godfather_part_iii, tere_livrano, teresa_hagen).
ator(the_godfather_part_iii, carmine_caridi, albert_volpe).
ator(the_godfather_part_iii, don_costello, frank_romano).
ator(the_godfather_part_iii, al_ruscio, leo_cuneo).
ator(the_godfather_part_iii, mickey_knox, marty_parisi).
ator(the_godfather_part_iii, rick_aviles, mask_1).
ator(the_godfather_part_iii, michael_bowen, mask_2).
ator(the_godfather_part_iii, brett_halsey, douglas_michelson).
ator(the_godfather_part_iii, gabriele_torrei, enzo_the_baker).
ator(the_godfather_part_iii, john_abineri, hamilton_banker).
ator(the_godfather_part_iii, brian_freilino, stockholder).
ator(the_godfather_part_iii, gregory_corso, unruly_stockholder).
ator(the_godfather_part_iii, marino_mas, lupo).
ator(the_godfather_part_iii, dado_ruspoli, vanni).
atriz(the_godfather_part_iii, valeria_sabel, sister_vincenza).
ator(the_godfather_part_iii, luigi_laezza, keinszig_killer).
ator(the_godfather_part_iii, beppe_pianviti, keinszig_killer).
ator(the_godfather_part_iii, santo_indelicato, guardia_del_corpo).
ator(the_godfather_part_iii, francesco_paolo_bellante, autista_di_don_tommasino).
ator(the_godfather_part_iii, paco_reconti, gesu).
ator(the_godfather_part_iii, mimmo_cuticchio, puppet_narrator).
ator(the_godfather_part_iii, richard_honigman, party_reporter).
ator(the_godfather_part_iii, nicky_blair, nicky_the_casino_host).
ator(the_godfather_part_iii, anthony_guidera, anthony_the_bodyguard).
ator(the_godfather_part_iii, frank_tarsia, frankie_the_bodyguard).
atriz(the_godfather_part_iii, diane_agostini, woman_with_child_at_street_fair).
atriz(the_godfather_part_iii, jessica_di_cicco, child).
atriz(the_godfather_part_iii, catherine_scorsese, woman_in_cafe).
atriz(the_godfather_part_iii, ida_bernardini, woman_in_cafe).
ator(the_godfather_part_iii, joe_drago, party_security).
ator(the_godfather_part_iii, david_hume_kennerly, party_photographer).
ator(the_godfather_part_iii, james_d_damiano, son_playing_soccer).
ator(the_godfather_part_iii, michael_boccio, father_of_soccer_player).
ator(the_godfather_part_iii, anton_coppola, conductor_sequence_cavalleria_rusticana).
atriz(the_godfather_part_iii, elena_lo_forte, santuzza_played_by_sequence_cavalleria_rusticana).
atriz(the_godfather_part_iii, madelyn_ren_e_monti, santuzza_sung_by_lola_sequence_cavalleria_rusticana).
atriz(the_godfather_part_iii, corinna_vozza, lucia_sequence_cavalleria_rusticana).
ator(the_godfather_part_iii, angelo_romero, alfio_played_by_sequence_cavalleria_rusticana).
ator(the_godfather_part_iii, paolo_gavanelli, alfio_sung_by_sequence_cavalleria_rusticana).
ator(the_godfather_part_iii, salvatore_billa, hired_assassin).
ator(the_godfather_part_iii, sal_borgese, lucchesi_s_door_guard).
ator(the_godfather_part_iii, james_caan, sonny_corleone).
ator(the_godfather_part_iii, richard_s_castellano, peter_clemenza).
ator(the_godfather_part_iii, john_cazale, fredo_corleone).
ator(the_godfather_part_iii, tony_devon, mob_family_lawyer_at_the_church).
ator(the_godfather_part_iii, andrea_girolami, extra).
atriz(the_godfather_part_iii, simonetta_stefanelli, apollonia_vitelli_corleone).
ator(the_godfather_part_iii, lee_strasberg, hyman_roth_stukowski).
ator(the_godfather_part_iii, f_x_vitolo, pasquale).

filme(groundhog_day, 1993).
diretor(groundhog_day, harold_ramis).
ator(groundhog_day, bill_murray, phil_connors).
atriz(groundhog_day, andie_macdowell, rita).
ator(groundhog_day, chris_elliott, larry).
ator(groundhog_day, stephen_tobolowsky, ned_ryerson).
ator(groundhog_day, brian_doyle_murray, buster_green).
atriz(groundhog_day, marita_geraghty, nancy_taylor).
atriz(groundhog_day, angela_paton, mrs_lancaster).
ator(groundhog_day, rick_ducommun, gus).
ator(groundhog_day, rick_overton, ralph).
atriz(groundhog_day, robin_duke, doris_the_waitress).
atriz(groundhog_day, carol_bivins, anchorwoman).
ator(groundhog_day, willie_garson, kenny).
ator(groundhog_day, ken_hudson_campbell, man_in_hallway).
ator(groundhog_day, les_podewell, old_man).
ator(groundhog_day, rod_sell, groundhog_official).
ator(groundhog_day, tom_milanovich, state_trooper).
ator(groundhog_day, john_m_watson_sr, bartender).
atriz(groundhog_day, peggy_roeder, piano_teacher).
ator(groundhog_day, harold_ramis, neurologist).
ator(groundhog_day, david_pasquesi, psychiatrist).
ator(groundhog_day, lee_r_sellars, cop).
ator(groundhog_day, chet_dubowski, felix_bank_guard).
ator(groundhog_day, doc_erickson, herman_bank_guard).
atriz(groundhog_day, sandy_maschmeyer, phil_s_filme_date).
atriz(groundhog_day, leighanne_o_neil, fan_on_street).
atriz(groundhog_day, evangeline_binkley, jeopardy__viewer).
ator(groundhog_day, samuel_mages, jeopardy__viewer).
ator(groundhog_day, ben_zwick, jeopardy__viewer).
atriz(groundhog_day, hynden_walch, debbie_kleiser).
ator(groundhog_day, michael_shannon, fred_kleiser).
ator(groundhog_day, timothy_hendrickson, bill_waiter).
atriz(groundhog_day, martha_webster, alice_waitress).
atriz(groundhog_day, angela_gollan, piano_student).
ator(groundhog_day, shaun_chaiyabhat, boy_in_tree).
atriz(groundhog_day, dianne_b_shaw, e_r_nurse).
atriz(groundhog_day, barbara_ann_grimes, flat_tire_lady).
atriz(groundhog_day, ann_heekin, flat_tire_lady).
atriz(groundhog_day, lucina_paquet, flat_tire_lady).
atriz(groundhog_day, brenda_pickleman, buster_s_wife).
atriz(groundhog_day, amy_murdoch, buster_s_daughter).
ator(groundhog_day, eric_saiet, buster_s_son).
atriz(groundhog_day, lindsay_albert, woman_with_cigarette).
ator(groundhog_day, roger_adler, guitarist).
ator(groundhog_day, ben_a_fish, bassist).
ator(groundhog_day, don_riozz_mcnichols, drummer).
ator(groundhog_day, brian_willig, saxophonist).
ator(groundhog_day, richard_henzel, dj).
ator(groundhog_day, rob_riley, dj).
ator(groundhog_day, scooter, the_groundhog).
ator(groundhog_day, douglas_blakeslee, man_with_snow_shovel).
atriz(groundhog_day, leslie_frates, herself__jeopardy__contestant).
ator(groundhog_day, mason_gamble, '').
ator(groundhog_day, simon_harvey, news_reporter).
ator(groundhog_day, grady_hutt, '').
atriz(groundhog_day, regina_prokop, polka_dancer).
ator(groundhog_day, daniel_riggs, bachelor).
ator(groundhog_day, paul_terrien, groundhog_official).

filme(hail_caesar, 2006).
diretor(hail_caesar, ethan_coen).
diretor(hail_caesar, joel_coen).

filme(hearts_of_darkness_a_filmmaker_s_apocalypse, 1991).
diretor(hearts_of_darkness_a_filmmaker_s_apocalypse, fax_bahr).
diretor(hearts_of_darkness_a_filmmaker_s_apocalypse, eleanor_coppola).
diretor(hearts_of_darkness_a_filmmaker_s_apocalypse, george_hickenlooper).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, john_milius, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, sam_bottoms, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, marlon_brando, himself).
atriz(hearts_of_darkness_a_filmmaker_s_apocalypse, colleen_camp, herself).
atriz(hearts_of_darkness_a_filmmaker_s_apocalypse, eleanor_coppola, herself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, francis_ford_coppola, himself).
atriz(hearts_of_darkness_a_filmmaker_s_apocalypse, gia_coppola, herself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, roman_coppola, himself).
atriz(hearts_of_darkness_a_filmmaker_s_apocalypse, sofia_coppola, herself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, robert_de_niro, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, robert_duvall, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, laurence_fishburne, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, harrison_ford, '').
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, frederic_forrest, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, albert_hall, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, dennis_hopper, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, george_lucas, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, martin_sheen, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, g_d_spradlin, himself).
ator(hearts_of_darkness_a_filmmaker_s_apocalypse, orson_welles, himself_from_1938_radio_broadcast).

filme(the_hudsucker_proxy, 1994).
diretor(the_hudsucker_proxy, ethan_coen).
diretor(the_hudsucker_proxy, joel_coen).
ator(the_hudsucker_proxy, tim_robbins, norville_barnes).
atriz(the_hudsucker_proxy, jennifer_jason_leigh, amy_archer).
ator(the_hudsucker_proxy, paul_newman, sidney_j_mussburger).
ator(the_hudsucker_proxy, charles_durning, waring_hudsucker).
ator(the_hudsucker_proxy, john_mahoney, chief_editor_manhattan_argus).
ator(the_hudsucker_proxy, jim_true_frost, buzz_the_elevator_operator).
ator(the_hudsucker_proxy, bill_cobbs, moses_the_clock_man).
ator(the_hudsucker_proxy, bruce_campbell, smitty_argus_reporter).
ator(the_hudsucker_proxy, harry_bugin, aloysius_mussburger_s_spy).
ator(the_hudsucker_proxy, john_seitz, bennie_the_cabbie).
ator(the_hudsucker_proxy, joe_grifasi, lou_the_cabbie).
ator(the_hudsucker_proxy, roy_brocksmith, board_member).
ator(the_hudsucker_proxy, john_wylie, board_member).
ator(the_hudsucker_proxy, i_m_hobson, board_member).
ator(the_hudsucker_proxy, gary_allen, board_member).
ator(the_hudsucker_proxy, john_scanlan, board_member).
ator(the_hudsucker_proxy, richard_woods, board_member).
ator(the_hudsucker_proxy, jerome_dempsey, board_member).
ator(the_hudsucker_proxy, peter_mcpherson, board_member).
ator(the_hudsucker_proxy, david_byrd, dr_hugo_bronfenbrenner).
ator(the_hudsucker_proxy, christopher_darga, mail_room_orienter).
ator(the_hudsucker_proxy, patrick_cranshaw, ancient_sorter).
ator(the_hudsucker_proxy, robert_weil, mail_room_boss).
atriz(the_hudsucker_proxy, mary_lou_rosato, mussburger_s_secretary).
ator(the_hudsucker_proxy, ernest_sarracino, luigi_the_tailor).
atriz(the_hudsucker_proxy, eleanor_glockner, mrs_mussburger).
atriz(the_hudsucker_proxy, kathleen_perkins, mrs_braithwaite).
ator(the_hudsucker_proxy, joseph_marcus, sears_braithwaite_of_bullard).
ator(the_hudsucker_proxy, peter_gallagher, vic_tenetta_party_singer).
ator(the_hudsucker_proxy, noble_willingham, zebulon_cardoza).
atriz(the_hudsucker_proxy, barbara_ann_grimes, mrs_cardoza).
ator(the_hudsucker_proxy, thom_noble, thorstenson_finlandson_finnish_stockholder).
ator(the_hudsucker_proxy, steve_buscemi, beatnik_barman_at_ann_s_440).
ator(the_hudsucker_proxy, william_duff_griffin, newsreel_scientist).
atriz(the_hudsucker_proxy, anna_nicole_smith, za_za).
atriz(the_hudsucker_proxy, pamela_everett, dream_dancer).
ator(the_hudsucker_proxy, arthur_bridgers, the_hula_hoop_kid).
ator(the_hudsucker_proxy, sam_raimi, hudsucker_brainstormer).
ator(the_hudsucker_proxy, john_cameron, hudsucker_brainstormer).
ator(the_hudsucker_proxy, skipper_duke, mr_grier).
ator(the_hudsucker_proxy, jay_kapner, mr_levin).
ator(the_hudsucker_proxy, jon_polito, mr_bumstead).
ator(the_hudsucker_proxy, richard_whiting, ancient_puzzler).
atriz(the_hudsucker_proxy, linda_mccoy, coffee_shop_waitress).
ator(the_hudsucker_proxy, stan_adams, emcee).
ator(the_hudsucker_proxy, john_goodman, rockwell_newsreel_anouncer).
atriz(the_hudsucker_proxy, joanne_pankow, newsreel_secretary).
ator(the_hudsucker_proxy, mario_todisco, norville_s_goon).
ator(the_hudsucker_proxy, colin_fickes, newsboy).
ator(the_hudsucker_proxy, dick_sasso, drunk_in_alley).
ator(the_hudsucker_proxy, jesse_brewer, mailroom_screamer).
ator(the_hudsucker_proxy, philip_loch, mailroom_screamer).
ator(the_hudsucker_proxy, stan_lichtenstein, mailroom_screamer).
ator(the_hudsucker_proxy, todd_alcott, mailroom_screamer).
ator(the_hudsucker_proxy, ace_o_connell, mailroom_screamer).
ator(the_hudsucker_proxy, richard_schiff, mailroom_screamer).
ator(the_hudsucker_proxy, frank_jeffries, mailroom_screamer).
ator(the_hudsucker_proxy, lou_criscuolo, mailroom_screamer).
ator(the_hudsucker_proxy, michael_earl_reid, mailroom_screamer).
ator(the_hudsucker_proxy, mike_starr, newsroom_reporter).
ator(the_hudsucker_proxy, david_hagar, newsroom_reporter).
ator(the_hudsucker_proxy, willie_reale, newsroom_reporter).
ator(the_hudsucker_proxy, harvey_meyer, newsroom_reporter).
ator(the_hudsucker_proxy, tom_toner, newsroom_reporter).
ator(the_hudsucker_proxy, david_fawcett, newsroom_reporter).
ator(the_hudsucker_proxy, jeff_still, newsreel_reporter).
ator(the_hudsucker_proxy, david_gould, newsreel_reporter).
ator(the_hudsucker_proxy, gil_pearson, newsreel_reporter).
ator(the_hudsucker_proxy, marc_garber, newsreel_reporter).
ator(the_hudsucker_proxy, david_massie, newsreel_reporter).
ator(the_hudsucker_proxy, mark_jeffrey_miller, newsreel_reporter).
ator(the_hudsucker_proxy, peter_siragusa, newsreel_reporter).
ator(the_hudsucker_proxy, nelson_george, newsreel_reporter).
ator(the_hudsucker_proxy, michael_houlihan, newsreel_reporter).
ator(the_hudsucker_proxy, ed_lillard, newsreel_reporter).
ator(the_hudsucker_proxy, wantland_sandel, new_year_s_mob).
ator(the_hudsucker_proxy, james_deuter, new_year_s_mob).
ator(the_hudsucker_proxy, roderick_peeples, new_year_s_mob).
atriz(the_hudsucker_proxy, cynthia_baker, new_year_s_mob).
ator(the_hudsucker_proxy, jack_rooney, man_at_merchandise_mart).
ator(the_hudsucker_proxy, keith_schrader, businessman).

filme(inside_monkey_zetterland, 1992).
diretor(inside_monkey_zetterland, jefery_levy).
ator(inside_monkey_zetterland, steve_antin, monkey_zetterland).
atriz(inside_monkey_zetterland, patricia_arquette, grace_zetterland).
atriz(inside_monkey_zetterland, sandra_bernhard, imogene).
atriz(inside_monkey_zetterland, sofia_coppola, cindy).
ator(inside_monkey_zetterland, tate_donovan, brent_zetterland).
ator(inside_monkey_zetterland, rupert_everett, sasha).
atriz(inside_monkey_zetterland, katherine_helmond, honor_zetterland).
ator(inside_monkey_zetterland, bo_hopkins, mike_zetterland).
atriz(inside_monkey_zetterland, ricki_lake, bella_the_stalker).
atriz(inside_monkey_zetterland, debi_mazar, daphne).
atriz(inside_monkey_zetterland, martha_plimpton, sofie).
atriz(inside_monkey_zetterland, robin_antin, waitress).
atriz(inside_monkey_zetterland, frances_bay, grandma).
ator(inside_monkey_zetterland, luca_bercovici, boot_guy).
atriz(inside_monkey_zetterland, melissa_lechner, observation_psychiatrist).
ator(inside_monkey_zetterland, lance_loud, psychiatrist).
ator(inside_monkey_zetterland, chris_nash, police_officer).
atriz(inside_monkey_zetterland, vivian_schilling, network_producer).
atriz(inside_monkey_zetterland, blair_tefkin, brent_s_assistant).

filme(intolerable_cruelty, 2003).
diretor(intolerable_cruelty, ethan_coen).
diretor(intolerable_cruelty, joel_coen).
ator(intolerable_cruelty, george_clooney, miles_massey).
atriz(intolerable_cruelty, catherine_zeta_jones, marylin_rexroth).
ator(intolerable_cruelty, geoffrey_rush, donovan_donaly).
ator(intolerable_cruelty, cedric_the_entertainer, gus_petch).
ator(intolerable_cruelty, edward_herrmann, rex_rexroth).
ator(intolerable_cruelty, paul_adelstein, wrigley).
ator(intolerable_cruelty, richard_jenkins, freddy_bender).
ator(intolerable_cruelty, billy_bob_thornton, howard_d_doyle).
atriz(intolerable_cruelty, julia_duffy, sarah_sorkin).
ator(intolerable_cruelty, jonathan_hadary, heinz_the_baron_krauss_von_espy).
ator(intolerable_cruelty, tom_aldredge, herb_myerson).
atriz(intolerable_cruelty, stacey_travis, bonnie_donaly).
ator(intolerable_cruelty, jack_kyle, ollie_olerud).
ator(intolerable_cruelty, irwin_keyes, wheezy_joe).
atriz(intolerable_cruelty, judith_drake, mrs_gutman).
ator(intolerable_cruelty, royce_d_applegate, mr_gutman).
ator(intolerable_cruelty, george_ives, mr_gutman_s_lawyer).
ator(intolerable_cruelty, booth_colman, gutman_trial_judge).
atriz(intolerable_cruelty, kristin_dattilo, rex_s_young_woman).
atriz(intolerable_cruelty, wendle_josepher, miles_receptionist).
atriz(intolerable_cruelty, mary_pat_gleason, nero_s_waitress).
atriz(intolerable_cruelty, mia_cottet, ramona_barcelona).
atriz(intolerable_cruelty, kiersten_warren, claire_o_mara).
ator(intolerable_cruelty, rosey_brown, gus_s_pal).
ator(intolerable_cruelty, ken_sagoes, gus_s_pal).
ator(intolerable_cruelty, dale_e_turner, gus_s_pal).
ator(intolerable_cruelty, douglas_fisher, maitre_d).
ator(intolerable_cruelty, nicholas_shaffer, waiter).
atriz(intolerable_cruelty, isabell_o_connor, judge_marva_munson).
atriz(intolerable_cruelty, mary_gillis, court_reporter).
ator(intolerable_cruelty, colin_linden, father_scott).
atriz(intolerable_cruelty, julie_osburn, stewardess).
ator(intolerable_cruelty, gary_marshal, las_vegas_waiter).
ator(intolerable_cruelty, blake_clark, convention_secretary).
ator(intolerable_cruelty, allan_trautman, convention_lawyer).
atriz(intolerable_cruelty, kate_luyben, santa_fe_tart).
atriz(intolerable_cruelty, kitana_baker, santa_fe_tart).
atriz(intolerable_cruelty, camille_anderson, santa_fe_tart).
atriz(intolerable_cruelty, tamie_sheffield, santa_fe_tart).
atriz(intolerable_cruelty, bridget_marquardt, santa_fe_tart).
atriz(intolerable_cruelty, emma_harrison, santa_fe_tart).
ator(intolerable_cruelty, john_bliss, mr_mackinnon).
ator(intolerable_cruelty, patrick_thomas_o_brien, bailiff).
ator(intolerable_cruelty, sean_fanton, bailiff).
atriz(intolerable_cruelty, justine_baker, wedding_guest).
ator(intolerable_cruelty, bruce_campbell, soap_opera_ator_on_tv).
atriz(intolerable_cruelty, barbara_kerr_condon, herb_myerson_s_private_nurse).
ator(intolerable_cruelty, jason_de_hoyos, gardener).
ator(intolerable_cruelty, larry_vigus, lawyer).
atriz(intolerable_cruelty, susan_yeagley, tart_1).

filme(the_ladykillers, 2004).
diretor(the_ladykillers, ethan_coen).
diretor(the_ladykillers, joel_coen).
ator(the_ladykillers, tom_hanks, professor_g_h_dorr).
atriz(the_ladykillers, irma_p_hall, marva_munson).
ator(the_ladykillers, marlon_wayans, gawain_macsam).
ator(the_ladykillers, j_k_simmons, garth_pancake).
ator(the_ladykillers, tzi_ma, the_general).
ator(the_ladykillers, ryan_hurst, lump_hudson).
atriz(the_ladykillers, diane_delano, mountain_girl).
ator(the_ladykillers, george_wallace, sheriff_wyner).
ator(the_ladykillers, john_mcconnell, deputy_sheriff).
ator(the_ladykillers, jason_weaver, weemack_funthes).
ator(the_ladykillers, stephen_root, fernand_gudge).
atriz(the_ladykillers, lyne_odums, rosalie_funthes).
ator(the_ladykillers, walter_k_jordan, elron).
ator(the_ladykillers, george_anthony_bell, preacher).
ator(the_ladykillers, greg_grunberg, tv_commercial_diretor).
atriz(the_ladykillers, hallie_singleton, craft_service).
ator(the_ladykillers, robert_baker, quarterback).
ator(the_ladykillers, blake_clark, football_coach).
ator(the_ladykillers, amad_jackson, doughnut_gangster).
ator(the_ladykillers, aldis_hodge, doughnut_gangster).
atriz(the_ladykillers, freda_foh_shen, doughnut_woman).
atriz(the_ladykillers, paula_martin, gawain_s_mama).
ator(the_ladykillers, jeremy_suarez, li_l_gawain).
atriz(the_ladykillers, te_te_benn, gawain_s_sister).
ator(the_ladykillers, khalil_east, gawain_s_brother).
atriz(the_ladykillers, jennifer_echols, waffle_hut_waitress).
atriz(the_ladykillers, nita_norris, tea_lady).
atriz(the_ladykillers, vivian_smallwood, tea_lady).
atriz(the_ladykillers, maryn_tasco, tea_lady).
atriz(the_ladykillers, muriel_whitaker, tea_lady).
atriz(the_ladykillers, jessie_bailey, tea_lady).
atriz(the_ladykillers, louisa_abernathy, church_voice).
atriz(the_ladykillers, mildred_dumas, church_voice).
ator(the_ladykillers, al_fann, church_voice).
atriz(the_ladykillers, mi_mi_green_fann, church_voice).
ator(the_ladykillers, maurice_watson, othar).
ator(the_ladykillers, bruce_campbell, humane_society_worker).
ator(the_ladykillers, michael_dotson, angry_football_fan).

filme(lick_the_star, 1998).
diretor(lick_the_star, sofia_coppola).
atriz(lick_the_star, christina_turley, kate).
atriz(lick_the_star, audrey_heaven, chloe).
atriz(lick_the_star, julia_vanderham, rebecca).
atriz(lick_the_star, lindsy_drummer, sara).
ator(lick_the_star, robert_schwartzman, greg).
atriz(lick_the_star, rachael_vanni, wendy).
ator(lick_the_star, peter_bogdanovich, principal).
atriz(lick_the_star, zoe_r_cassavetes, p_e_teacher).
atriz(lick_the_star, anahid_nazarian, social_studies_teacher).
atriz(lick_the_star, davia_nelson, english_teacher).
atriz(lick_the_star, christianna_toler, nadine).
atriz(lick_the_star, hilary_fleming, taco_girl).
atriz(lick_the_star, eleanor_cummings, sixth_grader_p_e_victim).
ator(lick_the_star, anthony_desimone, snack_counter_victim).
ator(lick_the_star, aron_acord, sexy_boy).

filme(lost_in_translation, 2003).
diretor(lost_in_translation, sofia_coppola).
atriz(lost_in_translation, scarlett_johansson, charlotte).
ator(lost_in_translation, bill_murray, bob_harris).
atriz(lost_in_translation, akiko_takeshita, ms_kawasaki).
ator(lost_in_translation, kazuyoshi_minamimagoe, press_agent).
ator(lost_in_translation, kazuko_shibata, press_agent).
ator(lost_in_translation, take, press_agent).
ator(lost_in_translation, ryuichiro_baba, concierge).
ator(lost_in_translation, akira_yamaguchi, bellboy).
atriz(lost_in_translation, catherine_lambert, jazz_singer).
ator(lost_in_translation, fran_ois_du_bois, sausalito_piano).
ator(lost_in_translation, tim_leffman, sausalito_guitar).
ator(lost_in_translation, gregory_pekar, american_businessman_1).
ator(lost_in_translation, richard_allen, american_businessman_2).
ator(lost_in_translation, giovanni_ribisi, john).
ator(lost_in_translation, diamond_yukai, commercial_diretor).
ator(lost_in_translation, jun_maki, suntory_client).
atriz(lost_in_translation, nao_asuka, premium_fantasy_woman).
ator(lost_in_translation, tetsuro_naka, stills_photographer).
ator(lost_in_translation, kanako_nakazato, make_up_person).
ator(lost_in_translation, fumihiro_hayashi, charlie).
atriz(lost_in_translation, hiroko_kawasaki, hiroko).
atriz(lost_in_translation, daikon, bambie).
atriz(lost_in_translation, anna_faris, kelly).
ator(lost_in_translation, asuka_shimuzu, kelly_s_translator).
ator(lost_in_translation, ikuko_takahashi, ikebana_instructor).
ator(lost_in_translation, koichi_tanaka, bartender_ny_bar).
ator(lost_in_translation, hugo_codaro, aerobics_instructor).
atriz(lost_in_translation, akiko_monou, p_chan).
ator(lost_in_translation, akimitsu_naruyama, french_japanese_nightclub_patron).
ator(lost_in_translation, hiroshi_kawashima, bartender_nightclub).
atriz(lost_in_translation, toshikawa_hiromi, hiromix).
ator(lost_in_translation, nobuhiko_kitamura, nobu).
ator(lost_in_translation, nao_kitman, nao).
ator(lost_in_translation, akira, hans).
ator(lost_in_translation, kunichi_nomura, kun).
ator(lost_in_translation, yasuhiko_hattori, charlie_s_friend).
ator(lost_in_translation, shigekazu_aida, mr_valentine).
ator(lost_in_translation, kazuo_yamada, hospital_receptionist).
ator(lost_in_translation, akira_motomura, old_man).
ator(lost_in_translation, osamu_shigematu, doctor).
ator(lost_in_translation, takashi_fujii, tv_host).
ator(lost_in_translation, kei_takyo, tv_translator).
ator(lost_in_translation, ryo_kondo, politician).
ator(lost_in_translation, yumi_ikeda, politician_s_aide).
ator(lost_in_translation, yumika_saki, politician_s_aide).
ator(lost_in_translation, yuji_okabe, politician_s_aide).
ator(lost_in_translation, diedrich_bollman, german_hotel_guest).
ator(lost_in_translation, georg_o_p_eschert, german_hotel_guest).
ator(lost_in_translation, mark_willms, carl_west).
atriz(lost_in_translation, lisle_wilkerson, sexy_businesswoman).
atriz(lost_in_translation, nancy_steiner, lydia_harris).

filme(the_man_who_wasn_t_there, 2001).
diretor(the_man_who_wasn_t_there, ethan_coen).
diretor(the_man_who_wasn_t_there, joel_coen).
ator(the_man_who_wasn_t_there, billy_bob_thornton, ed_crane).
atriz(the_man_who_wasn_t_there, frances_mcdormand, doris_crane).
ator(the_man_who_wasn_t_there, michael_badalucco, frank).
ator(the_man_who_wasn_t_there, james_gandolfini, dave_big_dave_brewster).
atriz(the_man_who_wasn_t_there, katherine_borowitz, ann_nirdlinger).
ator(the_man_who_wasn_t_there, jon_polito, creighton_tolliver).
atriz(the_man_who_wasn_t_there, scarlett_johansson, rachel_birdy_abundas).
ator(the_man_who_wasn_t_there, richard_jenkins, walter_abundas).
ator(the_man_who_wasn_t_there, tony_shalhoub, freddy_riedenschneider).
ator(the_man_who_wasn_t_there, christopher_kriesa, officer_persky).
ator(the_man_who_wasn_t_there, brian_haley, officer_pete_krebs).
ator(the_man_who_wasn_t_there, jack_mcgee, burns).
ator(the_man_who_wasn_t_there, gregg_binkley, the_new_man).
ator(the_man_who_wasn_t_there, alan_fudge, diedrickson).
atriz(the_man_who_wasn_t_there, lilyan_chauvin, medium).
ator(the_man_who_wasn_t_there, adam_alexi_malle, jacques_carcanogues).
ator(the_man_who_wasn_t_there, ted_rooney, bingo_caller).
ator(the_man_who_wasn_t_there, abraham_benrubi, young_man).
ator(the_man_who_wasn_t_there, christian_ferratti, child).
atriz(the_man_who_wasn_t_there, rhoda_gemignani, costanza).
ator(the_man_who_wasn_t_there, e_j_callahan, customer).
atriz(the_man_who_wasn_t_there, brooke_smith, sobbing_prisoner).
ator(the_man_who_wasn_t_there, ron_ross, banker).
atriz(the_man_who_wasn_t_there, hallie_singleton, waitress).
ator(the_man_who_wasn_t_there, jon_donnelly, gatto_eater).
ator(the_man_who_wasn_t_there, dan_martin, bailiff).
ator(the_man_who_wasn_t_there, nicholas_lanier, tony).
ator(the_man_who_wasn_t_there, tom_dahlgren, judge_1).
ator(the_man_who_wasn_t_there, booth_colman, judge_2).
ator(the_man_who_wasn_t_there, stanley_desantis, new_man_s_customer).
ator(the_man_who_wasn_t_there, peter_siragusa, bartender).
ator(the_man_who_wasn_t_there, christopher_mcdonald, macadam_salesman).
ator(the_man_who_wasn_t_there, rick_scarry, district_attorney).
ator(the_man_who_wasn_t_there, george_ives, lloyd_garroway).
ator(the_man_who_wasn_t_there, devon_cole_borisoff, swimming_boy).
atriz(the_man_who_wasn_t_there, mary_bogue, prisoner_visitor).
ator(the_man_who_wasn_t_there, don_donati, pie_contest_timer).
ator(the_man_who_wasn_t_there, arthur_reeves, flophouse_clerk).
atriz(the_man_who_wasn_t_there, michelle_weber, dancer).
atriz(the_man_who_wasn_t_there, randi_pareira, dancer).
ator(the_man_who_wasn_t_there, robert_loftin, dancer).
ator(the_man_who_wasn_t_there, kenneth_hughes, dancer).
ator(the_man_who_wasn_t_there, gordon_hart, dancer).
atriz(the_man_who_wasn_t_there, brenda_mae_hamilton, dancer).
ator(the_man_who_wasn_t_there, lloyd_gordon, dancer).
ator(the_man_who_wasn_t_there, leonard_crofoot, dancer).
atriz(the_man_who_wasn_t_there, rita_bland, dancer).
atriz(the_man_who_wasn_t_there, audrey_k_baranishyn, dancer).
atriz(the_man_who_wasn_t_there, qyn_hughes, dancer).
atriz(the_man_who_wasn_t_there, rachel_mcdonald, dancer).
ator(the_man_who_wasn_t_there, craig_berenson, jail_guy).
atriz(the_man_who_wasn_t_there, joan_m_blair, prison_matron).
ator(the_man_who_wasn_t_there, geoffrey_gould, alpine_rope_toss_man).
ator(the_man_who_wasn_t_there, phil_hawn, man_in_courtroom).
atriz(the_man_who_wasn_t_there, cherilyn_hayres, swing_dancer).
ator(the_man_who_wasn_t_there, john_michael_higgins, emergency_room_physician).
atriz(the_man_who_wasn_t_there, monika_malmrose, crying_girl).
ator(the_man_who_wasn_t_there, peter_schrum, truck_driver).
ator(the_man_who_wasn_t_there, max_thayer, witness).

filme(marie_antoinette, 2006).
diretor(marie_antoinette, sofia_coppola).
atriz(marie_antoinette, kirsten_dunst, marie_antoinette).
ator(marie_antoinette, jason_schwartzman, louis_xvi).
ator(marie_antoinette, rip_torn, king_louis_xv).
atriz(marie_antoinette, judy_davis, comtesse_de_noailles).
atriz(marie_antoinette, asia_argento, madame_du_barry).
atriz(marie_antoinette, marianne_faithfull, maria_theresia).
atriz(marie_antoinette, aurore_cl_ment, la_duchesse_de_chartres).
ator(marie_antoinette, guillaume_gallienne, comte_vergennes).
atriz(marie_antoinette, clementine_poidatz, comtesse_de_provence).
atriz(marie_antoinette, molly_shannon, anne_victoire).
ator(marie_antoinette, steve_coogan, count_mercy_d_argenteau).
ator(marie_antoinette, jamie_dornan, axel_von_fersen).
atriz(marie_antoinette, shirley_henderson, aunt_sophie).
ator(marie_antoinette, jean_christophe_bouvet, duc_de_choiseul).
ator(marie_antoinette, filippo_bozotti, dimitri).
atriz(marie_antoinette, sarah_adler, '').
ator(marie_antoinette, mathieu_amalric, man_at_the_masked_ball).
atriz(marie_antoinette, rachel_berger, lady_m_b).
ator(marie_antoinette, xavier_bonastre, court_member).
atriz(marie_antoinette, io_bottoms, lady_in_waiting_1).
atriz(marie_antoinette, sol_ne_bouton, '').
atriz(marie_antoinette, rose_byrne, yolande_martine_gabrielle_de_polastron_duchesse_de_polignac).
ator(marie_antoinette, alain_doutey, '').
ator(marie_antoinette, gilles_dufour, '').
atriz(marie_antoinette, sabine_glaser, court_member).
atriz(marie_antoinette, h_loise_godet, court_member).
atriz(marie_antoinette, manon_grosset, une_page).
ator(marie_antoinette, philippe_h_li_s, king_s_aide_de_camp_2).
ator(marie_antoinette, arnaud_klein, garde_royal_royal_guard).
atriz(marie_antoinette, aleksia_landeau, countesse_de_castelabjac).
ator(marie_antoinette, benjamin_lemaire, un_page).
ator(marie_antoinette, victor_loukianenko, le_valet_de_marie_antoinette).
ator(marie_antoinette, rapha_l_neal, garden_page).
atriz(marie_antoinette, mary_nighy, '').
ator(marie_antoinette, al_weaver, '').

filme(miller_s_crossing, 1990).
diretor(miller_s_crossing, ethan_coen).
diretor(miller_s_crossing, joel_coen).
ator(miller_s_crossing, gabriel_byrne, tom_reagan).
atriz(miller_s_crossing, marcia_gay_harden, verna).
ator(miller_s_crossing, john_turturro, bernie_bernbaum).
ator(miller_s_crossing, jon_polito, johnny_caspar).
ator(miller_s_crossing, j_e_freeman, eddie_dane).
ator(miller_s_crossing, albert_finney, leo).
ator(miller_s_crossing, mike_starr, frankie).
ator(miller_s_crossing, al_mancini, tic_tac).
ator(miller_s_crossing, richard_woods, mayor_dale_levander).
ator(miller_s_crossing, thomas_toner, o_doole).
ator(miller_s_crossing, steve_buscemi, mink).
ator(miller_s_crossing, mario_todisco, clarence_drop_johnson).
ator(miller_s_crossing, olek_krupa, tad).
ator(miller_s_crossing, michael_jeter, adolph).
ator(miller_s_crossing, lanny_flaherty, terry).
atriz(miller_s_crossing, jeanette_kontomitras, mrs_caspar).
ator(miller_s_crossing, louis_charles_mounicou_iii, johnny_caspar_jr).
ator(miller_s_crossing, john_mcconnell, cop__brian).
ator(miller_s_crossing, danny_aiello_iii, cop__delahanty).
atriz(miller_s_crossing, helen_jolly, screaming_lady).
atriz(miller_s_crossing, hilda_mclean, landlady).
ator(miller_s_crossing, monte_starr, gunman_in_leo_s_house).
ator(miller_s_crossing, don_picard, gunman_in_leo_s_house).
ator(miller_s_crossing, salvatore_h_tornabene, rug_daniels).
ator(miller_s_crossing, kevin_dearie, street_urchin).
ator(miller_s_crossing, michael_badalucco, caspar_s_driver).
ator(miller_s_crossing, charles_ferrara, caspar_s_butler).
ator(miller_s_crossing, esteban_fern_ndez, caspar_s_cousin).
ator(miller_s_crossing, george_fernandez, caspar_s_cousin).
ator(miller_s_crossing, charles_gunning, hitman_at_verna_s).
ator(miller_s_crossing, dave_drinkx, hitman_2).
ator(miller_s_crossing, david_darlow, lazarre_s_messenger).
ator(miller_s_crossing, robert_labrosse, lazarre_s_tough).
ator(miller_s_crossing, carl_rooney, lazarre_s_tough).
ator(miller_s_crossing, jack_harris, man_with_pipe_bomb).
ator(miller_s_crossing, jery_hewitt, son_of_erin).
ator(miller_s_crossing, sam_raimi, snickering_gunman).
ator(miller_s_crossing, john_schnauder_jr, cop_with_bullhorn).
ator(miller_s_crossing, zolly_levin, rabbi).
ator(miller_s_crossing, joey_ancona, boxer).
ator(miller_s_crossing, bill_raye, boxer).
ator(miller_s_crossing, william_preston_robertson, voice).
atriz(miller_s_crossing, frances_mcdormand, mayor_s_secretary).

filme(mission_impossible, 1996).
diretor(mission_impossible, brian_de_palma).
ator(mission_impossible, tom_cruise, ethan_hunt).
ator(mission_impossible, jon_voight, jim_phelps).
atriz(mission_impossible, emmanuelle_b_art, claire_phelps).
ator(mission_impossible, henry_czerny, eugene_kittridge).
ator(mission_impossible, jean_reno, franz_krieger).
ator(mission_impossible, ving_rhames, luther_stickell).
atriz(mission_impossible, kristin_scott_thomas, sarah_davies).
atriz(mission_impossible, vanessa_redgrave, max).
ator(mission_impossible, dale_dye, frank_barnes).
ator(mission_impossible, marcel_iures, golitsyn).
ator(mission_impossible, ion_caramitru, zozimov).
atriz(mission_impossible, ingeborga_dapkunaite, hannah_williams).
atriz(mission_impossible, valentina_yakunina, drunken_female_imf_agent).
ator(mission_impossible, marek_vasut, drunken_male_imf_agent).
ator(mission_impossible, nathan_osgood, kittridge_technician).
ator(mission_impossible, john_mclaughlin, tv_interviewer).
ator(mission_impossible, rolf_saxon, cia_analyst_william_donloe).
ator(mission_impossible, karel_dobry, matthias).
ator(mission_impossible, andreas_wisniewski, max_s_companion).
ator(mission_impossible, david_shaeffer, diplomat_rand_housman).
ator(mission_impossible, rudolf_pechan, mayor_brandl).
ator(mission_impossible, gaston_subert, jaroslav_reid).
ator(mission_impossible, ricco_ross, denied_area_security_guard).
ator(mission_impossible, mark_houghton, denied_area_security_guard).
ator(mission_impossible, bob_friend, sky_news_man).
atriz(mission_impossible, annabel_mullion, flight_attendant).
ator(mission_impossible, garrick_hagon, cnn_reporter).
ator(mission_impossible, olegar_fedoro, kiev_room_agent).
ator(mission_impossible, sam_douglas, kiev_room_agent).
ator(mission_impossible, andrzej_borkowski, kiev_room_agent).
atriz(mission_impossible, maya_dokic, kiev_room_agent).
atriz(mission_impossible, carmela_marner, kiev_room_agent).
atriz(mission_impossible, mimi_potworowska, kiev_room_agent).
atriz(mission_impossible, jirina_trebick, cleaning_woman).
ator(mission_impossible, david_schneider, train_engineer).
atriz(mission_impossible, helen_lindsay, female_executive_in_train).
atriz(mission_impossible, pat_starr, cia_agent).
ator(mission_impossible, richard_d_sharp, cia_lobby_guard).
ator(mission_impossible, randall_paul, cia_escort_guard).
atriz(mission_impossible, sue_doucette, cia_agent).
ator(mission_impossible, graydon_gould, public_official).
ator(mission_impossible, tony_vogel, m_i_5).
ator(mission_impossible, michael_rogers, large_man).
atriz(mission_impossible, laura_brook, margaret_hunt).
ator(mission_impossible, morgan_deare, donald_hunt).
ator(mission_impossible, david_phelan, steward_on_train).
atriz(mission_impossible, melissa_knatchbull, air_stewardess).
ator(mission_impossible, keith_campbell, fireman).
ator(mission_impossible, michael_cella, student).
ator(mission_impossible, emilio_estevez, jack_harmon).
ator(mission_impossible, john_knoll, passenger_on_train_in_tunnel).

filme(no_country_for_old_men, 2007).
diretor(no_country_for_old_men, joel_coen).

filme(o_brother_where_art_thou, 2000).
diretor(o_brother_where_art_thou, ethan_coen).
diretor(o_brother_where_art_thou, joel_coen).
ator(o_brother_where_art_thou, george_clooney, ulysses_everett_mcgill).
ator(o_brother_where_art_thou, john_turturro, pete).
ator(o_brother_where_art_thou, tim_blake_nelson, delmar_o_donnell).
ator(o_brother_where_art_thou, john_goodman, big_dan_teague).
atriz(o_brother_where_art_thou, holly_hunter, penny).
ator(o_brother_where_art_thou, chris_thomas_king, tommy_johnson).
ator(o_brother_where_art_thou, charles_durning, pappy_o_daniel).
ator(o_brother_where_art_thou, del_pentecost, junior_o_daniel).
ator(o_brother_where_art_thou, michael_badalucco, george_nelson).
ator(o_brother_where_art_thou, j_r_horne, pappy_s_staff).
ator(o_brother_where_art_thou, brian_reddy, pappy_s_staff).
ator(o_brother_where_art_thou, wayne_duvall, homer_stokes).
ator(o_brother_where_art_thou, ed_gale, the_little_man).
ator(o_brother_where_art_thou, ray_mckinnon, vernon_t_waldrip).
ator(o_brother_where_art_thou, daniel_von_bargen, sheriff_cooley_the_devil).
ator(o_brother_where_art_thou, royce_d_applegate, man_with_bullhorn).
ator(o_brother_where_art_thou, frank_collison, wash_hogwallop).
ator(o_brother_where_art_thou, quinn_gasaway, boy_hogwallop).
ator(o_brother_where_art_thou, lee_weaver, blind_seer).
ator(o_brother_where_art_thou, millford_fortenberry, pomade_vendor).
ator(o_brother_where_art_thou, stephen_root, radio_station_man).
ator(o_brother_where_art_thou, john_locke, mr_french).
atriz(o_brother_where_art_thou, gillian_welch, soggy_bottom_customer).
ator(o_brother_where_art_thou, a_ray_ratliff, record_store_clerk).
atriz(o_brother_where_art_thou, mia_tate, siren).
atriz(o_brother_where_art_thou, musetta_vander, siren).
atriz(o_brother_where_art_thou, christy_taylor, siren).
atriz(o_brother_where_art_thou, april_hardcastle, waitress).
ator(o_brother_where_art_thou, michael_w_finnell, interrogator).
atriz(o_brother_where_art_thou, georgia_rae_rainer, wharvey_gal).
atriz(o_brother_where_art_thou, marianna_breland, wharvey_gal).
atriz(o_brother_where_art_thou, lindsey_miller, wharvey_gal).
atriz(o_brother_where_art_thou, natalie_shedd, wharvey_gal).
ator(o_brother_where_art_thou, john_mcconnell, woolworths_manager).
ator(o_brother_where_art_thou, issac_freeman, gravedigger).
ator(o_brother_where_art_thou, wilson_waters_jr, gravedigger).
ator(o_brother_where_art_thou, robert_hamlett, gravedigger).
ator(o_brother_where_art_thou, willard_cox, cox_family).
atriz(o_brother_where_art_thou, evelyn_cox, cox_family).
atriz(o_brother_where_art_thou, suzanne_cox, cox_family).
ator(o_brother_where_art_thou, sidney_cox, cox_family).
ator(o_brother_where_art_thou, buck_white, the_whites).
atriz(o_brother_where_art_thou, sharon_white, the_whites).
atriz(o_brother_where_art_thou, cheryl_white, the_whites).
ator(o_brother_where_art_thou, ed_snodderly, village_idiot).
ator(o_brother_where_art_thou, david_holt, village_idiot).
ator(o_brother_where_art_thou, jerry_douglas, dobro_player).
ator(o_brother_where_art_thou, christopher_francis, kkk_member).
ator(o_brother_where_art_thou, geoffrey_gould, head_of_mob).
ator(o_brother_where_art_thou, nathaniel_lee_jr, ice_boy_on_the_right_straw_hat).

filme(the_outsiders, 1983).
diretor(the_outsiders, francis_ford_coppola).
ator(the_outsiders, matt_dillon, dallas_dally_winston).
ator(the_outsiders, ralph_macchio, johnny_cade).
ator(the_outsiders, c_thomas_howell, ponyboy_curtis).
ator(the_outsiders, patrick_swayze, darrel_darry_curtis).
ator(the_outsiders, rob_lowe, sodapop_curtis).
ator(the_outsiders, emilio_estevez, keith_two_bit_mathews).
ator(the_outsiders, tom_cruise, steve_randle).
ator(the_outsiders, glenn_withrow, tim_shepard).
atriz(the_outsiders, diane_lane, sherri_cherry_valance).
ator(the_outsiders, leif_garrett, bob_sheldon).
ator(the_outsiders, darren_dalton, randy_anderson).
atriz(the_outsiders, michelle_meyrink, marcia).
ator(the_outsiders, gailard_sartain, jerry_wood).
ator(the_outsiders, tom_waits, buck_merrill).
ator(the_outsiders, william_smith, store_clerk).
ator(the_outsiders, tom_hillmann, greaser_in_concession_stand).
ator(the_outsiders, hugh_walkinshaw, soc_in_concession_stand).
atriz(the_outsiders, sofia_coppola, little_girl).
atriz(the_outsiders, teresa_wilkerson_hunt, woman_at_fire).
atriz(the_outsiders, linda_nystedt, nurse).
atriz(the_outsiders, s_e_hinton, nurse).
ator(the_outsiders, brent_beesley, suburb_guy).
ator(the_outsiders, john_meier, paul).
ator(the_outsiders, ed_jackson, motorcycle_cop).
ator(the_outsiders, daniel_r_suhart, orderly).
atriz(the_outsiders, heather_langenkamp, '').

filme(paris_je_t_aime, 2006).
diretor(paris_je_t_aime, olivier_assayas).
diretor(paris_je_t_aime, fr_d_ric_auburtin).
diretor(paris_je_t_aime, christoffer_boe).
diretor(paris_je_t_aime, sylvain_chomet).
diretor(paris_je_t_aime, ethan_coen).
diretor(paris_je_t_aime, joel_coen).
diretor(paris_je_t_aime, isabel_coixet).
diretor(paris_je_t_aime, alfonso_cuar_n).
diretor(paris_je_t_aime, g_rard_depardieu).
diretor(paris_je_t_aime, jean_luc_godard).
diretor(paris_je_t_aime, richard_lagravenese).
diretor(paris_je_t_aime, anne_marie_mi_ville).
diretor(paris_je_t_aime, vincenzo_natali).
diretor(paris_je_t_aime, alexander_payne).
diretor(paris_je_t_aime, walter_salles).
diretor(paris_je_t_aime, oliver_schmitz).
diretor(paris_je_t_aime, ettore_scola).
diretor(paris_je_t_aime, nobuhiro_suwa).
diretor(paris_je_t_aime, daniela_thomas).
diretor(paris_je_t_aime, tom_tykwer).
diretor(paris_je_t_aime, gus_van_sant).
atriz(paris_je_t_aime, emilie_ohana, the_young_parisian_recurrent_character).
atriz(paris_je_t_aime, julie_bataille, julie_segment_1st_arrondissement).
ator(paris_je_t_aime, steve_buscemi, the_tourist_segment_1st_arrondissement).
ator(paris_je_t_aime, axel_kiener, axel_segment_1st_arrondissement).
atriz(paris_je_t_aime, juliette_binoche, the_mother_segment_2nd_arrondissement).
ator(paris_je_t_aime, willem_dafoe, the_cow_boy_segment_2nd_arrondissement).
atriz(paris_je_t_aime, marianne_faithfull, segment_4th_arrondissement).
ator(paris_je_t_aime, elias_mcconnell, eli_segment_4th_arrondissement).
ator(paris_je_t_aime, gaspard_ulliel, gaspar_segment_4th_arrondissement).
ator(paris_je_t_aime, ben_gazzara, ben_segment_6th_arrondissement).
atriz(paris_je_t_aime, gena_rowlands, gena_segment_6th_arrondissement).
atriz(paris_je_t_aime, yolande_moreau, female_mime_segment_7th_arrondissement).
ator(paris_je_t_aime, paul_putner, male_mime_segment_7th_arrondissement).
atriz(paris_je_t_aime, olga_kurylenko, the_femme_fatale_segment_8th_arrondissement).
atriz(paris_je_t_aime, fanny_ardant, fanny_forestier_segment_9th_arrondissement).
ator(paris_je_t_aime, bob_hoskins, bob_leander_segment_9th_arrondissement).
ator(paris_je_t_aime, melchior_beslon, thomas_segment_10th_arrondissement).
atriz(paris_je_t_aime, natalie_portman, francine_segment_10th_arrondissement).
ator(paris_je_t_aime, javier_c_mara, the_doctor_segment_12th_arrondissement).
atriz(paris_je_t_aime, isabella_rossellini, the_wife_segment_12th_arrondissement).
atriz(paris_je_t_aime, leonor_watling, segment_12th_arrondissement).
atriz(paris_je_t_aime, camille_japy, anna_segment_15th_arrondissement).
ator(paris_je_t_aime, nick_nolte, vincent_segment_17th_arrondissement).
atriz(paris_je_t_aime, ludivine_sagnier, claire_segment_17th_arrondissement).
ator(paris_je_t_aime, seydou_boro, hassan_segment_19th_arrondissement).
atriz(paris_je_t_aime, a_ssa_ma_ga, sophie_segment_19th_arrondissement).

filme(peggy_sue_got_married, 1986).
diretor(peggy_sue_got_married, francis_ford_coppola).
atriz(peggy_sue_got_married, kathleen_turner, peggy_sue_kelcher_peggy_sue_bodell).
ator(peggy_sue_got_married, nicolas_cage, charlie_bodell).
ator(peggy_sue_got_married, barry_miller, richard_norvik).
atriz(peggy_sue_got_married, catherine_hicks, carol_heath).
atriz(peggy_sue_got_married, joan_allen, maddy_nagle).
ator(peggy_sue_got_married, kevin_j_o_connor, michael_fitzsimmons).
ator(peggy_sue_got_married, jim_carrey, walter_getz).
atriz(peggy_sue_got_married, lisa_jane_persky, delores_dodge).
atriz(peggy_sue_got_married, lucinda_jenney, rosalie_testa).
ator(peggy_sue_got_married, wil_shriner, arthur_nagle).
atriz(peggy_sue_got_married, barbara_harris, evelyn_kelcher).
ator(peggy_sue_got_married, don_murray, jack_kelcher).
atriz(peggy_sue_got_married, sofia_coppola, nancy_kelcher).
atriz(peggy_sue_got_married, maureen_o_sullivan, elizabeth_alvorg).
ator(peggy_sue_got_married, leon_ames, barney_alvorg).
ator(peggy_sue_got_married, randy_bourne, scott_bodell).
atriz(peggy_sue_got_married, helen_hunt, beth_bodell).
ator(peggy_sue_got_married, don_stark, doug_snell).
ator(peggy_sue_got_married, marshall_crenshaw, reunion_band).
ator(peggy_sue_got_married, chris_donato, reunion_band).
ator(peggy_sue_got_married, robert_crenshaw, reunion_band).
ator(peggy_sue_got_married, tom_teeley, reunion_band).
ator(peggy_sue_got_married, graham_maby, reunion_band).
ator(peggy_sue_got_married, ken_grantham, mr_snelgrove).
atriz(peggy_sue_got_married, ginger_taylor, janet).
atriz(peggy_sue_got_married, sigrid_wurschmidt, sharon).
ator(peggy_sue_got_married, glenn_withrow, terry).
ator(peggy_sue_got_married, harry_basil, leon).
ator(peggy_sue_got_married, john_carradine, leo).
atriz(peggy_sue_got_married, sachi_parker, lisa).
atriz(peggy_sue_got_married, vivien_straus, sandy).
ator(peggy_sue_got_married, morgan_upton, mr_gilford).
ator(peggy_sue_got_married, dr_lewis_leibovich, dr_daly).
ator(peggy_sue_got_married, bill_bonham, drunk).
ator(peggy_sue_got_married, joe_lerer, drunk_creep).
atriz(peggy_sue_got_married, barbara_oliver, nurse).
ator(peggy_sue_got_married, martin_scott, the_four_mations).
ator(peggy_sue_got_married, marcus_scott, the_four_mations).
ator(peggy_sue_got_married, carl_lockett, the_four_mations).
ator(peggy_sue_got_married, tony_saunders, the_four_mations).
ator(peggy_sue_got_married, vincent_lars, the_four_mations).
ator(peggy_sue_got_married, larry_e_vann, the_four_mations).
ator(peggy_sue_got_married, lawrence_menkin, elderly_gentleman).
ator(peggy_sue_got_married, daniel_r_suhart, chinese_waiter).
ator(peggy_sue_got_married, leslie_hilsinger, majorette).
ator(peggy_sue_got_married, al_nalbandian, lodge_member).
ator(peggy_sue_got_married, dan_leegant, lodge_member).
ator(peggy_sue_got_married, ron_cook, lodge_member).
atriz(peggy_sue_got_married, mary_leichtling, reunion_receptionist).
atriz(peggy_sue_got_married, cynthia_brian, reunion_woman_2).
ator(peggy_sue_got_married, michael_x_martin, '').
atriz(peggy_sue_got_married, mary_mitchel, '').

filme(raising_arizona, 1987).
diretor(raising_arizona, ethan_coen).
diretor(raising_arizona, joel_coen).
ator(raising_arizona, nicolas_cage, h_i_mcdonnough).
atriz(raising_arizona, holly_hunter, edwina_ed_mcdonnough).
ator(raising_arizona, trey_wilson, nathan_arizona_huffhines_sr).
ator(raising_arizona, john_goodman, gale_snoats).
ator(raising_arizona, william_forsythe, evelle_snoats).
ator(raising_arizona, sam_mcmurray, glen).
atriz(raising_arizona, frances_mcdormand, dot).
ator(raising_arizona, randall_tex_cobb, leonard_smalls).
ator(raising_arizona, t_j_kuhn, nathan_arizona_jr).
atriz(raising_arizona, lynne_dumin_kitei, florence_arizona).
ator(raising_arizona, peter_benedek, prison_counselor).
ator(raising_arizona, charles_lew_smith, nice_old_grocery_man).
ator(raising_arizona, warren_keith, younger_fbi_agent).
ator(raising_arizona, henry_kendrick, older_fbi_agent).
ator(raising_arizona, sidney_dawson, moses_ear_bending_cellmate).
ator(raising_arizona, richard_blake, parole_board_chairman).
ator(raising_arizona, troy_nabors, parole_board_member).
atriz(raising_arizona, mary_seibel, parole_board_member).
ator(raising_arizona, john_o_donnal, hayseed_in_the_pickup).
ator(raising_arizona, keith_jandacek, whitey).
ator(raising_arizona, warren_forsythe, minister).
ator(raising_arizona, ruben_young, trapped_convict).
ator(raising_arizona, dennis_sullivan, policeman_in_arizona_house).
ator(raising_arizona, richard_alexander, policeman_in_arizona_house).
ator(raising_arizona, rusty_lee, feisty_hayseed).
ator(raising_arizona, james_yeater, fingerprint_technician).
ator(raising_arizona, bill_andres, reporter).
ator(raising_arizona, carver_barns, reporter).
atriz(raising_arizona, margaret_h_mccormack, unpainted_arizona_secretary).
ator(raising_arizona, bill_rocz, newscaster).
atriz(raising_arizona, mary_f_glenn, payroll_cashier).
ator(raising_arizona, jeremy_babendure, scamp_with_squirt_gun).
ator(raising_arizona, bill_dobbins, adoption_agent).
ator(raising_arizona, ralph_norton, gynecologist).
ator(raising_arizona, henry_tank, mopping_convict).
ator(raising_arizona, frank_outlaw, supermarket_manager).
ator(raising_arizona, todd_michael_rodgers, varsity_nathan_jr).
ator(raising_arizona, m_emmet_walsh, machine_shop_ear_bender).
ator(raising_arizona, robert_gray, glen_and_dot_s_kid).
atriz(raising_arizona, katie_thrasher, glen_and_dot_s_kid).
ator(raising_arizona, derek_russell, glen_and_dot_s_kid).
atriz(raising_arizona, nicole_russell, glen_and_dot_s_kid).
ator(raising_arizona, zachary_sanders, glen_and_dot_s_kid).
atriz(raising_arizona, noell_sanders, glen_and_dot_s_kid).
ator(raising_arizona, cody_ranger, arizona_quint).
ator(raising_arizona, jeremy_arendt, arizona_quint).
atriz(raising_arizona, ashley_hammon, arizona_quint).
atriz(raising_arizona, crystal_hiller, arizona_quint).
atriz(raising_arizona, olivia_hughes, arizona_quint).
atriz(raising_arizona, emily_malin, arizona_quint).
atriz(raising_arizona, melanie_malin, arizona_quint).
ator(raising_arizona, craig_mclaughlin, arizona_quint).
ator(raising_arizona, adam_savageau, arizona_quint).
ator(raising_arizona, benjamin_savageau, arizona_quint).
ator(raising_arizona, david_schneider, arizona_quint).
ator(raising_arizona, michael_stewart, arizona_quint).
ator(raising_arizona, william_preston_robertson, amazing_voice).
ator(raising_arizona, ron_francis_cobert, reporter_1).

filme(rumble_fish, 1983).
diretor(rumble_fish, francis_ford_coppola).
ator(rumble_fish, matt_dillon, rusty_james).
ator(rumble_fish, mickey_rourke, the_motorcycle_boy).
atriz(rumble_fish, diane_lane, patty).
ator(rumble_fish, dennis_hopper, father).
atriz(rumble_fish, diana_scarwid, cassandra).
ator(rumble_fish, vincent_spano, steve).
ator(rumble_fish, nicolas_cage, smokey).
ator(rumble_fish, chris_penn, b_j_jackson).
ator(rumble_fish, laurence_fishburne, midget).
ator(rumble_fish, william_smith, patterson_the_cop).
ator(rumble_fish, michael_higgins, mr_harrigan).
ator(rumble_fish, glenn_withrow, biff_wilcox).
ator(rumble_fish, tom_waits, benny).
ator(rumble_fish, herb_rice, black_pool_player).
atriz(rumble_fish, maybelle_wallace, late_pass_clerk).
atriz(rumble_fish, nona_manning, patty_s_mom).
atriz(rumble_fish, sofia_coppola, donna_patty_s_sister).
ator(rumble_fish, gian_carlo_coppola, cousin_james).
atriz(rumble_fish, s_e_hinton, hooker_on_strip).
ator(rumble_fish, emmett_brown, mr_dobson).
ator(rumble_fish, tracey_walter, alley_mugger_1).
ator(rumble_fish, lance_guecia, alley_mugger_2).
ator(rumble_fish, bob_maras, policeman).
ator(rumble_fish, j_t_turner, math_teacher).
atriz(rumble_fish, keeva_clayton, lake_girl_1).
atriz(rumble_fish, kirsten_hayden, lake_girl_2).
atriz(rumble_fish, karen_parker, lake_girl_3).
atriz(rumble_fish, sussannah_darcy, lake_girl_4).
atriz(rumble_fish, kristi_somers, lake_girl_5).
atriz(rumble_fish, heather_langenkamp, '').

filme(spies_like_us, 1985).
diretor(spies_like_us, john_landis).
ator(spies_like_us, chevy_chase, emmett_fitz_hume).
ator(spies_like_us, dan_aykroyd, austin_millbarge).
ator(spies_like_us, steve_forrest, general_sline).
atriz(spies_like_us, donna_dixon, karen_boyer).
ator(spies_like_us, bruce_davison, ruby).
ator(spies_like_us, bernie_casey, colonel_rhumbus).
ator(spies_like_us, william_prince, keyes).
ator(spies_like_us, tom_hatten, general_miegs).
ator(spies_like_us, frank_oz, test_monitor).
ator(spies_like_us, charles_mckeown, jerry_hadley).
ator(spies_like_us, james_daughton, bob_hodges).
ator(spies_like_us, jim_staahl, bud_schnelker).
atriz(spies_like_us, vanessa_angel, russian_rocket_crew).
atriz(spies_like_us, svetlana_plotnikova, russian_rocket_crew).
ator(spies_like_us, bjarne_thomsen, russian_rocket_crew).
ator(spies_like_us, sergei_rousakov, russian_rocket_crew).
ator(spies_like_us, garrick_dombrovski, russian_rocket_crew).
ator(spies_like_us, terry_gilliam, dr_imhaus).
ator(spies_like_us, costa_gavras, tadzhik_highway_patrol).
ator(spies_like_us, seva_novgorodtsev, tadzhik_highway_patrol).
ator(spies_like_us, stephen_hoye, captain_hefling).
ator(spies_like_us, ray_harryhausen, dr_marston).
ator(spies_like_us, mark_stewart, ace_tomato_courier).
ator(spies_like_us, sean_daniel, ace_tomato_driver).
ator(spies_like_us, jeff_harding, fitz_hume_s_associate).
atriz(spies_like_us, heidi_sorenson, alice_fitz_hume_s_supervisor).
atriz(spies_like_us, margo_random, reporter).
ator(spies_like_us, douglas_lambert, reporter).
ator(spies_like_us, christopher_malcolm, jumpmaster).
ator(spies_like_us, terrance_conder, soldier_1).
ator(spies_like_us, matt_frewer, soldier_2).
ator(spies_like_us, tony_cyrus, the_khan).
atriz(spies_like_us, gusti_bogok, dr_la_fong).
ator(spies_like_us, derek_meddings, dr_stinson).
ator(spies_like_us, robert_paynter, dr_gill).
ator(spies_like_us, bob_hope, golfer).
ator(spies_like_us, gurdial_sira, the_khan_s_brother).
ator(spies_like_us, joel_coen, drive_in_security).
ator(spies_like_us, sam_raimi, drive_in_security).
ator(spies_like_us, michael_apted, ace_tomato_agent).
ator(spies_like_us, b_b_king, ace_tomato_agent).
ator(spies_like_us, larry_cohen, ace_tomato_agent).
ator(spies_like_us, martin_brest, drive_in_security).
ator(spies_like_us, ricco_ross, wamp_guard).
ator(spies_like_us, richard_sharpe, wamp_technician).
ator(spies_like_us, stuart_milligan, wamp_technician).
atriz(spies_like_us, sally_anlauf, wamp_technician).
ator(spies_like_us, john_daveikis, russian_border_guard).
ator(spies_like_us, laurence_bilzerian, russian_border_guard).
ator(spies_like_us, richard_kruk, russian_border_guard).
atriz(spies_like_us, heather_henson, teenage_girl).
atriz(spies_like_us, erin_folsey, teenage_girl).
ator(spies_like_us, bob_swaim, special_forces_commander).
ator(spies_like_us, edwin_newman, himself).
atriz(spies_like_us, nancy_gair, student).

filme(star_wars_episode_i__the_phantom_menace, 1999).
diretor(star_wars_episode_i__the_phantom_menace, george_lucas).
ator(star_wars_episode_i__the_phantom_menace, liam_neeson, qui_gon_jinn).
ator(star_wars_episode_i__the_phantom_menace, ewan_mcgregor, obi_wan_kenobi).
atriz(star_wars_episode_i__the_phantom_menace, natalie_portman, queen_padm_naberrie_amidala).
ator(star_wars_episode_i__the_phantom_menace, jake_lloyd, anakin_skywalker).
atriz(star_wars_episode_i__the_phantom_menace, pernilla_august, shmi_skywalker).
ator(star_wars_episode_i__the_phantom_menace, frank_oz, yoda).
ator(star_wars_episode_i__the_phantom_menace, ian_mcdiarmid, senator_palpatine).
ator(star_wars_episode_i__the_phantom_menace, oliver_ford_davies, gov_sio_bibble).
ator(star_wars_episode_i__the_phantom_menace, hugh_quarshie, capt_panaka).
ator(star_wars_episode_i__the_phantom_menace, ahmed_best, jar_jar_binks).
ator(star_wars_episode_i__the_phantom_menace, anthony_daniels, c_3po).
ator(star_wars_episode_i__the_phantom_menace, kenny_baker, r2_d2).
ator(star_wars_episode_i__the_phantom_menace, terence_stamp, supreme_chancellor_valorum).
ator(star_wars_episode_i__the_phantom_menace, brian_blessed, boss_nass).
ator(star_wars_episode_i__the_phantom_menace, andrew_secombe, watto).
ator(star_wars_episode_i__the_phantom_menace, ray_park, darth_maul).
ator(star_wars_episode_i__the_phantom_menace, lewis_macleod, sebulba).
ator(star_wars_episode_i__the_phantom_menace, steven_spiers, capt_tarpals).
ator(star_wars_episode_i__the_phantom_menace, silas_carson, viceroy_nute_gunray_ki_adi_mundi_lott_dodd_radiant_vii_pilot).
ator(star_wars_episode_i__the_phantom_menace, ralph_brown, ric_oli).
atriz(star_wars_episode_i__the_phantom_menace, celia_imrie, fighter_pilot_bravo_5).
ator(star_wars_episode_i__the_phantom_menace, benedict_taylor, fighter_pilot_bravo_2).
ator(star_wars_episode_i__the_phantom_menace, clarence_smith, fighter_pilot_bravo_3).
atriz(star_wars_episode_i__the_phantom_menace, karol_cristina_da_silva, rab).
ator(star_wars_episode_i__the_phantom_menace, samuel_l_jackson, mace_windu).
ator(star_wars_episode_i__the_phantom_menace, dominic_west, palace_guard).
atriz(star_wars_episode_i__the_phantom_menace, liz_wilson, eirta).
atriz(star_wars_episode_i__the_phantom_menace, candice_orwell, yan).
atriz(star_wars_episode_i__the_phantom_menace, sofia_coppola, sach).
atriz(star_wars_episode_i__the_phantom_menace, keira_knightley, sab__queen_s_decoy).
atriz(star_wars_episode_i__the_phantom_menace, bronagh_gallagher, radiant_vii_captain).
ator(star_wars_episode_i__the_phantom_menace, john_fensom, tc_14).
ator(star_wars_episode_i__the_phantom_menace, greg_proops, beed).
ator(star_wars_episode_i__the_phantom_menace, scott_capurro, fode).
atriz(star_wars_episode_i__the_phantom_menace, margaret_towner, jira).
ator(star_wars_episode_i__the_phantom_menace, dhruv_chanchani, kitster).
ator(star_wars_episode_i__the_phantom_menace, oliver_walpole, seek).
atriz(star_wars_episode_i__the_phantom_menace, katie_lucas, amee).
atriz(star_wars_episode_i__the_phantom_menace, megan_udall, melee).
ator(star_wars_episode_i__the_phantom_menace, hassani_shapi, eeth_koth).
atriz(star_wars_episode_i__the_phantom_menace, gin_clarke, adi_gallia).
ator(star_wars_episode_i__the_phantom_menace, khan_bonfils, saesee_tiin).
atriz(star_wars_episode_i__the_phantom_menace, michelle_taylor, yarael_poof).
atriz(star_wars_episode_i__the_phantom_menace, michaela_cottrell, even_piell).
atriz(star_wars_episode_i__the_phantom_menace, dipika_o_neill_joti, depa_billaba).
ator(star_wars_episode_i__the_phantom_menace, phil_eason, yaddle).
ator(star_wars_episode_i__the_phantom_menace, mark_coulier, aks_moe).
atriz(star_wars_episode_i__the_phantom_menace, lindsay_duncan, tc_14).
ator(star_wars_episode_i__the_phantom_menace, peter_serafinowicz, darth_maul).
ator(star_wars_episode_i__the_phantom_menace, james_taylor, rune_haako).
ator(star_wars_episode_i__the_phantom_menace, chris_sanders, daultay_dofine).
ator(star_wars_episode_i__the_phantom_menace, toby_longworth, sen_lott_dodd_gragra).
ator(star_wars_episode_i__the_phantom_menace, marc_silk, aks_moe).
atriz(star_wars_episode_i__the_phantom_menace, amanda_lucas, tey_how).
atriz(star_wars_episode_i__the_phantom_menace, amy_allen, twi_lek_senatorial_aide_dvd_deleted_scenes).
ator(star_wars_episode_i__the_phantom_menace, don_bies, pod_race_mechanic).
atriz(star_wars_episode_i__the_phantom_menace, trisha_biggar, orn_free_taa_s_aide).
ator(star_wars_episode_i__the_phantom_menace, jerome_blake, rune_haako_mas_amedda_oppo_rancisis_orn_free_taa).
atriz(star_wars_episode_i__the_phantom_menace, michonne_bourriague, aurra_sing).
ator(star_wars_episode_i__the_phantom_menace, ben_burtt, naboo_courier).
ator(star_wars_episode_i__the_phantom_menace, doug_chiang, flag_bearer).
ator(star_wars_episode_i__the_phantom_menace, rob_coleman, pod_race_spectator).
ator(star_wars_episode_i__the_phantom_menace, roman_coppola, senate_guard).
ator(star_wars_episode_i__the_phantom_menace, warwick_davis, wald_pod_race_spectator_mos_espa_citizen).
ator(star_wars_episode_i__the_phantom_menace, c_michael_easton, pod_race_spectator).
ator(star_wars_episode_i__the_phantom_menace, john_ellis, pod_race_spectator).
ator(star_wars_episode_i__the_phantom_menace, ira_feiedman, naboo_courier).
ator(star_wars_episode_i__the_phantom_menace, joss_gower, naboo_fighter_pilot).
ator(star_wars_episode_i__the_phantom_menace, raymond_griffiths, gonk_droid).
ator(star_wars_episode_i__the_phantom_menace, nathan_hamill, pod_race_spectator_naboo_palace_guard).
ator(star_wars_episode_i__the_phantom_menace, tim_harrington, extra_naboo_security_gaurd).
atriz(star_wars_episode_i__the_phantom_menace, nifa_hindes, ann_gella).
atriz(star_wars_episode_i__the_phantom_menace, nishan_hindes, tann_gella).
ator(star_wars_episode_i__the_phantom_menace, john_knoll, lt_rya_kirsch_bravo_4_flag_bearer).
atriz(star_wars_episode_i__the_phantom_menace, madison_lloyd, princess_ellie).
ator(star_wars_episode_i__the_phantom_menace, dan_madsen, kaadu_handler).
ator(star_wars_episode_i__the_phantom_menace, iain_mccaig, orn_free_taa_s_aide).
ator(star_wars_episode_i__the_phantom_menace, rick_mccallum, naboo_courier).
ator(star_wars_episode_i__the_phantom_menace, lorne_peterson, mos_espa_citizen).
ator(star_wars_episode_i__the_phantom_menace, alan_ruscoe, plo_koon_bib_foruna_daultay_dofine).
ator(star_wars_episode_i__the_phantom_menace, steve_sansweet, naboo_courier).
ator(star_wars_episode_i__the_phantom_menace, jeff_shay, pod_race_spectator).
ator(star_wars_episode_i__the_phantom_menace, christian_simpson, bravo_6).
ator(star_wars_episode_i__the_phantom_menace, paul_martin_smith, naboo_courier).
ator(star_wars_episode_i__the_phantom_menace, scott_squires, naboo_speeder_driver).
ator(star_wars_episode_i__the_phantom_menace, tom_sylla, battle_droid).
ator(star_wars_episode_i__the_phantom_menace, danny_wagner, mawhonic).
ator(star_wars_episode_i__the_phantom_menace, dwayne_williams, naboo_courier).
ator(star_wars_episode_i__the_phantom_menace, matthew_wood, bib_fortuna_voice_of_ody_mandrell).
ator(star_wars_episode_i__the_phantom_menace, bob_woods, naboo_courier).

filme(torrance_rises, 1999).
diretor(torrance_rises, lance_bangs).
diretor(torrance_rises, spike_jonze).
diretor(torrance_rises, torrance_community_dance_group).
ator(torrance_rises, spike_jonze, richard_coufey).
atriz(torrance_rises, michelle_adams_meeker, herself).
atriz(torrance_rises, ashley_barnett, herself).
atriz(torrance_rises, dee_buchanan, herself).
ator(torrance_rises, roman_coppola, roman_coppola).
atriz(torrance_rises, sofia_coppola, herself).
atriz(torrance_rises, renee_diamond, herself).
ator(torrance_rises, eminem, eminem).
ator(torrance_rises, alvin_gaines_molina, himself).
atriz(torrance_rises, janeane_garofalo, janeane_garofalo).
ator(torrance_rises, michael_gier, himself).
ator(torrance_rises, richard_koufey, himself).
ator(torrance_rises, byron_s_loyd, himself).
atriz(torrance_rises, allison_lynch, herself).
atriz(torrance_rises, madonna, madonna).
ator(torrance_rises, kevin_l_maher, himself).
ator(torrance_rises, tony_maxwell, himself).
atriz(torrance_rises, lonne_g_moretton, herself).
atriz(torrance_rises, joyeve_palffy, herself).
atriz(torrance_rises, kristine_petrucione, herself).
ator(torrance_rises, regis_philbin, regis_philbin).
atriz(torrance_rises, cynthia_m_reed, herself).
ator(torrance_rises, chris_rock, chris_rock).
ator(torrance_rises, michael_rooney, michael_rooney).
ator(torrance_rises, justin_ross, himself).
atriz(torrance_rises, danette_e_sheppard, herself).
ator(torrance_rises, fatboy_slim, fatboy_slim).
ator(torrance_rises, will_smith, will_smith).
ator(torrance_rises, frank_stancati, himself).
ator(torrance_rises, tim_szczepanski, himself).
atriz(torrance_rises, michelle_weber, herself).

filme(the_usual_suspects, 1995).
diretor(the_usual_suspects, bryan_singer).
ator(the_usual_suspects, stephen_baldwin, michael_mcmanus).
ator(the_usual_suspects, gabriel_byrne, dean_keaton).
ator(the_usual_suspects, benicio_del_toro, fred_fenster).
ator(the_usual_suspects, kevin_pollak, todd_hockney).
ator(the_usual_suspects, kevin_spacey, roger_verbal_kint).
ator(the_usual_suspects, chazz_palminteri, dave_kujan_us_customs).
ator(the_usual_suspects, pete_postlethwaite, kobayashi).
atriz(the_usual_suspects, suzy_amis, edie_finneran).
ator(the_usual_suspects, giancarlo_esposito, jack_baer_fbi).
ator(the_usual_suspects, dan_hedaya, sgt_geoffrey_jeff_rabin).
ator(the_usual_suspects, paul_bartel, smuggler).
ator(the_usual_suspects, carl_bressler, saul_berg).
ator(the_usual_suspects, phillip_simon, fortier).
ator(the_usual_suspects, jack_shearer, renault).
atriz(the_usual_suspects, christine_estabrook, dr_plummer).
ator(the_usual_suspects, clark_gregg, dr_walters).
ator(the_usual_suspects, morgan_hunter, arkosh_kovash).
ator(the_usual_suspects, ken_daly, translator).
atriz(the_usual_suspects, michelle_clunie, sketch_artist).
ator(the_usual_suspects, louis_lombardi, strausz).
ator(the_usual_suspects, frank_medrano, rizzi).
ator(the_usual_suspects, ron_gilbert, daniel_metzheiser_dept_of_justice).
ator(the_usual_suspects, vito_d_ambrosio, arresting_officer).
ator(the_usual_suspects, gene_lythgow, cop_on_pier).
ator(the_usual_suspects, robert_elmore, bodyguard_1).
ator(the_usual_suspects, david_powledge, bodyguard_2).
ator(the_usual_suspects, bob_pennetta, bodyguard_3).
ator(the_usual_suspects, billy_bates, bodyguard_4).
atriz(the_usual_suspects, smadar_hanson, keyser_s_wife).
ator(the_usual_suspects, castulo_guerra, arturro_marquez).
ator(the_usual_suspects, peter_rocca, jaime_arturro_s_bodyguard).
ator(the_usual_suspects, bert_williams, old_cop_in_property).
ator(the_usual_suspects, john_gillespie, '').
ator(the_usual_suspects, peter_greene, redfoot_the_fence).
ator(the_usual_suspects, christopher_mcquarrie, interrogation_cop).
ator(the_usual_suspects, scott_b_morgan, keyser_s_ze_in_flashback).

filme(the_virgin_suicides, 1999).
diretor(the_virgin_suicides, sofia_coppola).
ator(the_virgin_suicides, james_woods, mr_lisbon).
atriz(the_virgin_suicides, kathleen_turner, mrs_lisbon).
atriz(the_virgin_suicides, kirsten_dunst, lux_lisbon).
ator(the_virgin_suicides, josh_hartnett, trip_fontaine).
ator(the_virgin_suicides, michael_par, adult_trip_fontaine).
ator(the_virgin_suicides, scott_glenn, father_moody).
ator(the_virgin_suicides, danny_devito, dr_horniker).
atriz(the_virgin_suicides, a_j_cook, mary_lisbon).
atriz(the_virgin_suicides, hanna_r_hall, cecilia_lisbon).
atriz(the_virgin_suicides, leslie_hayman, therese_lisbon).
atriz(the_virgin_suicides, chelse_swain, bonnie_lisbon).
ator(the_virgin_suicides, anthony_desimone, chase_buell).
ator(the_virgin_suicides, lee_kagan, david_barker).
ator(the_virgin_suicides, robert_schwartzman, paul_baldino).
ator(the_virgin_suicides, noah_shebib, parkie_denton).
ator(the_virgin_suicides, jonathan_tucker, tim_weiner).
ator(the_virgin_suicides, joe_roncetti, kevin_head).
ator(the_virgin_suicides, hayden_christensen, joe_hill_conley).
ator(the_virgin_suicides, chris_hale, peter_sisten).
ator(the_virgin_suicides, joe_dinicol, dominic_palazzolo).
atriz(the_virgin_suicides, suki_kaiser, lydia_perl).
atriz(the_virgin_suicides, dawn_greenhalgh, mrs_scheer).
ator(the_virgin_suicides, allen_stewart_coates, mr_scheer).
atriz(the_virgin_suicides, sherry_miller, mrs_buell).
ator(the_virgin_suicides, jonathon_whittaker, mr_buell).
atriz(the_virgin_suicides, michelle_duquet, mrs_denton).
ator(the_virgin_suicides, murray_mcrae, mr_denton).
atriz(the_virgin_suicides, roberta_hanley, mrs_weiner).
ator(the_virgin_suicides, paul_sybersma, joe_larson).
atriz(the_virgin_suicides, susan_sybersma, mrs_larson).
ator(the_virgin_suicides, peter_snider, trip_s_dad).
ator(the_virgin_suicides, gary_brennan, donald).
ator(the_virgin_suicides, charles_boyland, curt_van_osdol).
ator(the_virgin_suicides, dustin_ladd, chip_willard).
atriz(the_virgin_suicides, kristin_fairlie, amy_schraff).
atriz(the_virgin_suicides, melody_johnson, julie).
atriz(the_virgin_suicides, sheyla_molho, danielle).
atriz(the_virgin_suicides, ashley_ainsworth, sheila_davis).
atriz(the_virgin_suicides, courtney_hawkrigg, grace).
ator(the_virgin_suicides, fran_ois_klanfer, doctor).
ator(the_virgin_suicides, mackenzie_lawrenz, jim_czeslawski).
ator(the_virgin_suicides, tim_hall, kurt_siles).
ator(the_virgin_suicides, amos_crawley, john).
ator(the_virgin_suicides, andrew_gillies, principal_woodhouse).
atriz(the_virgin_suicides, marilyn_smith, mrs_woodhouse).
atriz(the_virgin_suicides, sally_cahill, mrs_hedlie).
atriz(the_virgin_suicides, tracy_ferencz, nurse).
ator(the_virgin_suicides, scot_denton, mr_o_conner).
atriz(the_virgin_suicides, catherine_swing, mrs_o_conner).
ator(the_virgin_suicides, timothy_adams, buzz_romano).
ator(the_virgin_suicides, michael_michaelessi, parks_department_foreman).
atriz(the_virgin_suicides, sarah_minhas, wanda_brown).
atriz(the_virgin_suicides, megan_kennedy, cheerleader).
atriz(the_virgin_suicides, sandi_stahlbrand, meredith_thompson).
ator(the_virgin_suicides, neil_girvan, drunk_man_in_pool).
atriz(the_virgin_suicides, jaya_karsemeyer, gloria).
atriz(the_virgin_suicides, leah_straatsma, rannie).
ator(the_virgin_suicides, mark_polley, cemetery_worker_1).
ator(the_virgin_suicides, kirk_gonnsen, cemetery_worker_2).
atriz(the_virgin_suicides, marianne_moroney, teacher).
atriz(the_virgin_suicides, anne_wessels, woman_in_chiffon).
ator(the_virgin_suicides, derek_boyes, football_grieving_teacher).
ator(the_virgin_suicides, john_buchan, john_lydia_s_boss).
atriz(the_virgin_suicides, mandy_lee_jones, student).
ator(the_virgin_suicides, giovanni_ribisi, narrator).

filme(an_american_rhapsody, 2001).
diretor(an_american_rhapsody, va_g_rdos).
atriz(an_american_rhapsody, scarlett_johansson, suzanne_sandor_at_15).
atriz(an_american_rhapsody, nastassja_kinski, margit_sandor).
atriz(an_american_rhapsody, raffaella_b_ns_gi, suzanne_infant).
ator(an_american_rhapsody, tony_goldwyn, peter_sandor).
atriz(an_american_rhapsody, gnes_b_nfalvy, helen).
ator(an_american_rhapsody, zolt_n_seress, george).
atriz(an_american_rhapsody, klaudia_szab, maria_at_4).
ator(an_american_rhapsody, zsolt_zagoni, russian_soldier).
ator(an_american_rhapsody, andr_s_sz_ke, istvan).
atriz(an_american_rhapsody, erzsi_p_sztor, ilus).
ator(an_american_rhapsody, carlos_laszlo_weiner, boy_on_train_boy_at_party).
atriz(an_american_rhapsody, bori_kereszturi, suzanne_at_3).
ator(an_american_rhapsody, p_ter_k_lloy_moln_r, avo_officer).
atriz(an_american_rhapsody, zsuzsa_czink_czi, teri).
ator(an_american_rhapsody, bal_zs_galk, jeno).
atriz(an_american_rhapsody, kata_dob, claire).
atriz(an_american_rhapsody, va_sz_r_nyi, eva).
ator(an_american_rhapsody, don_pugsley, cafe_supervisor).
ator(an_american_rhapsody, vladimir_mashkov, frank).
atriz(an_american_rhapsody, lisa_jane_persky, pattie).
atriz(an_american_rhapsody, colleen_camp, dottie).
atriz(an_american_rhapsody, kelly_endresz_banlaki, suzanne_at_6).
atriz(an_american_rhapsody, imola_g_sp_r, stewardess).
atriz(an_american_rhapsody, tatyana_kanavka, girl_in_airport).
atriz(an_american_rhapsody, mae_whitman, maria_at_10).
atriz(an_american_rhapsody, lorna_scott, neighbor_with_poodle).
atriz(an_american_rhapsody, sandra_staggs, saleswoman).
atriz(an_american_rhapsody, jacqueline_steiger, betty).
ator(an_american_rhapsody, robert_lesser, harold).
ator(an_american_rhapsody, lou_beach, party_goer).
atriz(an_american_rhapsody, marlee_jackson, sheila_at_7).
atriz(an_american_rhapsody, emmy_rossum, sheila_at_15).
ator(an_american_rhapsody, timothy_everett_moore, paul).
ator(an_american_rhapsody, joshua_dov, richard).
atriz(an_american_rhapsody, larisa_oleynik, maria_sandor_at_18).
atriz(an_american_rhapsody, kati_b_cs, woman_1_at_market).
atriz(an_american_rhapsody, zsuzsa_sz_ger, woman_2_at_market).
ator(an_american_rhapsody, andras_banlaki, '').
atriz(an_american_rhapsody, va_g_rdos, suzanne_sandor_in_family_picture_age_6).
ator(an_american_rhapsody, peter_janosi, german_customs_officer).

filme(the_black_dahlia, 2006).
diretor(the_black_dahlia, brian_de_palma).
ator(the_black_dahlia, josh_hartnett, ofcr_dwight_bucky_bleichert).
atriz(the_black_dahlia, scarlett_johansson, kay_lake).
atriz(the_black_dahlia, hilary_swank, madeleine_linscott).
ator(the_black_dahlia, aaron_eckhart, sgt_leland_lee_blanchard).
atriz(the_black_dahlia, mia_kirshner, elizabeth_short).
ator(the_black_dahlia, graham_norris, sgt_john_carter).
atriz(the_black_dahlia, judith_benezra, '').
ator(the_black_dahlia, richard_brake, bobby_dewitt).
ator(the_black_dahlia, kevin_dunn, cleo_short).
ator(the_black_dahlia, troy_evans, '').
ator(the_black_dahlia, william_finley, '').
ator(the_black_dahlia, patrick_fischler, a_d_a_ellis_loew).
ator(the_black_dahlia, michael_p_flannigan, desk_sergeant).
ator(the_black_dahlia, gregg_henry, '').
atriz(the_black_dahlia, claudia_katz, frolic_bartender).
ator(the_black_dahlia, john_kavanagh, emmet_linscott).
atriz(the_black_dahlia, laura_kightlinger, hooker).
ator(the_black_dahlia, steven_koller, male_nurse).
ator(the_black_dahlia, angus_macinnes, '').
ator(the_black_dahlia, david_mcdivitt, cop).
atriz(the_black_dahlia, rose_mcgowan, sheryl_saddon).
ator(the_black_dahlia, victor_mcguire, '').
atriz(the_black_dahlia, rachel_miner, '').
atriz(the_black_dahlia, stephanie_l_moore, pretty_girl).
ator(the_black_dahlia, james_otis, '').
ator(the_black_dahlia, david_raibon, black_man).
atriz(the_black_dahlia, jemima_rooper, '').
ator(the_black_dahlia, anthony_russell, '').
ator(the_black_dahlia, joost_scholte, gi_pick_up).
ator(the_black_dahlia, pepe_serna, '').
atriz(the_black_dahlia, fiona_shaw, '').
ator(the_black_dahlia, joey_slotnick, '').
ator(the_black_dahlia, mike_starr, russ_millard).

filme(fall, 1997).
diretor(fall, eric_schaeffer).
ator(fall, eric_schaeffer, michael).
atriz(fall, amanda_de_cadenet, sarah).
ator(fall, rudolf_martin, phillipe).
atriz(fall, francie_swift, robin).
atriz(fall, lisa_vidal, sally).
atriz(fall, roberta_maxwell, joan_alterman).
ator(fall, jose_yenque, scasse).
ator(fall, josip_kuchan, zsarko).
atriz(fall, scarlett_johansson, little_girl).
atriz(fall, ellen_barber, woman).
ator(fall, willis_burks_ii, baja).
ator(fall, scott_cohen, derick).
ator(fall, a_j_lopez, bellboy).
ator(fall, casper_martinez, church_goer).
ator(fall, arthur_j_nascarella, anthony_the_maitre_d).
ator(fall, john_o_nelson, guy_by_window).
ator(fall, amaury_nolasco, waiter).
ator(fall, marc_sebastian, popparazi).
ator(fall, evan_thompson, priest).
ator(fall, larry_weiss, paparazzi).

filme(eight_legged_freaks, 2002).
diretor(eight_legged_freaks, ellory_elkayem).
ator(eight_legged_freaks, david_arquette, chris_mccormick).
atriz(eight_legged_freaks, kari_wuhrer, sheriff_samantha_parker).
ator(eight_legged_freaks, scott_terra, mike_parker).
atriz(eight_legged_freaks, scarlett_johansson, ashley_parker).
ator(eight_legged_freaks, doug_e_doug, harlan_griffith).
ator(eight_legged_freaks, rick_overton, deputy_pete_willis).
ator(eight_legged_freaks, leon_rippy, wade).
ator(eight_legged_freaks, matt_czuchry, bret).
ator(eight_legged_freaks, jay_arlen_jones, leon).
atriz(eight_legged_freaks, eileen_ryan, gladys).
ator(eight_legged_freaks, riley_smith, randy).
ator(eight_legged_freaks, matt_holwick, larry).
atriz(eight_legged_freaks, jane_edith_wilson, emma).
ator(eight_legged_freaks, jack_moore, amos).
ator(eight_legged_freaks, roy_gaintner, floyd).
ator(eight_legged_freaks, don_champlin, leroy).
ator(eight_legged_freaks, john_storey, mark).
ator(eight_legged_freaks, david_earl_waterman, norman).
atriz(eight_legged_freaks, randi_j_klein, waitress_1).
atriz(eight_legged_freaks, terey_summers, waitress_2).
ator(eight_legged_freaks, john_ennis, cop_1).
ator(eight_legged_freaks, ryan_c_benson, cop_2).
ator(eight_legged_freaks, bruiser, himself).
ator(eight_legged_freaks, tom_noonan, joshua_taft).

filme(ghost_world, 2000).
diretor(ghost_world, terry_zwigoff).
atriz(ghost_world, thora_birch, enid).
atriz(ghost_world, scarlett_johansson, rebecca).
ator(ghost_world, steve_buscemi, seymour).
ator(ghost_world, brad_renfro, josh).
atriz(ghost_world, illeana_douglas, roberta_allsworth).
ator(ghost_world, bob_balaban, enid_s_dad).
atriz(ghost_world, stacey_travis, dana).
ator(ghost_world, charles_c_stevenson_jr, norman).
ator(ghost_world, dave_sheridan, doug).
ator(ghost_world, tom_mcgowan, joe).
atriz(ghost_world, debra_azar, melora).
ator(ghost_world, brian_george, sidewinder_boss).
ator(ghost_world, pat_healy, john_ellis).
atriz(ghost_world, rini_bell, graduation_speaker).
ator(ghost_world, t_j_thyne, todd).
ator(ghost_world, ezra_buzzington, weird_al).
atriz(ghost_world, lindsey_girardot, vanilla__graduation_rapper).
atriz(ghost_world, joy_bisco, jade__graduation_rapper).
atriz(ghost_world, venus_demilo, ebony__graduation_rapper).
atriz(ghost_world, ashley_peldon, margaret__art_class).
ator(ghost_world, chachi_pittman, phillip__art_class).
atriz(ghost_world, janece_jordan, black_girl__art_class).
atriz(ghost_world, kaileigh_martin, snotty_girl__art_class).
ator(ghost_world, alexander_fors, hippy_boy__art_class).
ator(ghost_world, marc_vann, jerome_the_angry_guy__record_collector).
ator(ghost_world, james_sie, steven_the_asian_guy__record_collector).
ator(ghost_world, paul_keith, paul_the_fussy_guy__record_collector).
ator(ghost_world, david_cross, gerrold_the_pushy_guy__record_collector).
ator(ghost_world, j_j_bad_boy_jones, fred_chatman__blues_club).
atriz(ghost_world, dylan_jones, red_haired_girl__blues_club).
ator(ghost_world, martin_grey, m_c__blues_club).
ator(ghost_world, steve_pierson, blueshammer_member__blues_club).
ator(ghost_world, jake_la_botz, blueshammer_member__blues_club).
ator(ghost_world, johnny_irion, blueshammer_member__blues_club).
ator(ghost_world, nate_wood, blueshammer_member__blues_club).
ator(ghost_world, charles_schneider, joey_mccobb_the_stand_up_comic).
ator(ghost_world, sid_hillman, zine_o_phobia_creep).
ator(ghost_world, joshua_wheeler, zine_o_phobia_creep).
ator(ghost_world, patrick_fischler, masterpiece_video_clerk).
ator(ghost_world, daniel_graves, masterpiece_video_customer).
ator(ghost_world, matt_doherty, masterpiece_video_employee).
ator(ghost_world, joel_michaely, porno_cashier).
atriz(ghost_world, debi_derryberry, rude_coffee_customer).
ator(ghost_world, joseph_sikora, reggae_fan).
ator(ghost_world, brett_gilbert, alien_autopsy_guy).
ator(ghost_world, alex_solowitz, cineplex_manager).
ator(ghost_world, tony_ketcham, alcoholic_customer).
atriz(ghost_world, mary_bogue, popcorn_customer).
ator(ghost_world, brian_jacobs, soda_customer).
ator(ghost_world, patrick_yonally, garage_sale_hipster).
atriz(ghost_world, lauren_bowles, angry_garage_sale_woman).
atriz(ghost_world, lorna_scott, phyllis_the_art_show_curator).
ator(ghost_world, jeff_murray, roberta_s_colleague).
ator(ghost_world, jerry_rector, dana_s_co_worker).
ator(ghost_world, john_bunnell, seymour_s_boss).
atriz(ghost_world, diane_salinger, psychiatrist).
atriz(ghost_world, anna_berger, seymour_s_mother).
ator(ghost_world, bruce_glover, feldman_the_wheel_chair_guy).
atriz(ghost_world, joan_m_blair, lady_crossing_street_slowly).
ator(ghost_world, michael_chanslor, orange_colored_sky_keyboarder_graduation_band).
atriz(ghost_world, teri_garr, maxine).
ator(ghost_world, alan_heitz, driver).
ator(ghost_world, ernie_hernandez, orange_colored_sky_guitarist_graduation_band).
ator(ghost_world, felice_hernandez, orange_colored_sky_singer_graduation_band).
ator(ghost_world, larry_klein, orange_colored_sky_drummer_graduation_band).
ator(ghost_world, james_matusky, reggae_fan_2).
ator(ghost_world, edward_t_mcavoy, mr_satanist).
atriz(ghost_world, margaret_kontra_palmer, lady_at_garage_sale).
ator(ghost_world, larry_parker, orange_colored_sky_bassist_graduation_band).
ator(ghost_world, greg_wendell_reid, yuppie_1).
atriz(ghost_world, michelle_marie_white, mom_in_convenience_store).
ator(ghost_world, peter_yarrow, himself).

filme(a_good_woman, 2004).
diretor(a_good_woman, mike_barker).
atriz(a_good_woman, helen_hunt, mrs_erlynne).
atriz(a_good_woman, scarlett_johansson, meg_windermere).
atriz(a_good_woman, milena_vukotic, contessa_lucchino).
ator(a_good_woman, stephen_campbell_moore, lord_darlington).
ator(a_good_woman, mark_umbers, robert_windemere).
ator(a_good_woman, roger_hammond, cecil).
ator(a_good_woman, john_standing, dumby).
ator(a_good_woman, tom_wilkinson, tuppy).
atriz(a_good_woman, giorgia_massetti, alessandra).
atriz(a_good_woman, diana_hardcastle, lady_plymdale).
atriz(a_good_woman, shara_orano, francesca).
atriz(a_good_woman, jane_how, mrs_stutfield).
ator(a_good_woman, bruce_mcguire, waiter_joe).
ator(a_good_woman, michael_stromme, hotel_desk_clerk).
ator(a_good_woman, antonio_barbaro, paulo).
atriz(a_good_woman, valentina_d_uva, giuseppina_glove_shop_girl).
ator(a_good_woman, filippo_santoro, old_man).
ator(a_good_woman, augusto_zucchi, antique_shop_keeper).
atriz(a_good_woman, carolina_levi, dress_shop_salesgirl).
atriz(a_good_woman, daniela_stanga, dress_shop_owner).
atriz(a_good_woman, arianna_mansi, stella_s_maid_1).
atriz(a_good_woman, camilla_bertocci, stella_s_maid_2).
atriz(a_good_woman, nichola_aigner, mrs_gowper).

filme(if_lucy_fell, 1996).
diretor(if_lucy_fell, eric_schaeffer).
atriz(if_lucy_fell, sarah_jessica_parker, lucy_ackerman).
ator(if_lucy_fell, eric_schaeffer, joe_macgonaughgill).
ator(if_lucy_fell, ben_stiller, bwick_elias).
atriz(if_lucy_fell, elle_macpherson, jane_lindquist).
ator(if_lucy_fell, james_rebhorn, simon_ackerman).
ator(if_lucy_fell, robert_john_burke, handsome_man).
ator(if_lucy_fell, david_thornton, ted).
ator(if_lucy_fell, bill_sage, dick).
ator(if_lucy_fell, dominic_chianese, al).
atriz(if_lucy_fell, scarlett_johansson, emily).
ator(if_lucy_fell, michael_storms, sam).
ator(if_lucy_fell, jason_myers, billy).
atriz(if_lucy_fell, emily_hart, eddy).
ator(if_lucy_fell, paul_greco, rene).
ator(if_lucy_fell, mujibur_rahman, counterman).
ator(if_lucy_fell, sirajul_islam, counterman).
ator(if_lucy_fell, ben_lin, chinese_messenger).
atriz(if_lucy_fell, alice_spivak, elegant_middle_aged_woman).
atriz(if_lucy_fell, lisa_gerstein, saleswoman).
atriz(if_lucy_fell, molly_schulman, kid).
ator(if_lucy_fell, peter_walker, bag_man).
ator(if_lucy_fell, bradley_jenkel, neighbor).
ator(if_lucy_fell, brian_keane, man_in_gallery).
atriz(if_lucy_fell, amanda_kravat, woman_in_park).

filme(home_alone_3, 1997).
diretor(home_alone_3, raja_gosnell).
ator(home_alone_3, alex_d_linz, alex_pruitt).
ator(home_alone_3, olek_krupa, peter_beaupre).
atriz(home_alone_3, rya_kihlstedt, alice_ribbons).
ator(home_alone_3, lenny_von_dohlen, burton_jernigan).
ator(home_alone_3, david_thornton, earl_unger).
atriz(home_alone_3, haviland_morris, karen_pruitt).
ator(home_alone_3, kevin_kilner, jack_pruitt).
atriz(home_alone_3, marian_seldes, mrs_hess).
ator(home_alone_3, seth_smith, stan_pruitt).
atriz(home_alone_3, scarlett_johansson, molly_pruitt).
ator(home_alone_3, christopher_curry, agent_stuckey).
ator(home_alone_3, baxter_harris, police_captain).
ator(home_alone_3, james_saito, chinese_mob_boss).
ator(home_alone_3, kevin_gudahl, techie).
ator(home_alone_3, richard_hamilton, taxi_driver).
ator(home_alone_3, freeman_coffey, recruiting_officer).
atriz(home_alone_3, krista_lally, dispatcher).
ator(home_alone_3, neil_flynn, police_officer_1).
ator(home_alone_3, tony_mockus_jr, police_officer_2).
ator(home_alone_3, pat_healy, agent_rogers).
ator(home_alone_3, james_chisem, police_officer_3).
ator(home_alone_3, darwin_harris, photographer).
atriz(home_alone_3, adrianne_duncan, flight_attendant).
atriz(home_alone_3, sharon_sachs, annoying_woman).
ator(home_alone_3, joseph_luis_caballero, security_guard).
ator(home_alone_3, larry_c_tankson, cart_driver).
atriz(home_alone_3, jennifer_a_daley, police_photographer_2).
ator(home_alone_3, darren_t_knaus, parrot).
atriz(home_alone_3, caryn_cheever, ticketing_agent).
atriz(home_alone_3, sarah_godshaw, latchkey_girl).
ator(home_alone_3, andy_john_g_kalkounos, police_officer_1).
ator(home_alone_3, zachary_lee, johnny_allen).
atriz(home_alone_3, kelly_ann_marquart, girl_on_sidewalk).

filme(the_horse_whisperer, 1998).
diretor(the_horse_whisperer, robert_redford).
ator(the_horse_whisperer, robert_redford, tom_booker).
atriz(the_horse_whisperer, kristin_scott_thomas, annie_maclean).
ator(the_horse_whisperer, sam_neill, robert_maclean).
atriz(the_horse_whisperer, dianne_wiest, diane_booker).
atriz(the_horse_whisperer, scarlett_johansson, grace_maclean).
ator(the_horse_whisperer, chris_cooper, frank_booker).
atriz(the_horse_whisperer, cherry_jones, liz_hammond).
ator(the_horse_whisperer, ty_hillman, joe_booker).
atriz(the_horse_whisperer, kate_bosworth, judith).
ator(the_horse_whisperer, austin_schwarz, twin_1).
ator(the_horse_whisperer, dustin_schwarz, twin_2).
atriz(the_horse_whisperer, jeanette_nolan, ellen_booker).
ator(the_horse_whisperer, steve_frye, hank).
ator(the_horse_whisperer, don_edwards, smokey).
atriz(the_horse_whisperer, jessalyn_gilsig, lucy_annie_s_assistant).
ator(the_horse_whisperer, william_buddy_byrd, lester_petersen).
ator(the_horse_whisperer, john_hogarty, local_tracker).
ator(the_horse_whisperer, michel_lalonde, park_ranger).
ator(the_horse_whisperer, c_j_byrnes, doctor).
atriz(the_horse_whisperer, kathy_baldwin_keenan, nurse_1).
atriz(the_horse_whisperer, allison_moorer, barn_dance_vocalist).
ator(the_horse_whisperer, george_a_sack_jr, truck_driver).
atriz(the_horse_whisperer, kellee_sweeney, nurse_2).
ator(the_horse_whisperer, stephen_pearlman, david_gottschalk).
atriz(the_horse_whisperer, joelle_carter, office_worker_1).
atriz(the_horse_whisperer, sunny_chae, office_worker_2).
atriz(the_horse_whisperer, anne_joyce, office_worker_3).
atriz(the_horse_whisperer, tara_sobeck, schoolgirl_1).
atriz(the_horse_whisperer, kristy_ann_servidio, schoolgirl_2).
atriz(the_horse_whisperer, marie_engle, neighbor).
ator(the_horse_whisperer, curt_pate, handsome_cowboy).
ator(the_horse_whisperer, steven_brian_conard, ranch_hand).
atriz(the_horse_whisperer, tammy_pate, roper).
atriz(the_horse_whisperer, gloria_lynne_henry, member_of_magazine_staff).
ator(the_horse_whisperer, lance_r_jones, ranch_hand).
ator(the_horse_whisperer, donnie_saylor, rugged_cowboy).
ator(the_horse_whisperer, george_strait, himself).

filme(in_good_company, 2004).
diretor(in_good_company, paul_weitz).
ator(in_good_company, dennis_quaid, dan_foreman).
ator(in_good_company, topher_grace, carter_duryea).
atriz(in_good_company, scarlett_johansson, alex_foreman).
atriz(in_good_company, marg_helgenberger, ann_foreman).
ator(in_good_company, david_paymer, morty).
ator(in_good_company, clark_gregg, mark_steckle).
ator(in_good_company, philip_baker_hall, eugene_kalb).
atriz(in_good_company, selma_blair, kimberly).
ator(in_good_company, frankie_faison, corwin).
ator(in_good_company, ty_burrell, enrique_colon).
ator(in_good_company, kevin_chapman, lou).
atriz(in_good_company, amy_aquino, alicia).
atriz(in_good_company, zena_grey, jana_foreman).
atriz(in_good_company, colleen_camp, receptionist).
atriz(in_good_company, lauren_tom, obstetrician).
ator(in_good_company, ron_bottitta, porsche_dealer).
ator(in_good_company, jon_collin, waiter).
ator(in_good_company, shishir_kurup, maitre_d).
ator(in_good_company, tim_edward_rhoze, theo).
ator(in_good_company, enrique_castillo, hector).
ator(in_good_company, john_cho, petey).
ator(in_good_company, chris_ausnit, young_executive).
atriz(in_good_company, francesca_roberts, loan_officer).
ator(in_good_company, gregory_north, lawyer).
ator(in_good_company, gregory_hinton, moving_man).
ator(in_good_company, todd_lyon, moving_man).
ator(in_good_company, thomas_j_dooley, moving_man).
ator(in_good_company, robin_t_kirksey, basketball_ringer).
atriz(in_good_company, katherine_ellis, maya__roommate).
ator(in_good_company, nick_schutt, carter_s_assistant).
ator(in_good_company, john_kepley, salesman).
ator(in_good_company, mobin_khan, salesman).
atriz(in_good_company, jeanne_kort, saleswoman).
ator(in_good_company, dean_a_parker, mike).
ator(in_good_company, richard_hotson, fired_employee).
atriz(in_good_company, shar_washington, fired_employee).
atriz(in_good_company, rebecca_hedrick, teddy_k_s_assistant).
ator(in_good_company, miguel_arteta, globecom_technician).
ator(in_good_company, sam_tippe, kid_at_party).
atriz(in_good_company, roma_torre, anchorwoman).
ator(in_good_company, andre_cablayan, legally_dedd).
ator(in_good_company, dante_powell, legally_dedd).
atriz(in_good_company, michalina_almindo, hector_s_date).
ator(in_good_company, bennett_andrews, greensman).
atriz(in_good_company, claudia_barroso, bar_patron).
atriz(in_good_company, jaclynn_tiffany_brown, basketball_player).
ator(in_good_company, malcolm_mcdowell, teddy_k__globecom_ceo).
ator(in_good_company, scott_sahadi, moving_man).
atriz(in_good_company, loretta_shenosky, kalb_s_assistant).
ator(in_good_company, trevor_stynes, man_on_street).

filme(just_cause, 1995).
diretor(just_cause, arne_glimcher).
ator(just_cause, sean_connery, paul_armstrong).
ator(just_cause, laurence_fishburne, sheriff_tanny_brown).
atriz(just_cause, kate_capshaw, laurie_armstrong).
ator(just_cause, blair_underwood, bobby_earl).
ator(just_cause, ed_harris, blair_sullivan).
ator(just_cause, christopher_murray, detective_t_j_wilcox).
atriz(just_cause, ruby_dee, evangeline).
atriz(just_cause, scarlett_johansson, kate_armstrong).
ator(just_cause, daniel_j_travanti, warden).
ator(just_cause, ned_beatty, mcnair).
atriz(just_cause, liz_torres, delores_rodriguez).
atriz(just_cause, lynne_thigpen, ida_conklin).
atriz(just_cause, taral_hicks, lena_brown).
ator(just_cause, victor_slezak, sgt_rogers).
ator(just_cause, kevin_mccarthy, phil_prentiss).
atriz(just_cause, hope_lange, libby_prentiss).
ator(just_cause, chris_sarandon, lyle_morgan).
ator(just_cause, george_plimpton, elder_phillips).
atriz(just_cause, brooke_alderson, dr_doliveau).
atriz(just_cause, colleen_fitzpatrick, prosecutor).
ator(just_cause, richard_liberty, chaplin).
ator(just_cause, joel_s_ehrenkranz, judge).
atriz(just_cause, barbara_jean_kane, joanie_shriver).
ator(just_cause, maurice_jamaal_brown, reese_brown).
ator(just_cause, patrick_maycock, kid_washing_car_1).
ator(just_cause, jordan_f_vaughn, kid_washing_car_2).
ator(just_cause, francisco_paz, concierge).
atriz(just_cause, marie_hyman, clerk).
ator(just_cause, s_bruce_wilson, party_guest).
ator(just_cause, erik_stephan, student).
atriz(just_cause, melanie_hughes, receptionist).
atriz(just_cause, megan_meinardus, slumber_party_girl).
atriz(just_cause, melissa_hood_julien, slumber_party_girl).
atriz(just_cause, jenna_del_buono, slumber_party_girl).
atriz(just_cause, ashley_popelka, slumber_party_girl).
atriz(just_cause, marisa_perry, slumber_party_girl).
atriz(just_cause, ashley_council, slumber_party_girl).
atriz(just_cause, augusta_lundsgaard, slumber_party_girl).
atriz(just_cause, connie_lee_brown, prison_guard).
ator(just_cause, clarence_lark_iii, prison_guard).
ator(just_cause, monte_st_james, prisoner).
ator(just_cause, gary_landon_mills, prisoner).
ator(just_cause, shareef_malnik, prisoner).
ator(just_cause, tony_bolano, prisoner).
ator(just_cause, angelo_maldonado, prisoner).
ator(just_cause, fausto_rodriguez, prisoner).
atriz(just_cause, karen_leeds, reporter).
ator(just_cause, dan_romero, reporter).
ator(just_cause, donn_lamkin, reporter).
atriz(just_cause, stacie_a_zinn, reporter).
atriz(just_cause, kylie_delre, woman_in_courtroom).
atriz(just_cause, deborah_smith_ford, medical_examiner).
ator(just_cause, patrick_fullerton, reporter).
ator(just_cause, jody_millard, prison_guard).
ator(just_cause, michael_sassano, courtroom_observer).
ator(just_cause, rene_teboe, man_in_bus_terminal).

filme(the_island, 2005).
diretor(the_island, michael_bay).
ator(the_island, ewan_mcgregor, lincoln_six_echo_tom_lincoln).
atriz(the_island, scarlett_johansson, jordan_two_delta_sarah_jordan).
ator(the_island, djimon_hounsou, albert_laurent).
ator(the_island, sean_bean, merrick).
ator(the_island, steve_buscemi, mccord).
ator(the_island, michael_clarke_duncan, starkweather).
ator(the_island, ethan_phillips, jones_three_echo).
ator(the_island, brian_stepanek, gandu_three_echo).
atriz(the_island, noa_tishby, community_announcer).
atriz(the_island, siobhan_flynn, lima_one_alpha).
ator(the_island, troy_blendell, laurent_team_member).
ator(the_island, jamie_mcbride, laurent_team_member).
ator(the_island, kevin_mccorkle, laurent_team_member).
ator(the_island, gary_nickens, laurent_team_member).
atriz(the_island, kathleen_rose_perkins, laurent_team_member).
ator(the_island, richard_whiten, laurent_team_member).
ator(the_island, max_baker, carnes).
ator(the_island, phil_abrams, harvest_doctor).
atriz(the_island, svetlana_efremova, harvest_midwife).
atriz(the_island, katy_boyer, harvest_surgeon).
ator(the_island, randy_oglesby, harvest_surgeon).
atriz(the_island, yvette_nicole_brown, harvest_nurse).
atriz(the_island, taylor_gilbert, harvest_nurse).
atriz(the_island, wendy_haines, harvest_nurse).
ator(the_island, tim_halligan, institute_coroner).
ator(the_island, glenn_morshower, medical_courier).
ator(the_island, michael_canavan, extraction_room_doctor).
ator(the_island, jimmy_smagula, extraction_room_technician).
ator(the_island, ben_tolpin, extraction_room_technician).
ator(the_island, robert_sherman, agnate_in_pod).
ator(the_island, rich_hutchman, dept_of_operations_supervisor).
ator(the_island, gonzalo_menendez, dept_of_operations_technician).
atriz(the_island, olivia_tracey, dept_of_operations_agnate).
ator(the_island, ray_xifo, elevator_agnate).
atriz(the_island, mary_pat_gleason, nutrition_clerk).
atriz(the_island, ashley_yegan, stim_bar_bartender).
atriz(the_island, whitney_dylan, client_services_operator).
atriz(the_island, mitzi_martin, atrium_tour_guide).
ator(the_island, lewis_dauber, tour_group_man).
atriz(the_island, shelby_leverington, tour_group_woman).
ator(the_island, don_creech, god_like_man).
ator(the_island, richard_v_licata, board_member).
ator(the_island, eamon_behrens, censor).
ator(the_island, alex_carter, censor).
ator(the_island, kevin_daniels, censor).
ator(the_island, grant_garrison, censor).
ator(the_island, kenneth_hughes, censor).
ator(the_island, brian_leckner, censor).
ator(the_island, dakota_mitchell, censor).
ator(the_island, marty_papazian, censor).
ator(the_island, phil_somerville, censor).
ator(the_island, ryan_tasz, censor).
ator(the_island, kirk_ward, censor).
ator(the_island, kelvin_han_yee, censor).
atriz(the_island, shawnee_smith, suzie).
ator(the_island, chris_ellis, aces__spades_bartender).
ator(the_island, don_michael_paul, bar_guy).
ator(the_island, eric_stonestreet, ed_the_trucker).
ator(the_island, james_granoff, sarah_s_son).
ator(the_island, james_hart, lapd_officer).
ator(the_island, craig_reynolds, lapd_officer).
ator(the_island, trent_ford, calvin_klein_model).
atriz(the_island, sage_thomas, girl_at_beach).
ator(the_island, mark_christopher_lawrence, construction_worker).
atriz(the_island, jenae_altschwager, kim).
ator(the_island, john_anton, clone).
atriz(the_island, mary_castro, busty_dancer_in_bar).
ator(the_island, kim_coates, charles_whitman).
ator(the_island, tom_everett, the_president).
ator(the_island, mitch_haubert, censor_doctor).
ator(the_island, robert_isaac, agnate).
ator(the_island, j_p_manoux, seven_foxtrot).
atriz(the_island, jennifer_secord, patron).
ator(the_island, mckay_stewart, falling_building_dodger).
ator(the_island, skyler_stone, sarah_jordan_s_husband).
ator(the_island, richard_john_walters, agnate).

filme(a_love_song_for_bobby_long, 2004).
diretor(a_love_song_for_bobby_long, shainee_gabel).
ator(a_love_song_for_bobby_long, john_travolta, bobby_long).
atriz(a_love_song_for_bobby_long, scarlett_johansson, pursy_will).
ator(a_love_song_for_bobby_long, gabriel_macht, lawson_pines).
atriz(a_love_song_for_bobby_long, deborah_kara_unger, georgianna).
ator(a_love_song_for_bobby_long, dane_rhodes, cecil).
ator(a_love_song_for_bobby_long, david_jensen, junior).
ator(a_love_song_for_bobby_long, clayne_crawford, lee).
ator(a_love_song_for_bobby_long, sonny_shroyer, earl).
ator(a_love_song_for_bobby_long, walter_breaux, ray).
atriz(a_love_song_for_bobby_long, carol_sutton, ruthie).
ator(a_love_song_for_bobby_long, warren_kole, sean).
ator(a_love_song_for_bobby_long, bernard_johnson, tiny).
atriz(a_love_song_for_bobby_long, gina_ginger_bernal, waitress).
ator(a_love_song_for_bobby_long, douglas_m_griffin, man_1).
ator(a_love_song_for_bobby_long, earl_maddox, man_2).
ator(a_love_song_for_bobby_long, steve_maye, man_3).
ator(a_love_song_for_bobby_long, don_brady, old_man).
ator(a_love_song_for_bobby_long, will_barnett, old_man_2).
ator(a_love_song_for_bobby_long, patrick_mccullough, streetcar_boy).
atriz(a_love_song_for_bobby_long, leanne_cochran, streetcar_girl).
ator(a_love_song_for_bobby_long, nick_loren, merchant).
atriz(a_love_song_for_bobby_long, brooke_allen, sandy).
ator(a_love_song_for_bobby_long, sal_sapienza, jazz_club_patron).
ator(a_love_song_for_bobby_long, doc_whitney, alcoholic).

filme(manny__lo, 1996).
diretor(manny__lo, lisa_krueger).
atriz(manny__lo, mary_kay_place, elaine).
atriz(manny__lo, scarlett_johansson, amanda).
atriz(manny__lo, aleksa_palladino, laurel).
ator(manny__lo, dean_silvers, suburban_family).
atriz(manny__lo, marlen_hecht, suburban_family).
ator(manny__lo, forrest_silvers, suburban_family).
ator(manny__lo, tyler_silvers, suburban_family).
atriz(manny__lo, lisa_campion, convenience_store_clerk).
ator(manny__lo, glenn_fitzgerald, joey).
atriz(manny__lo, novella_nelson, georgine).
atriz(manny__lo, susan_decker, baby_store_customer_1).
atriz(manny__lo, marla_zuk, baby_store_customer_2).
atriz(manny__lo, bonnie_johnson, baby_store_customer_3).
atriz(manny__lo, melissa_johnson, child).
atriz(manny__lo, angie_phillips, connie).
ator(manny__lo, cameron_boyd, chuck).
atriz(manny__lo, monica_smith, chuck_s_mom).
atriz(manny__lo, melanie_johansson, golf_course_family).
ator(manny__lo, karsten_johansson, golf_course_family).
ator(manny__lo, hunter_johansson, golf_course_family).
atriz(manny__lo, vanessa_johansson, golf_course_family).
ator(manny__lo, frank_green_jr, other_golfer).
atriz(manny__lo, shelley_dee_green, other_golfer).
ator(manny__lo, david_destaebler, golf_course_cop).
ator(manny__lo, mark_palmieri, golf_course_cop).
ator(manny__lo, paul_guilfoyle, country_house_owner).
ator(manny__lo, tony_arnaud, sheriff).
ator(manny__lo, nicholas_lent, lo_s_baby).

filme(match_point, 2005).
diretor(match_point, woody_allen).
atriz(match_point, scarlett_johansson, nola_rice).
ator(match_point, jonathan_rhys_meyers, chris_wilton).
atriz(match_point, emily_mortimer, chloe_hewett_wilton).
ator(match_point, matthew_goode, tom_hewett).
ator(match_point, brian_cox, alec_hewett).
atriz(match_point, penelope_wilton, eleanor_hewett).
ator(match_point, layke_anderson, youth_at_palace_theatre).
ator(match_point, alexander_armstrong, '').
ator(match_point, morne_botes, michael).
atriz(match_point, rose_keegan, carol).
ator(match_point, eddie_marsan, reeves).
ator(match_point, james_nesbitt, '').
ator(match_point, steve_pemberton, di_parry).
atriz(match_point, miranda_raison, heather).
ator(match_point, colin_salmon, '').
atriz(match_point, zoe_telford, samantha).

filme(my_brother_the_pig, 1999).
diretor(my_brother_the_pig, erik_fleming).
ator(my_brother_the_pig, nick_fuoco, george_caldwell).
atriz(my_brother_the_pig, scarlett_johansson, kathy_caldwell).
ator(my_brother_the_pig, judge_reinhold, richard_caldwell).
atriz(my_brother_the_pig, romy_windsor, dee_dee_caldwell).
atriz(my_brother_the_pig, eva_mendes, matilda).
ator(my_brother_the_pig, alex_d_linz, freud).
ator(my_brother_the_pig, paul_renteria, border_guard).
atriz(my_brother_the_pig, renee_victor, grandma_berta).
atriz(my_brother_the_pig, cambria_gonzalez, mercedes).
atriz(my_brother_the_pig, nicole_zarate, annie).
ator(my_brother_the_pig, eduardo_antonio_garcia, luis).
atriz(my_brother_the_pig, siri_baruc, tourist_girl).
ator(my_brother_the_pig, charlie_combes, tourist_dad).
atriz(my_brother_the_pig, dee_ann_johnston, tourist_mom).
ator(my_brother_the_pig, marco_rodriguez, eduardo).
ator(my_brother_the_pig, rob_johnston, taxi_driver).
ator(my_brother_the_pig, dee_bradley_baker, pig_george).

filme(north, 1994).
diretor(north, rob_reiner).
ator(north, elijah_wood, north).
ator(north, jason_alexander, north_s_dad).
atriz(north, julia_louis_dreyfus, north_s_mom).
ator(north, marc_shaiman, piano_player).
ator(north, jussie_smollett, adam).
atriz(north, taylor_fry, zoe).
atriz(north, alana_austin, sarah).
atriz(north, peg_shirley, teacher).
ator(north, chuck_cooper, umpire).
ator(north, alan_zweibel, coach).
ator(north, donavon_dietz, assistant_coach).
ator(north, teddy_bergman, teammate).
ator(north, michael_cipriani, teammate).
ator(north, joran_corneal, teammate).
ator(north, joshua_kaplan, teammate).
ator(north, bruce_willis, narrator).
ator(north, james_f_dean, dad_smith).
ator(north, glenn_walker_harris_jr, jeffrey_smith).
atriz(north, nancy_nichols, mom_jones).
ator(north, ryan_o_neill, andy_wilson).
ator(north, kim_delgado, dad_johnson).
ator(north, tony_t_johnson, steve_johnson).
ator(north, matthew_mccurley, winchell).
atriz(north, carmela_rappazzo, receptionist).
ator(north, jordan_jacobson, vice_president).
atriz(north, rafale_yermazyan, austrian_dancer).
ator(north, jon_lovitz, arthur_belt).
ator(north, mitchell_group, dad_wilson).
atriz(north, pamela_harley, reporter).
ator(north, glenn_kubota, reporter).
ator(north, matthew_arkin, reporter).
ator(north, marc_coppola, reporter).
atriz(north, colette_bryce, reporter).
ator(north, bryon_stewart, bailiff).
ator(north, alan_arkin, judge_buckle).
ator(north, alan_rachins, defense_attorney).
atriz(north, abbe_levin, operator).
atriz(north, lola_pashalinski, operator).
atriz(north, kimberly_topper, operator).
atriz(north, c_c_loveheart, operator).
atriz(north, helen_hanft, operator).
atriz(north, carol_honda, operator).
atriz(north, peggy_gormley, operator).
atriz(north, lillias_white, operator).
ator(north, dan_aykroyd, pa_tex).
atriz(north, reba_mcentire, ma_tex).
ator(north, mark_meismer, texas_dancer).
atriz(north, danielle_burgio, texas_dancer).
ator(north, bryan_anthony, texas_dancer).
atriz(north, carmit_bachar, texas_dancer).
ator(north, james_harkness, texas_dancer).
atriz(north, krista_buonauro, texas_dancer).
ator(north, brett_heine, texas_dancer).
atriz(north, kelly_cooper, texas_dancer).
ator(north, chad_e_allen, texas_dancer).
atriz(north, stefanie_roos, texas_dancer).
ator(north, donovan_keith_hesser, texas_dancer).
atriz(north, jenifer_strovas, texas_dancer).
ator(north, christopher_d_childers, texas_dancer).
ator(north, sebastian_lacause, texas_dancer).
atriz(north, lydia_e_merritt, texas_dancer).
ator(north, greg_rosatti, texas_dancer).
atriz(north, kelly_shenefiel, texas_dancer).
atriz(north, jenifer_panton, betty_lou).
ator(north, keone_young, governor_ho).
atriz(north, lauren_tom, mrs_ho).
ator(north, gil_janklowicz, man_on_beach).
atriz(north, maud_winchester, stewart_s_mom).
ator(north, tyler_gurciullo, stewart).
ator(north, fritz_sperberg, stewart_s_dad).
atriz(north, brynn_hartman, waitress).
ator(north, larry_b_williams, alaskan_pilot).
ator(north, graham_greene, alaskan_dad).
atriz(north, kathy_bates, alaskan_mom).
ator(north, abe_vigoda, alaskan_grandpa).
ator(north, richard_belzer, barker).
ator(north, monty_bass, eskimo).
ator(north, farrell_thomas, eskimo).
ator(north, billy_daydoge, eskimo).
ator(north, henri_towers, eskimo).
atriz(north, caroline_carr, eskimo).
atriz(north, eva_larson, eskimo).
ator(north, ben_stein, curator).
atriz(north, marla_frees, d_c_reporter).
ator(north, robert_rigamonti, d_c_reporter).
ator(north, alexander_godunov, amish_dad).
atriz(north, kelly_mcgillis, amish_mom).
ator(north, jay_black, amish_pilot).
atriz(north, rosalind_chao, chinese_mom).
ator(north, george_cheung, chinese_barber).
ator(north, ayo_adejugbe, african_dad).
atriz(north, darwyn_carson, african_mom).
atriz(north, lucy_lin, female_newscaster).
atriz(north, faith_ford, donna_nelson).
ator(north, john_ritter, ward_nelson).
atriz(north, scarlett_johansson, laura_nelson).
ator(north, jesse_zeigler, bud_nelson).
ator(north, robert_costanzo, al).
atriz(north, audrey_klebahn, secretary).
ator(north, philip_levy, panhandler).
ator(north, dan_grimaldi, hot_dog_vendor).
ator(north, marvin_braverman, waiter).
atriz(north, wendle_josepher, ticket_agent).
ator(north, adam_zweibel, kid_in_airport).
ator(north, matthew_horn, kid_in_airport).
atriz(north, sarah_martineck, kid_in_airport).
ator(north, brian_levinson, kid_in_airport).
ator(north, d_l_shroder, federal_express_agent).
ator(north, brother_douglas, new_york_city_pimp).
ator(north, nick_taylor, newsman).
ator(north, jim_great_elk_waters, eskimo_father).
ator(north, michael_werckle, amish_boy).

filme(the_perfect_score, 2004).
diretor(the_perfect_score, brian_robbins).
atriz(the_perfect_score, erika_christensen, anna_ross).
ator(the_perfect_score, chris_evans, kyle).
ator(the_perfect_score, bryan_greenberg, matty_matthews).
atriz(the_perfect_score, scarlett_johansson, francesca_curtis).
ator(the_perfect_score, darius_miles, desmond_rhodes).
ator(the_perfect_score, leonardo_nam, roy).
atriz(the_perfect_score, tyra_ferrell, desmond_s_mother).
ator(the_perfect_score, matthew_lillard, larry).
atriz(the_perfect_score, vanessa_angel, anita_donlee).
ator(the_perfect_score, bill_mackenzie, lobby_guard).
ator(the_perfect_score, dan_zukovic, mr_g).
atriz(the_perfect_score, iris_quinn, kyle_s_mother).
atriz(the_perfect_score, lorena_gale, proctor).
atriz(the_perfect_score, patricia_idlette, receptionist).
atriz(the_perfect_score, lynda_boyd, anna_s_mother).
ator(the_perfect_score, michael_ryan, anna_s_father).
ator(the_perfect_score, robert_clarke, arnie_branch).
ator(the_perfect_score, serge_houde, kurt_dooling).
ator(the_perfect_score, kyle_labine, dave).
ator(the_perfect_score, dee_jay_jackson, ets_lobby_guard).
ator(the_perfect_score, alf_humphreys, tom_helton).
ator(the_perfect_score, fulvio_cecere, francesca_s_father).
ator(the_perfect_score, mike_jarvis, illinois_coach).
ator(the_perfect_score, steve_makaj, kyle_s_father).
ator(the_perfect_score, kurt_max_runte, swat_captain).
ator(the_perfect_score, jay_brazeau, test_instructor).
atriz(the_perfect_score, rebecca_reichert, tiffany).
atriz(the_perfect_score, jessica_may, ets_woman).
atriz(the_perfect_score, miriam_smith, ets_reception).
ator(the_perfect_score, alex_green, security_guard).
ator(the_perfect_score, samuel_scantlebury, keyon).
atriz(the_perfect_score, sonja_bennett, pregnant_girl).
atriz(the_perfect_score, sarah_afful, girl).
ator(the_perfect_score, alex_corr, preppy_boy).
ator(the_perfect_score, nikolas_malenovic, boy).
ator(the_perfect_score, john_shaw, ets_man).
ator(the_perfect_score, jamie_yochlowitz, man_in_jail).
ator(the_perfect_score, rob_boyce, guard).
ator(the_perfect_score, paul_campbell, guy_in_truck).

filme(the_spongebob_squarepants_filme, 2004).
diretor(the_spongebob_squarepants_filme, stephen_hillenburg).
ator(the_spongebob_squarepants_filme, tom_kenny, spongebob_narrator_gary_clay_tough_fish_2_twin_2_houston_voice).
ator(the_spongebob_squarepants_filme, clancy_brown, mr_krabs).
ator(the_spongebob_squarepants_filme, rodger_bumpass, squidward_fish_4).
ator(the_spongebob_squarepants_filme, bill_fagerbakke, patrick_star_fish_2_chum_customer_local_fish).
ator(the_spongebob_squarepants_filme, mr_lawrence, plankton_fish_7_attendant_2_lloyd).
atriz(the_spongebob_squarepants_filme, jill_talley, karen_the_computer_wife_old_lady).
atriz(the_spongebob_squarepants_filme, carolyn_lawrence, sandy).
atriz(the_spongebob_squarepants_filme, mary_jo_catlett, mrs_puff).
ator(the_spongebob_squarepants_filme, jeffrey_tambor, king_neptune).
atriz(the_spongebob_squarepants_filme, scarlett_johansson, mindy).
ator(the_spongebob_squarepants_filme, alec_baldwin, dennis).
ator(the_spongebob_squarepants_filme, david_hasselhoff, himself).
ator(the_spongebob_squarepants_filme, kristopher_logan, squinty_the_pirate).
ator(the_spongebob_squarepants_filme, d_p_fitzgerald, bonesy_the_pirate).
ator(the_spongebob_squarepants_filme, cole_s_mckay, scruffy_the_pirate).
ator(the_spongebob_squarepants_filme, dylan_haggerty, stitches_the_pirate).
ator(the_spongebob_squarepants_filme, bart_mccarthy, captain_bart_the_pirate).
ator(the_spongebob_squarepants_filme, henry_kingi, inky_the_pirate).
ator(the_spongebob_squarepants_filme, randolph_jones, tiny_the_pirate).
ator(the_spongebob_squarepants_filme, paul_zies, upper_deck_the_pirate).
ator(the_spongebob_squarepants_filme, gerard_griesbaum, fingers_the_pirate).
ator(the_spongebob_squarepants_filme, aaron_hendry, tangles_the_pirate_cyclops_diver).
ator(the_spongebob_squarepants_filme, maxie_j_santillan_jr, gummy_the_pirate).
ator(the_spongebob_squarepants_filme, peter_deyoung, leatherbeard_the_pirate).
ator(the_spongebob_squarepants_filme, gino_montesinos, tango_the_pirate).
ator(the_spongebob_squarepants_filme, john_siciliano, pokey_the_pirate).
ator(the_spongebob_squarepants_filme, david_stifel, cookie_the_pirate).
ator(the_spongebob_squarepants_filme, alex_baker, martin_the_pirate).
ator(the_spongebob_squarepants_filme, robin_russell, sniffy_the_pirate).
ator(the_spongebob_squarepants_filme, tommy_schooler, salty_the_pirate).
ator(the_spongebob_squarepants_filme, ben_wilson, stovepipe_the_pirate).
ator(the_spongebob_squarepants_filme, jose_zelaya, dooby_the_pirate).
atriz(the_spongebob_squarepants_filme, mageina_tovah, usher).
ator(the_spongebob_squarepants_filme, chris_cummins, concession_guy).
ator(the_spongebob_squarepants_filme, todd_duffey, concession_guy).
ator(the_spongebob_squarepants_filme, dee_bradley_baker, man_cop_phil_perch_perkins_waiter_attendant_1_thug_1_coughing_fish_twin_1_frog_fish_monster_freed_fish_sandals).
atriz(the_spongebob_squarepants_filme, sirena_irwin, reporter_driver_ice_cream_lady).
atriz(the_spongebob_squarepants_filme, lori_alan, pearl).
ator(the_spongebob_squarepants_filme, thomas_f_wilson, fish_3_tough_fish_1_victor).
ator(the_spongebob_squarepants_filme, carlos_alazraqui, squire_goofy_goober_announcer_thief).
ator(the_spongebob_squarepants_filme, joshua_seth, prisoner).
ator(the_spongebob_squarepants_filme, tim_blaney, singing_goofy_goober).
ator(the_spongebob_squarepants_filme, derek_drymon, the_screamer_fisherman).
ator(the_spongebob_squarepants_filme, aaron_springer, laughing_bubble).
ator(the_spongebob_squarepants_filme, neil_ross, cyclops).
ator(the_spongebob_squarepants_filme, stephen_hillenburg, parrot).
ator(the_spongebob_squarepants_filme, michael_patrick_bell, fisherman).
ator(the_spongebob_squarepants_filme, jim_wise, goofy_goober_rock_singer).

filme(untitled_woody_allen_fall_project_2006, 2006).
diretor(untitled_woody_allen_fall_project_2006, woody_allen).
ator(untitled_woody_allen_fall_project_2006, woody_allen, '').
ator(untitled_woody_allen_fall_project_2006, jody_halse, bouncer).
ator(untitled_woody_allen_fall_project_2006, hugh_jackman, '').
atriz(untitled_woody_allen_fall_project_2006, scarlett_johansson, '').
ator(untitled_woody_allen_fall_project_2006, robyn_kerr, '').
ator(untitled_woody_allen_fall_project_2006, kevin_mcnally, mike_tinsley).
ator(untitled_woody_allen_fall_project_2006, ian_mcshane, '').
ator(untitled_woody_allen_fall_project_2006, james_nesbitt, '').
ator(untitled_woody_allen_fall_project_2006, colin_salmon, '').

filme(a_view_from_the_bridge, 2006).
atriz(a_view_from_the_bridge, scarlett_johansson, catherine).
ator(a_view_from_the_bridge, anthony_lapaglia, eddie_carbone).

