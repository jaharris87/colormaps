function [ map ] = diverge_blue_white_red(m)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if nargin < 1
   m = size(get(gcf,'colormap'),1);
end

base(1,:)  = [hex2dec('05'),hex2dec('30'),hex2dec('61')];
base(2,:)  = [hex2dec('21'),hex2dec('66'),hex2dec('AC')];
base(3,:)  = [hex2dec('43'),hex2dec('93'),hex2dec('C3')];
base(4,:)  = [hex2dec('92'),hex2dec('C5'),hex2dec('DE')];
base(5,:)  = [hex2dec('D1'),hex2dec('E5'),hex2dec('F0')];
base(6,:)  = [hex2dec('F7'),hex2dec('F7'),hex2dec('F7')];
base(7,:)  = [hex2dec('FD'),hex2dec('DB'),hex2dec('C7')];
base(8,:)  = [hex2dec('F4'),hex2dec('A5'),hex2dec('82')];
base(9,:)  = [hex2dec('D6'),hex2dec('60'),hex2dec('4D')];
base(10,:) = [hex2dec('B2'),hex2dec('18'),hex2dec('2B')];
base(11,:) = [hex2dec('67'),hex2dec('00'),hex2dec('1F')];
base = base / 255;
% ['#67001f','#b2182b','#d6604d','#f4a582','#fddbc7','#f7f7f7','#d1e5f0','#92c5de','#4393c3','#2166ac','#053061']
      
rbase = base(:,1);
gbase = base(:,2);
bbase = base(:,3);

% mint = int32(m / 8);
itmp = linspace( 1, m, size(base,1) );

ilo = 1;
for i = 1:size(base,1)-1
    ihi = round(itmp(i+1));
    mint = ihi - ilo + 1;
    r(ilo:ihi,1) = linspace( rbase(i), rbase(i+1), mint );
    g(ilo:ihi,1) = linspace( gbase(i), gbase(i+1), mint );
    b(ilo:ihi,1) = linspace( bbase(i), bbase(i+1), mint );
    ilo = ihi;
end

map = [r,g,b];

% map = [0.278431385755539 0.278431385755539 0.858823537826538;0.262962967157364 0.262962967157364 0.830936849117279;0.24749456346035 0.24749456346035 0.803050100803375;0.232026159763336 0.232026159763336 0.775163412094116;0.216557741165161 0.216557741165161 0.747276723384857;0.201089337468147 0.201089337468147 0.719389975070953;0.185620918869972 0.185620918869972 0.691503286361694;0.170152515172958 0.170152515172958 0.663616538047791;0.154684096574783 0.154684096574783 0.635729849338531;0.139215692877769 0.139215692877769 0.607843160629272;0.123747281730175 0.123747281730175 0.579956412315369;0.108278870582581 0.108278870582581 0.55206972360611;0.0928104594349861 0.0928104594349861 0.524183034896851;0.0773420482873917 0.0773420482873917 0.496296316385269;0.0618736408650875 0.0618736408650875 0.468409597873688;0.0464052297174931 0.0464052297174931 0.440522879362106;0.0309368204325438 0.0309368204325438 0.412636160850525;0.0154684102162719 0.0154684102162719 0.384749472141266;0 0 0.356862753629684;0 0.0555555559694767 0.39259260892868;0 0.111111111938953 0.428322434425354;0 0.16666667163372 0.46405228972435;0 0.222222223877907 0.499782145023346;0 0.277777791023254 0.53551197052002;0 0.333333343267441 0.571241855621338;0 0.388888895511627 0.606971681118011;0 0.444444447755814 0.642701506614685;0 0.5 0.678431391716003;0 0.555555582046509 0.714161217212677;0 0.611111104488373 0.749891042709351;0 0.666666686534882 0.785620927810669;0 0.722222208976746 0.821350753307343;0 0.777777791023254 0.857080638408661;0 0.833333313465118 0.892810463905334;0 0.888888895511627 0.928540289402008;0 0.944444417953491 0.964270174503326;0 1 1;0 0.972113311290741 0.944444417953491;0 0.944226562976837 0.888888895511627;0 0.916339874267578 0.833333313465118;0 0.888453185558319 0.777777791023254;0 0.860566437244415 0.722222208976746;0 0.832679748535156 0.666666686534882;0 0.804793000221252 0.611111104488373;0 0.776906311511993 0.555555582046509;0 0.749019622802734 0.5;0 0.721132874488831 0.444444447755814;0 0.693246185779572 0.388888895511627;0 0.665359497070313 0.333333343267441;0 0.637472748756409 0.277777791023254;0 0.60958606004715 0.222222223877907;0 0.581699371337891 0.16666667163372;0 0.553812623023987 0.111111111938953;0 0.525925934314728 0.0555555559694767;0 0.498039215803146 0;0.0526315793395042 0.524458229541779 0;0.105263158679008 0.550877213478088 0;0.157894730567932 0.577296197414398 0;0.210526317358017 0.603715181350708 0;0.263157904148102 0.630134165287018 0;0.315789461135864 0.656553149223328 0;0.368421047925949 0.682972133159637 0;0.421052634716034 0.709391117095947 0;0.473684221506119 0.735810101032257 0;0.526315808296204 0.762229084968567 0;0.578947365283966 0.788648068904877 0;0.631578922271729 0.815067052841187 0;0.684210538864136 0.841486096382141 0;0.736842095851898 0.867905080318451 0;0.789473712444305 0.894324064254761 0;0.842105269432068 0.920743048191071 0;0.89473682641983 0.94716203212738 0;0.947368443012238 0.97358101606369 0;1 1 0;1 0.965359449386597 0;1 0.930718958377838 0;1 0.896078407764435 0;1 0.861437916755676 0;1 0.826797366142273 0;1 0.792156875133514 0;1 0.757516324520111 0;1 0.722875833511353 0;1 0.688235282897949 0;1 0.653594791889191 0;1 0.618954241275787 0;1 0.584313750267029 0;1 0.549673199653625 0;1 0.515032708644867 0;1 0.480392158031464 0;1 0.445751637220383 0;1 0.411111116409302 0;1 0.376470595598221 0;0.967755973339081 0.355555564165115 0;0.935512006282806 0.33464053273201 0;0.903267979621887 0.313725501298904 0;0.871023952960968 0.292810469865799 0;0.838779985904694 0.271895438432693 0;0.806535959243774 0.250980406999588 0;0.774291932582855 0.230065360665321 0;0.742047905921936 0.209150329232216 0;0.709803938865662 0.18823529779911 0;0.677559912204742 0.167320266366005 0;0.645315885543823 0.146405234932899 0;0.613071918487549 0.125490203499794 0;0.58082789182663 0.104575164616108 0;0.54858386516571 0.0836601331830025 0;0.516339898109436 0.062745101749897 0;0.484095871448517 0.0418300665915012 0;0.451851844787598 0.0209150332957506 0;0.419607847929001 0 0;0.445098042488098 0.0165577344596386 0.0165577344596386;0.470588237047195 0.0331154689192772 0.0331154689192772;0.496078431606293 0.0496732033789158 0.0496732033789158;0.521568655967712 0.0662309378385544 0.0662309378385544;0.547058820724487 0.0827886760234833 0.0827886760234833;0.572549045085907 0.0993464067578316 0.0993464067578316;0.598039209842682 0.11590414494276 0.11590414494276;0.623529434204102 0.132461875677109 0.132461875677109;0.649019598960876 0.149019613862038 0.149019613862038;0.674509823322296 0.165577352046967 0.165577352046967;0.699999988079071 0.182135090231895 0.182135090231895;0.725490212440491 0.198692813515663 0.198692813515663;0.750980377197266 0.215250551700592 0.215250551700592;0.776470601558685 0.231808289885521 0.231808289885521;0.80196076631546 0.24836602807045 0.24836602807045;0.82745099067688 0.264923751354218 0.264923751354218;0.852941155433655 0.281481504440308 0.281481504440308;0.878431379795074 0.298039227724075 0.298039227724075];

end

