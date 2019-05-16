function [y1] = NN_VBSBAT_layers24_meanProp_v1(x1)
%NN_VBSBAT_LAYERS24 neural network simulation function.
%
% Auto-generated by MATLAB, 19-Jan-2019 09:50:50.
% 
% [y1] = NN_VBSBAT_layers24(x1) takes these arguments:
%   x = 25xQ matrix, input #1
% and returns:
%   y = 11xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [5.14132383745752e-06;4.89637397879498e-06;5.80162493528758e-07;2.95364001924296e-07;4.32598078267262e-06;1.67978516819257e-06;1.24497078469185e-05;4.39073081445121e-06;2.39305691128304e-06;1.97301568142876e-06;4.24461800159096e-06;8.36273839792123e-05;100.007068251723;0;0;0;0;0;0;0;0;0;0;0;0.0001523823178952];
x1_step1.gain = [0.0248042630032475;0.0212970992435989;0.0224274604084639;0.0216163279730923;0.0245070948853794;0.0217008662802698;0.0220746794540292;0.0231146209124722;0.0203781717398428;0.0214095713681522;0.0226987593701946;1.33346837480348;0.00400019955479363;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.69149161433446;2.10567188442062];
x1_step1.ymin = -1;

% Layer 1
b1 = [153.91189216472466228;37.598167617401678342;19.976581022213906635;-1.7177953291186378593;255.70641450253722837;16.712681846021769871;160.25738502998774493;-1097.5055002694086852;218.84243894207244807;-1.949593979475108485;-4.3907442835791510305;-22.536695578930974193;-160.65964375796718855;20.200882625015854188;-0.046471187120662379999;-100.20325211156054479;1074.7939862792729855;1.7428738478538110535;-22.445747625446511364;-214.98129053220392848;-0.0040183251866944217495;-160.92706949746491318;211.08630083959482704;0.018856332142327361656];
IW1_1 = [19.5647358422482327 20.808097171146286541 19.043585582161384195 25.429817224634216899 14.516960487190651463 18.269010051470957023 17.248075630084734655 8.8085234906337568361 3.2453424753887332166 7.4469677585413798226 -1.9407265046216657378 -0.1110251745933312495 -0.015721530630441134246 -0.3681844585378175605 -0.39180975398157424916 -0.44952384171594084172 -0.20090619488272715154 0.10522888467058501283 -0.52304828735787467497 0.60189440879513078642 0.26655443503814252315 0.048526833840743771598 0.53353536755343422548 0.19322995471190490546 -0.20724911609007137803;4.1282882605213586658 4.8002704035326546617 4.6074726500509237681 4.6368140555443364548 4.0801949233692962338 4.6836150128902307443 4.2371801024485487019 2.523625136062043417 0.65996279763612175628 0.28991681441997102509 0.063753332314010299764 0.016866549951494270304 0.091694848240023371644 -0.14130693707146077531 0.57550372451108378069 0.22138132370325255827 0.36078237354448572383 0.47731492330074215547 0.50862873262631069782 0.44793847770883249426 0.25996733697453344725 0.058543756968995636081 0.30033540263112928903 0.4238858365750537982 0.080234736786027327504;1.9581904429115839505 2.2632691590497753253 2.1190189803053374185 2.3170704352248421287 2.0102637727482353114 2.1748975608994136621 1.9319399280999915991 1.8280001205774081274 1.983775234206994309 0.66699543714428999319 0.058288508430243024527 0.34808154700523030733 0.47747162445354751625 0.3358133883962483579 0.4085659721595021332 -0.11985523003860600044 0.15188698105570003216 0.50412698444865422509 0.45448654699253332456 0.25472901427091954041 0.50989779130113244143 0.50271939945311372444 0.50339301053839147215 -0.2121748563903953777 0.35659517619805597421;-0.0078841745458395166846 -0.0052135383234647395684 0.030029410545661425203 0.011247927646798184034 -0.0016558123022464962728 0.0035764208599508265536 -0.048490420170783699039 0.035658559341590692626 0.027483732722841724277 0.058064930522448626737 0.10712254319231052924 0.32072757176753913244 -0.46890194906804805175 0.45946222933810182409 0.16113427480552602877 -0.038676046848499609498 -0.031575608399178306529 0.58913892237617571102 -0.34447614769952766833 0.24737697191110508133 0.51768007480257793862 -0.34433320108775472557 -0.32255220838208381595 -0.18509696049562660014 0.64520203542200471603;31.734264228411813491 28.085065783400718686 33.268011434822028605 36.732575529869180286 23.71212412274084258 35.640833116970263461 35.425639887206990863 18.249242091227770857 1.2042931648957717616 11.625526312389272476 -2.2960315917242413164 -0.14356933364345184079 0.26339771469751316335 -0.43702079966147716616 -0.48210438395131011147 -0.55360198636444279963 0.55222866515263691056 -0.019476345276172958576 0.1219879127638842653 0.54305247287127533795 -0.22553058787868496271 0.042506427792520798392 0.26489894681825315592 -0.072326532647289540345 -0.42026619245475449471;1.6827717550257137447 1.9480082936917040293 1.8477024184679633478 1.920335165273385325 1.7257604057695381528 1.9170686628840554189 1.740242453556735347 1.2058192933597213781 0.42063487143027999959 0.076443668792576649484 0.033964233150130668237 0.033587094489978895628 0.018691480860900194783 -0.27207886614566750838 -0.18321281964607036286 -0.059946576961045119902 0.32133491682783488219 -0.38606871035361844946 0.47597092657501932633 -0.152665151929694487 -0.045331872492263697305 0.010896940199267894644 0.14620678675661183399 0.27519757103620462457 0.049023618942776750473;17.193518170936847866 19.148074737470871298 20.728201480643903665 24.172218503808078793 15.144101864022875503 22.706287647266144347 22.23341476562579544 11.92272539618006455 4.8711318255020756851 2.8358514909537153592 -1.2312950076974757962 0.28139535327679449095 0.87547127775618027723 -0.21139295065383337247 0.47051670010018425971 -0.13611911145890079333 0.5629044230048974029 -0.10321079559668952519 0.16114072211398602907 0.062604373481258121514 0.15737185213423460217 -0.46496423726357205553 -0.26620049676941953676 0.57073858104415131631 -0.0098930041055065500583;-170.20084991285574461 -194.37633513892046722 -182.82660177977618332 -204.94949155605419833 -158.12493573271581226 -121.37567492843091088 -41.085621772978988986 -5.5836814830685712607 -8.1797411173742364809 -3.1510458024655898512 -6.3681914670118349164 0.013413656229375474707 -0.0022772459071255198894 -0.1743279136024788456 0.32968561928579237508 -0.45541912523091349074 0.023982083819545852582 0.042308773400623153615 -0.31155763429208849224 0.23332934366870047849 0.20151782637100482121 -0.58367669031606328467 -0.10252482203557430895 0.38843161325218222846 0.0052247098160117444107;24.727420887261903459 30.118810772379529084 30.408907353042007315 34.149035680646925073 23.9298538214522587 28.520896779762892947 25.76100667831332558 12.718142732817115714 5.7982916013368059893 2.991241737631925357 -1.5238052457930200134 0.1653486355528098195 0.25504390343608718261 0.39533028417664756171 0.15581946915111602459 -0.29107955213585873233 0.56811648390688784804 0.26050059419566834462 0.42317335000915751175 0.075160693463659958291 -0.46160971772179060224 0.2244142906527746284 0.19259519109619854804 0.29587540684423863091 0.12666319817255206059;-0.17560187478158134633 -0.17958007527084560162 -0.20287418472111365397 -0.18854872976810774232 -0.15874467141397816117 -0.15532614219625218155 -0.20042647052577827749 -0.21549759852959271544 -0.19647672735209448236 -0.12367613849065656195 -0.034699189352828882504 -0.73628108917393675359 -0.48092532597902165614 -0.018157182957954438873 0.23516925517720238537 -0.40267197893269723874 -0.30549827683549185542 -0.72125535698169096488 0.34618976318212202337 -0.42642571745454199705 -0.3132201705077352627 -0.015220650120021396098 0.01807653332633760157 -0.29973090743051689078 -0.81845058804440573574;-0.22406530244121533602 -0.28200225098180586869 -0.27735774377333749507 -0.28710868748432760711 -0.22929818803816026662 -0.28050584573457193471 -0.24934031588039740068 -0.25480728392524210069 -0.13991809346085620769 -0.016713249651492130543 -0.050762049586022907344 -0.16793830450100494245 0.15489790738766684441 0.13618358176088490863 0.15301729670069033618 -0.5516516866350199555 -0.4402150000302622046 -0.36708655824609670582 0.17637058064245525468 -0.7454858208063215308 -0.3898484789087820479 0.17698457568680295293 -0.5642664372061850786 -0.31302133045761232344 -0.4071535912148975811;-2.3599750081680115343 -2.378885805410931642 -2.5458018215756559322 -2.8955177018452857851 -2.1585395721741602593 -2.7376082411769369074 -2.3823685699655392511 -2.2017657799974368338 -2.9126763342993990946 -1.3280027298151917403 -0.067448747049801291431 -0.74773694346167540736 -1.7112152702818668182 0.17867013941531334487 0.19978442022888537322 0.24946338765507689028 -0.3372291347631165559 -0.33261805845048092456 -0.046758532073612857349 0.22661366938649246672 -0.30302437227317746693 -0.31622190547546313866 -0.56130527536253327359 -0.44186886651773488177 -0.46193444161562968731;-20.722709874666342955 -21.887637168619939132 -19.873576145238704527 -26.966061694637538437 -15.12482135788361326 -19.058443933239797019 -17.863537862903950071 -9.0304362232447772385 -3.4324487951449014211 -7.9640362006944105389 2.1631122426435269723 0.11877167475148690812 0.025483470129574074814 -0.42479814935847853841 -0.0071569266584255294625 -0.44790344186951713823 0.45936997002841578608 0.39810560949060175284 -0.05197434861240321502 0.34243907299029024971 -0.21389062877107367644 0.23845350011249771827 -0.014682276844573724506 -0.097354041959325010591 0.21384591102433125887;1.9798236729692508806 2.2930241108998803412 2.1458114473160208036 2.3441606279183648809 2.0331778017324628749 2.2000471370580445551 1.9541952069888672838 1.8478168482212025125 2.0099097738752083053 0.67212565758829267981 0.058472720924940414788 0.34380687612505483886 0.4657494124965674831 0.75479945251307856147 0.72364514925063838646 0.23290829131163384713 0.5171590855610997961 0.33201587493770556847 0.5662243221307069474 -0.071874172281825327024 0.41539237209435164733 -0.15348380014836876528 0.31273623578012021973 -0.29976930916284094675 0.35818828212421011115;-0.10657841666857696683 -0.12696303395298350059 -0.18138886368921508518 -0.10195185833424219579 -0.10735085512561799714 -0.11519452622996288749 -0.10738514548083616384 -0.1966620366179260837 -0.061844620555116691651 -0.13798812885940331396 -0.071541089121518700034 -0.092742539127254011722 -0.66143879274111672117 0.30018270515899547757 -0.50220504093019702196 0.10533364459248466261 0.019968472565282661957 -0.21743597797762787005 -0.21962729094309493827 -0.40285478867325164032 0.21295239966910420315 0.085984886686158390479 -0.22258382206953450377 -0.46184869332106026629 -0.76030152894236691097;-10.368566708493613504 -14.173874724535449943 -10.538517521716380898 -20.383838910345495776 -10.662986603708901612 -11.025869923919037419 -9.8188576728277379146 -7.4791044077257033962 2.3287640147361190479 -9.0593420446981909322 4.6088112863062553615 0.31102780608158892006 0.49650335127456057815 0.35018277891748655906 -0.093217243783566480775 0.24168463436350648421 -0.29469476890775420097 -0.19272074349239987079 0.41591151654504171509 0.49034541399782066717 -0.17832773027347070816 -0.042434813895682127471 -0.48342623868574002843 0.41666204163331005406 0.93683740289059413975;166.54732661856084519 190.86392600130241703 179.3359000403288519 201.04879924741354102 155.63383090493067584 118.52353180701491908 39.127847877420684597 4.9358542789209272073 7.6704635193907710899 2.5812063209958018284 6.7359524260782528415 -0.0097151766504710822259 0.0059557436275789795571 -0.35056435508425909386 -0.26158945871054556376 -0.05224115587779051828 -0.14780711995854278751 0.45633579902492105163 -0.081453561955048145449 -0.19927569394410377113 0.32059603388144519709 0.35747404048766034945 0.4391665035072001011 -0.063600564204541049085 -0.0010179901082165729396;0.010589975275170970814 0.010224875779124028771 -0.020428377956600497767 -0.0076233725030676446205 0.0085891092984646255637 0.0053739867184849814466 0.048196175275808196548 -0.024559086786157501014 -0.018475130890607670275 -0.045857361523615101928 -0.095912737251227078716 -0.29931644921806416226 0.48136623345373802385 0.23171083700297454011 0.36057218971598603563 -0.020623601453924781529 0.0069664014524426108241 -0.038459644813006739483 -0.19002139395518100051 -0.22183893468198523369 -0.26548897470860632897 -0.40363172704580324579 -0.28959957150456061559 0.17063683311887131722 -0.6060855246550164166;-2.3526415814646965963 -2.3717979686488366298 -2.5379744679525519935 -2.8887443905736591709 -2.1537429838119122039 -2.7271790290747648378 -2.3743617323879790959 -2.1939632805694646578 -2.9023657337659991562 -1.322062580591089942 -0.067513201904224481864 -0.74578133795790257921 -1.6987727320543548615 -0.58268818042915782041 -0.44466837303442319218 0.045108526507205294609 -0.16152090530854121275 -0.38995409392337593291 0.19569338376168496363 0.28486081209292363203 -0.015519816011999681277 -0.21230547839027227863 0.071225540733575856689 -0.24382950268431846652 -0.46242681502487176237;-24.088328218441791506 -29.174367423268737554 -29.815558714504955873 -33.363564236179030331 -23.313647390192272724 -28.111397415363263974 -25.710482271589771841 -12.879748875044757739 -5.7841351055001846149 -2.896534663188219838 1.5631363052821007908 -0.17892122351971997962 -0.301884334487715289 0.38671794553308247444 0.21911133027232826409 0.33243652171187776379 -0.25015666950926390699 -0.59524671204131973656 -0.23684929726298523112 -0.54300705087557110673 -0.29922802617565036343 0.069125435074156332815 -0.55152958276432528795 -0.50332012392469838158 -0.12743636395327440081;0.11816003041462501411 0.14588579965709427833 0.25515504714179293444 0.22545280243866000491 0.14248372045296966992 0.16731006602574113873 0.13964984908354477477 0.2421176749924870697 0.13461370772910566385 0.1698228234645144108 0.0408091352638006305 0.95879512594853444352 0.78844319203922341721 -0.26279290275964950485 0.36840852586078898234 -0.41842125416293202145 -0.30286486253414995895 0.15467765112479830991 0.28998081754526400244 0.53633940335488616835 -0.020593782892099288251 0.061481992289871341406 0.01627526958804105181 0.01994675339167778505 0.44567926008116703906;-17.239962288157133941 -19.200664559003364218 -20.815496913390539646 -24.275249117624770889 -15.199160647968515292 -22.796350699309375187 -22.329620033657143097 -12.007873155867443415 -4.897279348322816972 -2.8510735645293459051 1.2546801383597179225 -0.28377408374473067632 -0.87500293192882705462 -0.23977621557849937428 -0.36514350724571437157 0.4403185689382181911 -0.37248083951963090188 -0.50613435710648291277 -0.17116364438838810313 -0.25542676242203760095 0.21429340726975218412 0.47371268508463082458 0.042093597951458359974 -0.097675897610854017783 0.0049433834378852341274;23.438605674059139972 28.173492576252101571 29.183676224699656387 32.586815796423650227 22.626934544157631279 27.712201589369474419 25.707587871484800957 13.099621250306523024 5.7870975567276898843 2.8377719580300104774 -1.6212072761713400837 0.19379822362845522399 0.35604796915979791683 0.596225117920369585 0.59309057183395197388 -0.19576693956035004507 -0.018414268790509003004 0.44200054591269977156 -0.053914700066295714875 0.14476244497707346781 0.53712769693518014336 -0.27270183933685537836 -0.16000311131666311582 0.47622869839709647266 0.1260766962999316787;0.10681484917437612803 0.12948046173988628227 0.18162143769364597068 0.098041048064560237796 0.10774697733718724413 0.11579882170593931712 0.11016208691472401116 0.19964009357544285073 0.059442792187615542399 0.13670195829990383629 0.072321626517555179237 0.053388371123396408113 0.65754341261777748961 0.37029209439490956557 -0.41577102217975342446 -0.097022948651585450008 -0.20777857648558620274 0.33094673750887654284 0.25164391547310011044 0.18097405750846135009 0.15337791670336889394 0.20179544718011638293 0.044904569776558163341 0.47782208208144510975 0.79483483472625460209];

% Layer 2
b2 = [-0.50774448855146137038;0.12629201608380094535;-3.3239170028282849501;-75.393093907447124025;-131.31157751169601511;-97.180407241881255231;65.407096164856696419;14.394812560497804554;-0.30845366212989588917;-20.884048544810649872;-38.182830962561304489];
LW2_1 = [0.66619101795753865591 -0.0046396466242158568294 0.98564980877987540264 0.57484824050037797161 0.67804340935672813284 -0.37361681383391653899 0.090179109880949709366 0.57501519208774609648 0.87154688710403038776 -0.0023800970493676231257 -0.0014691833203521271946 -0.0018222841059752701957 0.11090455677536620316 -0.96495404064164425062 -0.47490150220532112435 -0.40359941335884996771 0.61533966483717228435 0.72071186798347330882 0.020296168879273417812 0.72654095133709106769 -0.03540510763333237082 0.14927137588018699055 -0.0281918417275108385 -0.44486652493109496431;-1.0801761255237243287 0.0040605512263829583036 0.25020992311608297731 -0.43838578896024243958 0.092676004209523071831 0.079201477171913642339 0.068758384805778241522 -0.66135562807837589006 -0.29114026815840454709 0.0065450718093658629207 0.0034006901957089616731 -0.28869005372376882468 -0.23195898120998578729 -0.24834306791070026588 -0.079668086605117038879 -0.20388733696648828064 0.68168459833935923786 -0.44415577148514662209 0.28800696376496492945 0.06330341621176888145 0.0030033631654179781395 0.093030659569910162388 0.386667208537500251 -0.073091775297282585155;-3.5724292218488260531 0.0051168986639416767434 -0.073040961330662304563 0.30154288146562335804 -1.0641383214482913466 0.045467407855600987243 2.8551291084850705104 3.3904177960508730116 -0.76293726790144045236 -0.0045122825123878112716 -0.00054838961641780236463 0.16885269607682082404 -1.1792916866199694148 0.073109456984473381036 0.021461385882036405209 0.068969077127830943907 11.176585633955179233 0.31523811910348498166 -0.16714667354527490417 -0.45716500284709493673 -0.0045371190477694186768 2.9241041726277652302 0.37067339490625278442 0.016334225933828105948;14.168322738530633842 0.014134460532683947032 -0.13937275492932876819 0.66888857680908830883 -1.571970632897648823 -0.35714670733017583881 -1.223271371010689279 45.633040729630117482 1.506093716058241716 -0.0010459084374759522896 -0.001054893179387457686 -0.02110864500356228815 4.5674144953793884838 0.138833551631769192 0.075247336023569394436 3.1007653775321322165 117.47154244272147139 0.67301867818200833415 0.021365500318497425425 2.7521910368533726299 0.00076044903973001979399 -1.2173178181172130685 1.2136638358800297954 0.068110573437895255422;33.556517108271783911 0.017929938334345120465 -0.18550930325570419432 1.3816638199552750965 -4.6509986191737917594 -0.48638744375198994518 -3.1091956792996979786 77.45115875947746531 0.63259333676795692636 -0.002568698716358493693 -0.0038130856592482383766 -0.024654501919813449906 10.905343950298107103 0.18606789086886707518 0.011387869468196691602 8.0513206583844691977 200.28805418710103936 1.4028732876432317145 0.026660835960915493792 0.76491995191682204958 -0.0050860316717864350461 -3.139426557595785372 0.062752370348116870424 -0.0018221683922294471501;-29.299055540347907822 -0.00061733281663351217364 0.13226456352280502315 1.3614571382103439756 8.3275269968911214136 1.7560650812399745124 -8.0947660879115925781 65.870045065015332852 -23.902462891838382575 -0.0032402514088747257255 -0.0097332923235333053402 -0.28084549183618140455 -10.61256014359838673 -0.13099704530569364347 -0.49654616535454576542 4.5242712130204454368 176.96533811909461065 1.4251225008322618848 0.2906302221097569749 -47.846446590894679218 -0.020887577460630635251 -8.4390508279442659756 -24.149763227993354064 -0.49776941675295544032;-84.750435508475618462 0.19826950351118027838 0.48786629360967270763 2.9194148871755025709 29.148923876396782617 1.9748446537951895863 -9.1629711420315782533 -42.243654733611741392 -35.648627846172452394 -0.0062911238414652490697 -0.033986342329040790389 -0.04719005139247497288 -27.147153632053335315 -0.48508340127550314547 -0.94374063465681135021 -17.121242982897943108 -98.359634648268112755 3.0612438463258397903 0.053821057019221588136 -78.608915247739062693 -0.039174329663881457542 -10.092442741558580011 -43.21062786580997539 -0.95181382245017387422;-6.7561562198696485382 0.62973383607260502437 10.740038076946509804 13.349784428185394347 23.301716034706224434 7.2131048248692399838 30.868810953951498988 -47.540207319253333651 50.191436915176311118 -0.039711851638917772256 -0.15513575152895123233 2.1847816772755441761 3.1158342294075036527 -10.48577980284262523 -4.1168363999386947683 -31.112496819821664928 -114.78965121601146393 14.111311174369204124 -2.0646950880431940156 90.918418363907676394 -0.22541302618365599564 31.101067659937008614 41.295639286122941769 -4.0854140029067416151;102.16199975608446948 -0.2457412250435046519 10.191961457795011725 35.866757686537567906 -22.839767894351975741 29.006179960256314843 29.694355546651934219 -13.917589042803918176 58.85804361018075781 -0.40036383875244141439 -0.45716053514302529281 -9.5656762764964557988 32.914281073568552927 -9.8085424083092718206 -11.35448355128537834 57.391799622992706986 -33.867266984611788416 38.466254416216656864 9.7042290457340971699 123.53281365892202359 -0.62254419670808436305 31.179848520496623365 65.891731711800360927 -11.379894663746679129;171.24458633146127795 -0.34700782855441891783 -19.118802115325458146 26.450945056860536653 -55.57647525417826273 22.829290263905328118 -19.426286131536798507 9.5406582265433446111 -12.682949882967852417 -0.78788938632129978945 -0.37428783602948839659 -7.5176348252791429516 50.623636222705528098 18.742475609905643097 -18.13436513806425765 82.153491831575593096 22.178449028733673742 29.518259477695970361 7.2464106363958276091 -20.618433148923593023 -0.80590686601039995818 -19.424882526838558761 -8.3187090160305068309 -17.692673895503777004;74.348519137362089282 -0.18937766268668906888 -4.3097341002508473551 -11.510885401831295383 -27.037970328354955285 10.041779876900463364 -17.621696941744193765 4.9617225704717178303 -21.612993313320739475 -0.12788973724434132828 -0.07267400055680586779 17.10724187869660895 21.544526454525247061 4.1317227586307110343 -22.271092554116673767 5.1180092011255453599 11.506025643639034683 -9.9831512504883335168 -17.226836605703397254 -42.087875875073748944 -0.45198970263834276073 -18.025702048042955283 -21.026355322677122928 -20.72212245132477193];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [7192.2544848019;721.025448481008;73.9025448488718;9.19025448575977;2.71902545049059;2.07190255738392;2.00719037227575;2.00072019578981;2.00008359839004;2.00012414113828;2.00117022029533];
y1_step1.xoffset = [0.999721923076464;0.997226172800648;0.97293733247587;0.782378169871532;0.264442338622064;0.0347036326646832;0.00358224860210938;0.000359383521215785;3.59499799689285e-05;3.59511431675176e-06;3.59512594915165e-07];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,2); % samples

% Input 1
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
  y = bsxfun(@minus,x,settings.xoffset);
  y = bsxfun(@times,y,settings.gain);
  y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
  a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
  x = bsxfun(@minus,y,settings.ymin);
  x = bsxfun(@rdivide,x,settings.gain);
  x = bsxfun(@plus,x,settings.xoffset);
end