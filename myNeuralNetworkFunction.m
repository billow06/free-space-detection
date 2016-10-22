function [Y,Xf,Af] = myNeuralNetworkFunction(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 21-Oct-2016 20:48:32.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = 48xQ matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;0;2;2;1;0;1;2;2;0;2;2;2;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0];
x1_step1_gain = [0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00790513833992095;0.00784313725490196;0.00790513833992095;0.00790513833992095;0.0078740157480315;0.00784313725490196;0.0078740157480315;0.00790513833992095;0.00790513833992095;0.00784313725490196;0.00790513833992095;0.00790513833992095;0.00790513833992095;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196;0.00784313725490196];
x1_step1_ymin = -1;

% Layer 1
b1 = [1.8286099080477746792;-2.4171066718549658603;-1.1981820729562537853;-1.556112026376127222;-0.82431144026832559035;-1.3618910911543697928;0.096744596276993735651;-2.1465516402638962212;-1.5415702913818003505;2.0685031634129802391];
IW1_1 = [1.0539897778570983533 -0.25642555802392924535 -0.85927589817742200395 -0.96703449500180460596 1.4363788591016308782 0.14372506728645714769 -0.352152131676109037 -0.46760719979480896979 1.4587285711172286451 -0.024379893191195368268 0.28534993835166960752 -0.44918979122164404139 1.3701516318819220164 0.82011129999392440304 0.16548655174011944746 -0.1235014962423875845 1.211642646637778542 -0.51423965415168437776 -0.83557376281363215931 -1.4100166531255720059 0.89760227358013566779 -0.21807224120056634131 0.070936338321087866188 -0.95022926889092695912 0.98559525207977360939 0.49602627087591505406 -0.15440199923710945518 -0.58575833578968783399 1.2740204327832129749 0.49683280870426355103 0.91225629865710855526 0.20690014301291012599 1.1201416285404293127 -0.60892283691160753456 -0.53784189995642761595 -1.2648272589659574905 1.1686836453467384089 0.22004454046197799433 0.065644639770988250094 -0.42312600192027083335 0.59328368032081979511 0.45930910295476928829 0.0085530933771910903213 -0.49855733770684429462 0.40302221784371422553 0.64810778574242067229 0.4279360609672130944 0.52468710145306873827;0.104567407399367443 -0.095685890358588418514 -0.31320953873429047132 0.046613689538837328741 -0.11137376907502305468 0.056747908463638314924 0.30924496932488826362 0.14470449031023940867 -0.32779047123889665238 -0.16104030285295620195 -0.29115681441934004869 -0.15115084125379857349 -0.17915718322144452701 0.055978981199837171689 -0.19181710744687702208 0.26400712060478714882 0.056974042500696500668 -0.25272493421065572727 -0.2617556650074365221 -0.33810389357974218738 -0.43806149648000547447 0.17374844814669102022 0.06780669338548125924 -0.20690420075907248187 -0.4759365166239498679 -0.0092928299054832377152 0.20422102578073128565 -0.13465198879841364099 -0.13300450565772581335 0.057984079205843447324 -0.42941779794824597172 0.072689782302366182098 -0.0048903407654208265118 -0.16471027693462772512 -0.12404283114806279043 -0.0086863079402083459568 0.33222317006373169868 0.35382028309435653579 -0.066989473728509385531 0.34939929703660693727 -0.20398416859370094301 0.22332887613406596228 0.21317418502632382027 0.060346392037969674715 0.20567593941144660108 -0.012315967416391029876 -0.094399663320415300172 0.063265393141540240962;1.1384877081978008739 0.97790684644191905317 0.37862098334177712866 0.71728867676593055513 0.4594992487370047618 0.47346502187343825208 -0.043687840491818459576 0.17326568312692838814 0.67631676257592110435 1.139223650247183528 0.23756949306788779919 0.2440999460948109212 0.59532507758845998325 1.0732752745802915939 -0.021844768452774554479 0.23779833780166600987 0.36144831065705129713 -0.47734740323067265111 -0.0024601766641914966233 0.61580439026999200802 -0.34965761801553785215 -0.6306800663208661506 -1.3000785622408996822 -0.32589283516938682972 -0.77793718405249845382 0.1626890233049790857 -1.0702138112125823 -0.4229634175351257297 -0.6971841833732448368 -0.59014206762379450844 -1.4854215015730840577 -0.37939710255740638489 -0.19154857126968735659 -0.019266237754001776239 0.3145155161984009573 1.6364805053124824585 -0.345731021395849214 0.059401210212704488867 0.24043726550572375178 1.0122261363628910491 -0.38757510706856163063 -0.16963507645901862442 -0.2414606969007158932 0.84336856748013500074 -1.0471200232640056615 -0.40748249074282988369 -0.53985934354419284897 0.42353631644673139789;0.034889815108887924089 -0.17075291963437419507 -0.4854338151987261929 0.11426563370043320289 -0.57620964442515631987 -0.083266048382847873688 0.41782317533770713114 0.72370806628660822035 -1.0084953749761245145 0.90522408032746337625 0.016534975631868984586 -0.0096995552818488536134 -0.35666400570406697756 0.69227832090024388201 -0.23370963945466960432 -0.088330052574246933905 0.2607793900488633021 -0.019542866099540617819 0.30664631125147989721 -0.0080835762087230235429 -0.17231805838200203729 0.15003044946657875802 0.23059571584374291553 0.20736722861244780147 -0.94810102562773190815 0.1531908150367080057 0.34610359198659040869 0.18379885648172739065 0.28454007896001176636 0.3822561552902660198 0.15628894202350285259 -0.35911519934610025562 0.076151243925987627259 -0.45488056176575464296 -0.39643218441048116985 -0.059425060305403148986 -0.28911229498529356086 0.25712126677256447183 0.075182641318448484302 0.32977376160805926819 -0.3147551778827050728 0.19505954844352699218 0.20248226795680923651 -0.13922725569849939142 0.15818306751887442618 0.10617666848054203854 -0.23143770723863854588 -0.11152968906016501316;0.079997880466087301077 -0.139054346637992432 0.23970007538928472801 0.12702966395124171139 -0.37791320846992487725 0.031209320290136191578 0.14487600302961825549 -0.496621030659801177 -0.081507285419501862567 -0.52600232799964941055 -0.22477594403474349116 -0.34350562701773212915 -0.23722117747153478873 -0.34841294963418517616 -0.4388508298690899645 -0.33222866958124314118 -0.081234457828431458348 -0.45811447955591677594 0.35586905030162363506 -0.6344828334350910426 -0.49959336159035289127 -0.17143740668474574673 0.21318522225729424902 -0.57379468679800404995 -0.25058153150616574445 -0.33213045426993598186 -0.25216521164446636938 -0.95476681601957680279 -0.75475525445462443574 -0.41973727283987999348 -0.48203824509705806012 -0.78234655783054829481 1.247756617240823207 0.97719629319716216909 1.1478080401460077908 0.24012970330493396687 1.0188133942495607442 0.59504504991430617888 0.2114142225929584451 0.16666332630392055592 0.41034282412511657867 0.69747821248340668987 0.53647803856076148321 0.1356749002874322596 0.662197306503283456 -0.086036309963508500465 -0.06011469979532630542 0.42945710796334890524;-0.021776441081052286958 0.072215867170939057607 -0.013433172629665991391 0.66690496603081250715 0.27979404601559970667 0.29771460606386579428 0.59046285902365669429 0.20685087624138320805 -0.02608626404544541616 -0.052678530258145589427 0.14320704157813021751 0.48201122313030547728 0.038153515389539427449 -0.26920789577332199238 0.77021607936648239789 0.5589710384171665547 0.10381678414218382944 0.25935699662772437879 -0.30103573789890114565 -0.16680386565984747782 0.10708157617957893282 0.3151020203133630404 0.49729155468510571891 -0.20654609042979690803 0.055399662574218314082 0.14239605157233622967 0.70225990080456768272 0.46183750568719122986 -0.43735902800025844295 0.37858824179523919984 0.54005953405307982607 0.00045862636504726429082 -0.38186227953888124409 -0.24951611916866434093 -0.68947234805629553644 -1.5645102575555966951 0.034395759624598627735 -0.011905536966155670642 -0.093168350710913797053 -1.6105186928626831211 0.060951640828507139269 -0.15640970314743860015 -0.23827772587407972105 -1.0867531094911406786 -0.16213685475418435078 -0.17398023838508841488 -0.041293211507633403867 -1.3451195192721145943;0.33102494862198122982 -0.23267091803066114464 -0.36934961176090841395 0.27864827403024483576 0.0083082166863786711258 0.15945684482226157863 -0.14398152162638611085 -0.073461027878245849232 -0.33087900254638402675 -0.063075258186150104378 -0.11872383605460332112 0.45375034695562233011 -0.57216661514648836651 -0.54218087565195316468 0.27384706486613130672 0.27988294285671649897 0.043541912311210843878 -0.007952611206765164073 0.20908161831098323602 0.098554281743565480545 0.15396525513944636643 -0.052460895647757140037 -0.10739383682615442905 0.075743244234454332187 -0.014057513511218006075 -0.33034169148194031385 0.23255311469305550709 0.14245502478333627039 -0.077427254676042514547 -0.026937522965738140701 0.038837518187224445709 0.35586874824320663402 0.46554062726993750143 0.56931071430986501802 0.29148474504948646002 0.52518054974609074126 0.067676206715452144613 0.58232686716339476796 0.38890816431875224746 0.07232147341856509648 0.22681667170859035054 -0.03462613534571590268 0.27875415667867686764 -0.1753699027802314292 0.10484121931694914687 0.39170319558397631576 0.64102091079192080603 0.14549353127125400076;-0.59235300742822016851 -0.53852488342898108264 -0.14925681252549402589 -0.49478518774326130103 -0.4608503484044247922 -0.43176430385115815991 -0.29305626062498035811 -0.63135009179022016923 -0.42794934596890982226 -0.85622278556289577178 -0.25965207160389897068 -1.0967597189161228943 0.3428433756991758341 -0.38371234980329183006 -0.29900767037451447816 -2.2182389179673527302 -0.13374432727055779457 -0.022362752649766719226 -0.15869256254471456047 0.20439283868164681568 0.24473664368524966628 -0.20161293832104595913 -0.37818750294941921863 -0.47882515211761933482 -0.0099245047772562756255 -0.37520039858880754879 0.26371069493108378889 -0.25995736073145608858 1.1473201068735403574 0.32914651250926180159 0.20683096019079583172 -1.5265678736009515859 0.084059418654546871896 0.21609648949828016984 0.61178136953038864121 0.97958226289382055452 0.40153086264266446559 0.11330025190247389189 -0.077524310811790994591 0.011945395007430439221 0.20553459452008229769 -0.22078831417193994779 0.55752365257942604337 -0.49117597597424450528 1.2463731118336414116 0.39088287903624208131 0.28796419499248560037 -0.98343287374389198874;-0.49188916148351535806 -0.63574994030435094672 -0.84517317413506931612 -1.5461062552257300862 -0.47726411734387036434 -0.14794628341312374142 -0.16890986777826336174 -0.82311549214154233756 -0.76972505285490833149 -0.40288820154065341228 -0.1061123759935818367 -0.87600870709170064465 -1.4423288856711460326 -0.53310413408448553696 -1.0059440840020326124 -0.70283467669606680683 0.9355646236690738915 0.6472190183030410715 0.44414902660300964454 0.14367328233948176153 0.12913789242515552602 0.90761545307340130151 0.60645647429381810412 0.63252270595034187917 0.15851307985950685575 0.59835367273950845757 0.99237454425699878069 0.72292513064343721929 -0.82363346263186598684 -0.192913048514010671 0.40710575670828064165 0.45327260485721315719 0.86839509573434581213 0.46167047611141809327 0.29849330343833074819 -0.88732513352199826606 0.078258569907903918761 0.80820587449489023069 0.79875948151163622679 0.54723520801921354817 -0.23414178661779275203 0.43317643308276199132 0.56644808533462054356 0.0089555265919505546574 -0.35365617411269889558 -0.02169276742532695243 0.6410395238353845393 0.25932369102346347622;1.3649540999955454001 1.7098106562560186905 0.85729485649036873962 0.69822341514037533639 0.74571835379728101945 1.2722124664028460206 0.30902178992991635731 -0.0065999409458710545442 0.78330836753888499757 0.93030572268005240488 0.28413100006657199259 0.77391403711252104713 0.58843840908722655492 0.46539311569194219409 0.47630153414472320428 0.43633438914418004595 -1.1159754529756273911 0.39650377855475898992 -0.38765816067747094209 0.13592827308433086397 -0.6556130632922251289 0.22779738807686022994 -0.37390044933142008166 -0.43438395862613460308 -0.32481766043887594364 -0.12070074903381058928 -0.61314119571588709956 -0.51063426751791052283 -0.72963373761739425127 -0.5477425440680457891 -0.12449345843467583828 -0.96571381833951708273 -1.2311656247299342937 -0.12811212126028984071 -0.281417087520700826 0.13920846173680101465 -0.58424145641397939865 -0.4178743624108377519 -0.29772893919346998803 0.26991408306413916529 -1.4600095090468716563 -0.68540341563451256945 -0.23702615610124500023 -0.078022411377708739133 -2.0411950897239590219 -0.34027775646015850919 -0.21193220815015587077 -0.42662480124806301252];

% Layer 2
b2 = -4.6859430592875490618;
LW2_1 = [1.2538301751540872342 4.970905109324100124 -2.5881431233202141229 1.6802827491716463282 2.334345325201667265 -3.5197613569400538758 1.1831085568118857587 -2.6572691347960737396 -3.1832943969086140434 3.2435656484562076507];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    size(X{1,1})
    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = logsig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Output 1
    Y{1,ts} = a2;
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Positive Transfer Function
function a = logsig_apply(n)
a = 1 ./ (1 + exp(-n));
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end
