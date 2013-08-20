Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBF26E014E4
	for <poky@yoctoproject.org>; Tue, 20 Aug 2013 01:41:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 20 Aug 2013 01:40:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,918,1367996400"; d="scan'208";a="348814984"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 20 Aug 2013 01:40:52 -0700
Received: from localhost.localdomain (unknown [10.237.112.161])
	by linux.intel.com (Postfix) with ESMTP id 22EF56A4093;
	Tue, 20 Aug 2013 01:40:49 -0700 (PDT)
From: Stoicescu Cornel <corneliux.stoicescu@intel.com>
To: poky@yoctoproject.org
Date: Tue, 20 Aug 2013 11:45:17 +0200
Message-Id: <1adebc081d898ee14963b20276efc15acb1589c3.1376923556.git.corneliux.stoicescu@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
References: <712622e2dbfa2559b873730bd1d4d23cc827b295.1376923556.git.corneliux.stoicescu@intel.com>
In-Reply-To: <cover.1376923556.git.corneliux.stoicescu@intel.com>
References: <cover.1376923556.git.corneliux.stoicescu@intel.com>
Subject: [PATCH 035/186] ref-manual: Added new section for layer input detail.
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Aug 2013 08:41:06 -0000

From: Scott Rifenbark <scott.m.rifenbark@intel.com>

(From yocto-docs rev: ff952a9681df798cde34b50d1046233a47ca0ce5)

Signed-off-by: Scott Rifenbark <scott.m.rifenbark@intel.com>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 .../ref-manual/figures/user-configuration.png      |  Bin 23369 -> 23323 bytes
 documentation/ref-manual/technical-details.xml     |  404 ++++++++++++++------
 2 files changed, 283 insertions(+), 121 deletions(-)

diff --git a/documentation/ref-manual/figures/user-configuration.png b/documentation/ref-manual/figures/user-configuration.png
index 2c81dae08c22fa0e7b67cfaa75c7a89a7d23571d..b4dafe60a21ff7d71980430169f33f25fe84959b 100644
GIT binary patch
literal 23323
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%0Ap?
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
WcAdRgAorOG{EYR@^h!_Ri2nhGk*%Qs

literal 23369
zcmZU)bzGEN+cpftFbpLPLrAC8(4CTkq;xodbT^2^4BaUp2qGYYN+TgTbT`r^Ee(pG
zz<w|GzV~xK-}C+94`=4OR-Eh1<2+WZj+QDR9t|D_1_q(Jnvxy{2527x1Jei!0=~%z
z%DMvnV0!DRDq>WO((M5s!1fA{6)-TWlku;uuz}CG9%?4u7#R1u?*3u+xtBh}z%X4=
zS5kNqV0oAqG-qMpd(<APJ;u<NuWH7yh!S%u*TGE9B}tP9b#p!~e6L!*q*+LjQXGfr
zc&{3khQWlZ{+k?y$;OD}?DgQL!XiyE$DO8$<%~he3s|NZ=30*ZIs9b<7n)rNs%)+B
zF8^6!FC*nWCbFGv(-w3n6GH7A97J@}Aj-vvT^vT90@9Pmn|_RZ`vv<`z`Or^R>R~v
zS!IUhfq~zE{{s)o-;fidr;kPSyZ`5_FsRDTf1lTp!&ZX7YqM+iJAA%|#CeogQ=cAu
zp1XQIKNe!RctX+m&rIYW<&97#)z&@lvMl5Jh-;wMbK5SKYEvbTX@%?v)(VWv1cOxP
zaPIqzXK?B31$BD3ltp_pS{jNYUpqwe+(&f}<#<-p@cpy$#|Dg1h%k^E{lkY3FO09g
zr4A4$yKZ7Uq@=ffG}@RKdV8hzojT8l_8y(m>yJj2T8DD{D1j!$%zOOcZv+gQ`t3P1
zod1kuLLS2e>%bJm@shY^4kgc;Nbeg_icbmSV#JXB{8vFyeX3FZ5H`t|a(v9L(99e|
zzV){d8!%aoPr%zlY0Z!i{d)h%$+S?O0G&eQL8bTvWEqACWT3#N38O#B=nf~m@q3K(
z1B+gfC<=!AR)OPdcvJRrwN>113&DU)H+}D#CElJ)ky+EayclUA?R>vA3w&buYd;$c
zJ%NJUn=hr&x4SdUS#siF{Alfq=FhL@)JdxLF>lMf)5;!Ofn%u?5sH~fRLee0Wo&Ph
zOiS*hjnKiihDOZ<bw-%M5h!~-bP*HwcV;)`?i>C#iyNej(3c&sji>#`$9+Y*F|nis
z_HVU+>8UkPziN^Jd1QsF6@t4=me{;i_+G74t(Wb;;y!aS%70XW6aPx=$}e}C4c4ae
zy6|{f3A0T_IH@&`yujyZ5+YM;%m0r|M+_NnwJe9WHer;e*|l8JR?+Xg|FnB$Ab7HZ
zv|?0W58WzqT(mDQL!;7FaC>tn2AO!|5EXN3(lk}?6TFXCS~W{s%Cnv3M#PlxzUt0h
z+-}FrD)Eq>%kK~jv!(48QxYA&_jERGeeZWz9am~@j{PS*O$$7Apv_ROb$1#m%E*e)
z_=p5&x^QP=%dbA^!K*Y0?*b*OodpsW2eJAKGz)vx>#G!ixl^BPW+qv)oI-nx=%`+{
zu+dJYmRg_lp+^Tbs@bS5DbC0}km05i9fLN-1N8dmzI7j;=yv<yvUBb&eYTev5;6Se
z^mE?Jzc~)KlE9Qmb{uOJv<{S%K#!|uAdL5_M~<rY6yQfcOWc&P2^!)bSA^;)y0Fr}
zFn-mIA0GPEbsV9}1$E|~SbSsS3^!~P#M=`ni`=nP6vR6a@Rda2DoD;Ca(=}YQK;XU
z<Cz|y_~v17)T!XdKYxXY<^5_@L&nH(FyhuGw|X|xqN`BWzA^M*vUr+h=GaW_gBp^1
z^9HQ6N6XI!xfOWQmD=ko7K7nD?{w^IEE?1giCK`Xv0sCnvSj~QD%a3xLMLMpXV2dZ
zCEux0K_Ff?F~L++(Bo*6uY9L-Td<)5KeiYf8+Y<|e)(j@>f%=4RB3u4;cotClM*+z
zn`^%lTFI@23h!BkN>1~V3aJpZSoQRGWNP-uj2!uO@mR;_b4oi!?;`O99xnx1&yDq%
z&J0TH2tO=k)t_qX!zXWj)|LOEcxshd<ak4cJMGRxZI%Lt)fl>%un_iVN9|&#uiw>e
zru)XmV$*JA3_XeZOfB4U%AXR;bKqm&J>h_fb)r!CZTluQ;}-{dC4r!;YM4DSF#_E+
z$A@LbN9*iBaYJjz7cuKxn3WPB{0N>MAIh|~M=iy5)9laIT=ZN!ZxcJN&3NX~?BR3s
zB>Q&rzr|iGA51ZR%)E8AQ0*{rn3ZfiVYOGfD3UWh@graI^Wr2#Wh40}y<+m)gwj7=
zlDHAXoV{dOu=|E2uwr>tc`ys{TPtsoIo^|;R!&2|N0YPip9gh<0Poq<8o}AR_Fenf
zEbS`jRW_;rbRo&j$B#Y}tgj^VcDz)SH{Q$szJKiXW0vRcEu`cFMpW6x$CB)S-FBS?
zCW+?a7)JTif4%m73czch8t4!IGYup5LPZ#~<j_9s>wk<?uOJC82J!v!1DD;u@xawc
z9z1m+B)^|^CwRb+bX2jUO0?g|8s?Haq=UqF_Af0B{xjg(19-$Rn{u)INAhur)el)_
z@h<^|DFcSg`90`lVL^d`Ui*{!G~~+Gk@X+1@Y6sZtiL*|mHPfk7<l9Mnd2i>8uq)N
zO4X1ow__%*UoP8MO%Js&NHmr0-;|VV0bBB2aK2mJnJ&f~n}_=$Go#B#U}E&9x8Q(A
z;$2wU?a?a*mfHPb+zYjyhrt3qf4WdCp9}oN$#%DXe?YilFcQsNy@sy~y1@Lu#@u=U
z0mw%qLgq)8WxJH&gWt>b<-tYTp};)f0U4=?WPfFI=QS3|{u1iJ9Rhq?00^!XEMz;F
zu{D&%o!6j`IfKZ+xLbHLaL8%U?Sk-oAOZ3`9sz9jN8<QAJ0rPS<HmM`z_9<$7Y4OM
zpcIxti-clJaJyj`X-A#o)VO7XTOM1}`IsDo%x>t}0LKJw&>D&aOHu;dQEk-);TI|F
z>i}gs9M9L{h`uJtH4{e{d!Psj3F=J5kAb(wVtGjYD>%_`7nf}O%w^{FVmDSOX<jxq
zJx%6b?iV_e1lb!vL4Z{Pa!Gtz@2wrk!7uo0e4Kc)eUVWz43=_|y_`CI+8+niYbHbz
z5{z%qG&++0z_1YnhlSB260{Nuxly13OxNcdY)r7CK94xvR1F^K+#wd2CMHL~COM*D
zPAyD?0E3pMn@j77R$f_|n(o;bCAjZj2Zq<cxx^qK73dU*F_i+=RsI%U@p-vf1M_JS
z<~{jba2SMFV0=gqOzuTAEdIK;Wph*1r4gz7BPaE~^*T;%Z7<fC3hgqq_qT;dtV*Xk
zH7~xX3Y={R@i<Ev^S?V|&dvaLZCcq9FoVt|KQh)+XTVSxB%d6tik4^~rBH2kWuD%u
zj81hzeF8?F^d>M?ob^pFw6}S`=Oa2r4F+K%z$!`|?=@5ni{Gl{xiYYcH~inH#%_<Y
zB4qz9ChL|YMz<abqjX$K)H0{@j1Cfk8HOA8$9_cw_}{A(BZ+c3hxP`<Y$~B*RY-$s
ztDq$gYyHdZP?a~gfE=dp%ySfM14BzGw`j-(;ISjx>=Rit5xWt;8sWaFzEElvwN28G
zF^zU%6mUZP2Zkc2H3c)s@i3W*2>%@zT8X7P*ZrW4dIsUu7f(tThxmRwUw#Q3?k@2#
z|3cIImUOD06wP$u5O-k(rtVt@sJ0arBZi;xe0ZqAvq-`-LWhFIRiX2*7QgskuEm8O
zZ1^oa#W*#k5FPDIBcLCku3r74sNqJJ1Svs0sd&gw3J!w@Eb?<GK77in5Axd-kNjU7
z8SW6trmIyWGQtY3)p*MkNv8gG$R*dCL~~iLnW7zt8_e0dsH?G#`t|kov5<>eCNPB-
zD^ux2HtYdYwrw(zv-=0oV2NJA3&1v!q?$H@?<h%2Kre}h4U*q{Xf4Cbc+)Ce1Xyqk
zqI0+^?t?M#*kiWX4__mLFslz28?+q_@G?pOI|b{zlw|yZQ<O#^GLJ69E=nGRY3sR!
zWlz>*v8Mrxpo2m}>x&-aJ$WZDsrVrVvC{4nePIW9P7>{m%D>+?*q&**;sm~+h`h7$
z>+5oAWjJ&8i?h;}C+|8cr54>o|12VPN(yO)H{VIsiRlB17f^V&ZVBSyU!T>H-^n|&
z@T{@AV-OLl6u`(_a-q(>B&a4=f2m(LZR!36+M#2OUpC*pde`yGSs8w8_T^!a5a5_&
zI0gY%TSSw<Sg?XO9fQa`$SwwU9)lPhTg}l0v!KfSZw-GiXO{>nw0>p#p9Ql(N*h2k
zq{H&7i2BQF{W>uNK&`H>%!J|)O7Neft8s0nD75|VCzD!Hx25dOuDY@TvwajG3RZW_
z`OS}EP<9;Dd>J5-_wrldTCc4~FOoFh$OiW%-EWo4r<C)n0c6OC8W0m3G9v{xSp+_3
zpsxR(mSvX-l6tf6(*Ap<5+WJteJz`9|0bAnrSUEO`Lw>a@1NbKv+DGJR+E;%o%`Z$
zhX^p{Ps0K)6k2t1@BJG$;_%+r65f^p>yf*v25SR<iq7xtkysrU!2;IBdg(;2qj6_1
zPuZe<X$60FHrQzIa?lBpXtp((tfbwY4|-ZEl>7G~ZvE=@wwPrkdmjyftb^TH{vj#B
zVmuZ9N^4NVAAvfDKi!C5@y8OkYo6`VeRI&|qBo|2;EU4vPqfJ)Q*SHPYdUHv8KRmH
z)KZ%n-uF85yR~&h0pU;^iC#T`E5e`t6?k`S6K(}~E%xRPq%t3CDI_Cb&zd5y@?00{
z9Cf4AR)l=NKQYJn-nt%=wcqU0h|BI*5lhBlJq;}3s@lM-w{@*vp!#(xJi$$PDiKbg
zYQ2+~H_ZYYoy$d7=W)CdSYOc31~ROXk+V!C;PA#pvWfia`9rUUK5JFuwdr7cF=cOl
zO7HYK+Z+&E_944Hl2o?T6azmyS-=Xxp&&W1(GFtCBc^H$-HeY`lCgnGO^AD45+S0Z
zOwKs-3z7Gg$&+b!8E)ue-oMV+qNIBKX^IVYZ<F3E96fE<QD)UE-c*EhQ;)~Tnis~U
z5{pQCX8w<2IG`l1Pr7C+EX*8k)6c(f6U(BBpX+R!)CDU_NKFRrD30~}^nY_H^8T8r
z`quMQrq5TenIXZ~uVV`Vd;R%x{2q0}Z>x<A@0B<iNxD&~H9^6i4E);&tkY@fIr;rM
z$bnRW&^HDh(x1uMBSh9k0>huC4DFr8YQ2Q1(3`orTfDJ<TkLj_OoP;M%Xv4Mw)9B{
z)~Q-oBt8}B@p$-eydXrlXa!}H-7Z?+ILG8T)~7BH576}O1?S4v%`^?!nP3fF@d3~N
z2wbx5k=$Rv2pQ>*_!|#p_zDta4&|Rc*Tbg<NfGu_&rLAy2UIC?0$I5s2wlwgX|5vz
zyrCD5OxmXtw?4H|22*9dlYE&=QqgG&CnnUnC-LdE1vs5`W03tRU=@*M1jOLb9OPzP
zyaFSIbm0yfhe3&GJi^#}zr5idAtBObPQrUzlikMnn~oG&tzn)H^3Cm!_jlFt@4fd|
zs_M96Pu$>mv}8ml-)=(|&yHxnb60l@IZm<?D87uZ<yi=^#{GlcaDNe<G|?mpKF^Fl
z4s?Gn?^S#VZ}iy^msQ5ncFhp+;9S6UpW9>bp1@iNI0)-eYbW%PaxL&R-RNHz%hne1
z&I2^$c=w5k%0?g4@Hdr7rtH+xM!iq{6mP-v%J8dgyFiUXz~>pGFv|*(zLhXj=^Svv
zv8xn?*5VDEmEgFw0l6b#JaSh9+9$1k{J$2>8&9E8dmKMSrKJx@hRfdPe{q`mz;JsK
zT`|U8|3+stY4awFo2bwHTr}x(y~rFxA{cT|*E@U<9RR5PdFF<;6r<$p-hghVIXdYh
zUx!9|4C-Bbjs-WHL2UOT89yQK_u0XV0v>KwwV3WcyNM|7gMvb@>202W?GtdWnTRlU
zdNjtPPu-}Np(1)TY$OJ;kid>Ro4@f3y_S67(e8Tes{JhJ`n1pD#npJUY{VZw8Q8Zz
zLr2`7!#&3bOD=yTrA?D?rmDzdh;x_8NC|E_a7#NaNScbhg^v5l{W7$rW<RXhfo)!F
zpzue+R4Hrs8S*IQ%mcw#a-w+Hv{bW$semT9yJa@80?s;)4JL?JNo^9_bL0#F8`xIL
z;B>gz5YGqsByjpB3yV|uR5n=1rZ?f|{%l_jzN$r=Ys=prR{ht-L@5t20v-o!=?%W-
zI?GY`{1;#D<MplJ=F1;c=opO}P90u!0U|sXagykFsas5cz>IQy&^QMqS0;khy(K_y
znU00NwrM|1k~)%qxrM}`hd-45`5e(zWLED|T`%%`q+sLFpa2L64M%6uDdsQsF06d6
z>OB{7KLByS;@($a0Y1>}Ex)5b!5qi!_Hzrl(x1;T$QjYsXIbrZyX5t?azlO5Qkl4)
z8XAV`6Q@?50LmZO`f`(_2{6?Onqm1jxA~qJCYnrjMo4)m`#|)l?P9MJ5ZwP8Z&bij
zD@&^hFK1&Alx|X%LHa;s_}AKjtX$|UAjpUb*caKfv&DZ8ngm@Z_DjrW>oarq2Bq87
ziY74eKMLCcMZY)%mi#5XfttGI@M9?nnrH6$>wkor=4qQ=dFMr(;H!i-&AWy1qV6jP
zJ!vgM3Cagl*r-1LL?tQ%rP7@|e@hZKjS~}YRNyhHd?B|C5XkBhkGndMbO=WS0uO9h
z@`}$AO!v=BamLB9Mx(F^+UNj5;@=~;6z^q*>FPp(!~55FmOMu(d>CcB&mR5Kc*xwk
ze*!m-+4ie4u;!4O?&oGzz6pP?k8AyYF_$zpVA0x#OWw^y>^2Ld-2NyHk9q9mxrDec
zzBQ&;N@18F@%0F@Mm%9rm$?qniZyfpWnYIXI@CxCD0(iI+R9`5m3=2}{(|uoI8!>}
zn5v#@uGVE<Ft@)1u^AANNSiI86yYX!EhO4a{4?sZES5LLS@><EyvxM{d1@!n81>V6
zuc+A%5Ehi<ClE7iUHJ;w$cIYwrW#zWwQ(CoNAQLfV)x5|1GiTmXFi9=no#3=|LKp8
zr7<QSe9O1?bvCskr6@WKjWfJG%tU&HNdp%`NFFQ2L$=;<c%eqG5`-DrMcgMjpiYlQ
z@J9K64$Gz?8NTK{p7>jRwszb{I8kK@2zi*=&RkSf)SNt#2l5qdqMPe8=LKSHm)dEK
zPDE?5JBJPiF715Y#U@23;Xb8!1fggJwacgHm_%z~bIw+~{_Z1h-(eHT#y}hyNj2a+
zGjr2E*vo3VuZJvZ9^3B=3JQ6wbDB;j#BZ5bKcjqNUk=@#yE6Mf37p)s#e3pw7~WM*
zGY{<Cgui?ib6t1_-WYu`XBAy;QX3`X&=r+PpU28!e3oiMGIrRonnVu{dv9lh40Jms
z&+H(%=kri8c_b;MZn<aj?aoNloUZor)%gw!>!%^ZN2E2#qcm4ZP1lD@Fc)$u%t!|h
zCqe7_+4_Wue--GTWRHvz{cIqhe>~GOHEMuiSu%A(fi`o<Bz*m#<%do5c=CHo1RvWR
zllNJ<d+^W+r~@t95g$M<^IZVvZ66zq*4o<>`gOmM0Ee9kX4+ZKn@*TqUDHDMF0q^h
zeS+mbmM?QeWYSO^JZs^<-rC{1{KXfDM88jyLzh}UZ}b?Lz68DFVnk81Wrq$`*$x{-
z-J`x?^tQorMR=b-cj3?%pA_XMtv>0%$ev9!m8bvFq4zk0G)6oi;*}Ly>-q|n7JBh%
zKiemw>N=YOn|C>LGzl*=;1QVK$Ot$Du0sgv+5;yipmlnkv|89WH{$g=Pu}>|KfV4&
zg_YOY^p~jb*%%KA0WP4_`6OsoIoD@g*oAi*$&uZXMpwCpfxUz;CL<}qA1`3YQtfkO
zK~!kApCIG(l9bN2CsKOz9;;tB#PPHWlW4o!cQ^4}sPvcG++tlWDEG;M@|MNnnccv?
z$b(MpL#W+qTX0x*y=%kD^Zh!b`pOqu+#Oj|PhV6AGOzU*6#gRx$9w3_m-ls5J&(x;
zhFrx%XzIT#kZ3x-aZ`BgbMtd{V=8m;Y-{MWsR*A>p;aEQ<PJblg3FqQAv}I^(5>~$
zq_yxZZqXY{Ml)xdzBr3RIGqY|^*;yXOM)&Q%B7)*1KgA8i|zmU0Z2NX|0>J-6S6uW
zHExlTe@X_R7rwx#PN%Q9QDr?t#f<y!0Phq{qv<=KA*6xiP=bHH9Hu}|f3wv~`Kc!l
zlnNx^X)_>`<dyYShJOxtMgFYyA2%lZ*VUNZ@7*Gk8c#o>l>;LS-x&Z{_i*;eEG134
z`SD&ZZ@k9J?*F?UMid}|wLkN2ZCBeodlJn!{(d1s^o({lzkiw(J`$(&W~+0_eg!R|
zeA5KH*rJJ7V|f=u-uWH9T^fjYrygT_Z?}_tK))1;@qP`S^^VPx8AZM8_5-gyy}^<p
zHBgxwHK3t>l?nptx02s9nwDj=Tgj&zeO<iIbwF0XRhc640-h079G^r(N5wY?F1kqx
zDn`eL)$lJ4s`14duOmcnrf5sTG2fp%!GpUzTG70Gik^}m;b<(EImfJ0b86Q(uR%F=
zjE~~9Gk^?{eE*eU2@>1|PR@wUNNySBNqRP>Rs7;2Ma^SB!Fj_X8iZlR=w7+*!H7K`
zjWxm{xem73OVqM<hF7tETcaUMe=baL-g`-nksA4Md;kXj+R;N}EE`N39QQC<UON8&
zoK}e-%1Rf!2*50~y9$%aw|47q&1m;tiz?wQ8oygx=J*<`Nu*IZm1M2r1$o6{8out~
zPl-hi0+S$5$A_!fGZEt5%?-2oUFUW>6p<8@1cXaPyX%=o!Q8~gv4ju7`tf7tz;Ro$
zW1H{;fw2f2&cLeCYO4ukB_mpJ%LR7A?rpCWFlG-U<0JUdJLZp}Fg;jNz_3Ejo*x4N
zBc#!8Ce;CE0)@aMw#LKvIX0Zh&pcSNky?ml9Q`wn&(M-*Xb}rqau`##*;A*Tw$;2A
ztl-~4z0^}?mcF13BJnzB;oVI(iUu<6<#@qr5!iDK@X2#RQA-WMXorpG#L0jo!XJ1f
zBL8|0o<>Z-HCWEuBm#4<NZ{951K_sLm&KI-RbTyJ!ro@hbjhbQF&#|K94+F?(JeQb
z$(&D&%Rx}ma`bpO6Ue1%f+Dmj=Kw^Db^q4`y*h}^J>Yz(AuT;osSyYlUO(Czk_6sW
z4DQdxpJ70B>9MZ>G?YIb^(hN5x9_;@mBM?s%Y?@~r*1>G?`Js1*Yx)Vh&US>SEP;T
zb|s@*gJ01@zPNr|&F(UGcZ21NP4%@hK|}+-V>@P64~=Q;j9&v##P#rUvwtP6u{-KC
zq02nAFb(t;u<HRNf_~Pp0>s&nA!RjQ8;el<^TbxV+5b3SCg@_>fAz6sEZbeN?AH@V
zahEJx(QQ8<e@PBC0gwbJ`|b}q+NGwQe6#if{CHz9*#QU7F8ECq8Hd(u5$CTa_IZ(_
z4cZ}R>A(ONeX<t<vXLfL8afC)#%I96GiP_|eWc3*l6dwxZR00~Vf+xjYC>2C0mDOd
zg(6ZNiTJw=f23ZUQw#^5M~Ad9S84Dy6^o(GgMZFk5|E-Ju9+Xy|MM80M!A>yoqIya
zS(41@Ys<`pBch_CJ-HK3*fx!Hsv|%BjhH;jnPH6t_KkZ*Mp-@bO6Wap_gXXVlQ7)t
zE&Tu{?s2AUs>P<Ai$p)E&bhYRpOx;*Uqm!`=4AqEH;4o(nvcHxIcnzDc!Jxv;x)vJ
z%c}wJN+YX~44PxkPLZ<;%CORs`T2wb0SY}Nw_F3<pjRn6BZVYgv)X0828TX?G1gWr
z_kiAf>~b)ZyP^?9T<f{f%cILi7vDr`$}TVj6KZ5-%6Ud)1}3|V=IP9p4Srrn5bn;a
zhsl0Dt3?t8>;XvD&^RV(uNP+7r9z+mT7%%eMs>AW?bxQ=$L2{pNR3A*-cEDNiDFc%
z!Y?}=)-|s9BkWwV|D#CL`)7S3v*uV0y9&4wvD9zg9(1z=c?9D?<_s$>NAitP3W6oC
zQYjDSZEPXtA&R-TdxTTyu&KbG32j!5D{GWlHsW~(*=v}h2X*lx6$zrsE?hlQc=sEH
zVMT{3qah%|>y6UbSW(08-(w$6<K22rcO%KP`GR<NnOM5YAo}q{wv_}$Ai(%Vu&M7F
z3;@nHOJLSZkRcNtc#Q^+P2=wje^V<wP#Ux+ni6u$^K@<5*TG;U*gO=WOX?n0O42%y
z)e=V=KQBt3dj#Q$6>seAt}3$17V90uh~c5Lh9j#>@<pm%{AT?fP^tBUa~MvkzebE4
zi(gtB_<AqA$$Q6(GMpj}?;7D4<)45AEliitQog*I`Aglt%Ri352XD~=fecj?VVAyk
zi+X8gH=O+zq-kSm!dt9}tpeT71eD|0pX2!N%0Uvf9@<^aL{)>NXO*@LTPrW9b}fE*
zLB{1`Q@90q$${(dz6-j;{VtEUJ@)D9Je_e>h*Tto=eudRC5)dZ0kFpDk=M`8la_fO
zU1O$^@eY|ddN*C!f>!?w12*pJ##Ax|2lstnLgN>T7#`NlbEM<3iCrTdiI2eg>wQmO
z>2Kg1zSqio6odYw3)U~W%=vhSzjb~<KjVP$y9&MR-S*mc;ST5~O_(7ic%A@TGL7t`
z)7-2EhlhAz=(QQB7Fs<68pp)U#W=G>8^?YbpXoM;#Jn=qhjS?!ctYr`Y2)Ka3FfDx
zYBAVRj^B42kA2H6nkg9?cix1yoxIEA2s6yPYah@-x2s)f&rC#dii#?~eE&d5E4qeD
z7qTO@YQ-;^n%}A=t<2ubRJ$&J9wsUS;2n^Rhqb(B^^Nx?RCJN5R#77@)r4<EBPHry
zdR5H9rQH(}HL4&|B*lx4s;*a}%MXcUrVly4Vsrdj398)NR!Q>vf$c>|%$v36gl)o!
zT69D=lG%p-^rhhXmE41(tGQDzg|k6de871;(S~RK;q7|o3=4(7|3>oEI4N;Oo_2SW
zWl}<PQ)}BuSQ=IRNmD6|Q1pv+2}g6sOQe=NN+8;!6Q6tdceNEO6U+?XJn)6hkXVNo
z7whxscZ3zGAA3DI8ElIU<@tz4rOU;+4y|yd6-!@(@}^%6?R4ajY9747`E~pI#r>C{
z@CRX2pCV06G_>wISI<%EecThehIWk9j3%Z(QN0Iszri#woMg5!180A3H+_?zl{heY
zyUyd5n^*B4M{ZVTmVhM8f3A>Y>vQE+x1#$i<#UsYzZ3s~ak+S0v?iETTiEose^$zo
zW@#}boG5AYjbKd%Xpel{F;lDIBH=snF#cVwmM&)TZK8A<?^&f;alT{+k~#b0g=K^5
zyX%CItF5fXdXI9kx4=<uPa{B@71)s(v%U?ePVV_~DEoSJ-mugAu-ol+KYo(|%y=MO
zWaBV@oK*`lAQ=vIOb20e1Hc9~)JZJwZ*aEa4x9ycyC(eL*Gs_9mfhFOpsTvWx-E`o
zh64dCw2TMs^bG}^P6h$^bFLPU01mLk531fJjd)r`UQb^E3t3=N{%5YHtrY-GBYXM+
z#h)-RV&kv+^v}X9P!*eZDy?fX{r|?AGDfY>jtgJ{sP`(LB$?b<Kg%VHy}Tx_w-xUt
zpZN6?%Zd08k$(|GA?-6g<?bqGZ7;4`0?!dqz1adb`7h4Y{ncDJT&!<$KenY07L?rO
zvC-sgI6SDbd_>#Th&yEtSL$BsF@7Fsbm&!&Arne~>j4LBt!I3ET%pqCa`_GYmDgYf
z7f?TlLyDw#V-LZ*<8lnR@^ixmaX(t@$LKH7S$HL|k4$$Z%imI4hN3@RnMnOwYMbC=
zp)2r7oxq9?k4TxVeoKsc-#CgQq#z0Lm1&#IFIAdebH`TN=`p5nU5}y-ASe9N(@<4~
z<92ob%5Hn~+YACuX9r7SChT1>+Ouh#i6+J!84shDp`Cj>m1!r?2!0qOovD92u+=j-
zq0R_?NV%s%!3g0$46H&a4gtNm)kFk_0PJ3_<5UUK#-qNQT{kOw`~puJW(_Ik3uk)1
zZ>aJ}&+GwjS%VWZiRNKS;bxdJTw)qgZ@ZWhTq^;)Pbilw>e@*ryRtMt-uTz;pVVVl
zyt;{p;RYWKoAl)XY}TW*X#Z=ux9b`i*6GHVgJNpQk(Jy?x1v0sctZUtT9@t7y!a3;
zh3Gj=$}_U08nSGZZarQYe(;L-n9Px&cWND_7K#~04AJ13`(z0MRr%dj?uI?Fly+hK
ztT6AP_Z8fi_GM9P*4Rw6(A{b+nz@8$EXFyQsn{=U+~(Oy*T28~Y}P}z#cv4K7bKo`
zlO)l!1&3=6zadb%wZoE8>tZDWYUtD<$A=(~iHQDA-b_UHb}Urw+Hx@Y0#=aX=-{5O
zP6}bx4Pzvw{tSovSo=N8;6w!G59mR-UA!}VX-*r*_3_X8x%)prx8<JBpWy2hV0uCD
zX{8mN6v81cWaQ(BrpR{p$X<K7Kl3~JK}q!Ej-wLb+@IMvV>2fwaC0;P;X)VDcIT^J
zgzW8UauM=<JCK8%_N%x5b#v?uB_PHS)r(hFYdDB*rEVtqU~$)~`j4$VV1a2M+z8q6
z(P0DuyuE`Qx=I+X9bpB;wv0al$iI;$P&|<yjVb>z_q~ca!|aovqG1=YYz@RF{oW%u
zLe^h`uVbqRXZ;Uu1R`Y_ldS-pf;rl;3GO<B5Tko?$iX&CU3zgEPn0+d3B;&An775+
z^4w#BBSQ#m@g6ODIRlpR2!dL8%z?s<N7U?Stn^QoL#6;S*l#AyfULT;!3Ugb7%ks3
zA`k)PeWHfuP`U%UQi#nAI{^-9pa=}Iy1+|}Vv=ushIrNHPiV)8vf>5%rqY+9z3@ZV
z>1eZAs8H24gov1zw64m4!}*U_0etGfJ1>mO6DQhU>XwY~v8OdL1_}pS<PASS&ybkM
zE0F>oNE@pJ`WnTjC;?Iw8)Q;$AbiD``;lch+T+rSfR*Bx8@;8eV22a!AXpJT&QQ=n
zlVH(^saZhQG4bmGDdd~=<K&NOCtdBIqqr@3<1ACW;@Nn<caVa+9^fDBfv=H?MyXIs
zpGYyNC<|-zsBPeaTLzb;_mJFw{hPiFP?LM=u470VpJFu(on%_NwEXO5{}v4YiY3(W
z>>GVe^^wP{5M+TTpG-^D-R)I3D&gJ_>E^0$%3Gs7k<BFAY>vFw5%TcNg~Ju9Vut2G
zN+0W+mJP6~$#W+8s&o<B{W=~uRduFrD%!0k>-+t!yjed<AzjV>xMFqHQg$xTl3EQ@
zOZcWx^MvYa-Mas(j29#9&lg^iI2{bOOdzeTgpQ4zm`I>E(|VzV5^gQLv)*%mzH6_-
zpvJ)?UgpX}7P0>xG6^~&zt59wxF}hc=6S|U&ny9|O!-57&STy}SNW9x(Mcuv%$DWI
z>u6xgNj;GY?J^AgoP{q$CC_L|H+)#Y-sk5)aQdUQB0ZV%LJgS#DAC|>S<XjI>?h%6
zECw0WwRc>Gj9C3HkZ!>P)D@AdUI79q1Z*ee@9&VJ6G(^Mg<O!&1S2Q3u+`vl09=40
z87Z_4A>bDe9B3uKOir+OysuwlO|N!Wtd!&hwo81ZM03vEbsdN0_gW%*@3NQPwi|sy
zE}b@DktN&i<r?5AMNVpm0cHT+y^=5z+6KT?l~-+dxfSHm4zDmJ&>1`%E;%!31AS)9
zwrKW~DJ%bpCw)FFgoVz8mPG0Zj;G!AV9&fO?1uG`ro@{2-VI<FKphd%iOTc@TsZKf
zbZyy-mv=2(9~~C#lb2!qtv~b>lXMAHfM~dP5ghy{xM*2EH1<1n)|)z@l?=!Jz?>b*
z@a$pS7Qdpib1g`m@G{5%ckKRM4Tg!97W46@{j~(Os}<$a$piKwDg<<0`A{UOn;+$O
z9_Z1YVgvhrlI1Jn9Rh6Q`^%n1Iv}*KUh}#G0yqj^S7v*`^}st8c)Ja>70Th>iH|8f
zWl$^{9$#(&X4&pH`dfb2E+47Sfvzu$67(s6*R)-ktpLOyl3}1yOi`{=M?NC&*b^IH
z-laZH?e>^KbaF(EGn1oZB+d*F5s0?m=0K1;3a94u?l;DZD3HGb*Xo<?17@<B+rIS}
zEMyvfl_<(J&JM_@ye}3HAj#ald4~@<>aTn?eR{`zQ2@E$WB~2$^M;mKAQ2h-?)rpL
z3VprENULYGKh*%9i=A3~pU1o2lzz%%fO2mE-A7$H0v*w#a7P=`sT{LU^1Vx8>$vH}
zBOlnZhxnQgPP&NxTEmg!j43q)cC?XN2vDaGPr@BNY1~gI&6MFl$+oue*}1`W(a`nw
z>jA)(A$zg$o(xa{)7QObEkANd3FNys!ho`n`w_&F1FG_a_^w;s%c4Ah4{ZHEPo3dz
z2hG=0a2sMMc?duk!--^}_Kgp^-_N<V{xtltMsf)B3Q3aTZRev>6S40BLTG?_qlZ;J
zv9RPvV6gu)<pK#o%;wP3TS2|uucHt;%nW$Z=qn+denk|L+Hw0+?P!jKH#_0@E0JGL
zFX(~Orb#Ae<JY+p<KLUwSB96C1dxMX2*?YlSP@2*QL2{nq6V<!yiS-<ToP!p5Fjkh
zgU=)RUsw&KvGHo<nLZ~5hVfGC_Yx@h@7^}$;mOix(DcbEZ8=w04gFn(cA4OPv(@JZ
z)qP*o2_O@?3eP04C(N<GE5kq4oID_PL!k{=%_Y1lnXAibhQpL}>zkk@o8Z;UJtg=a
z?lu;~C59*X7j7Z)8y@|HsJzK%CyM8dd4b!n`lDbVtOdE#ZnDcRJfV}SlBP0!ZhS@L
z0l3yZg|Lj<roKCoKMc0=Zb&L{e!Dl<PXQh!(ir#5)k1lYGsLnh5kZ<SMLjmzyW`HQ
z15VFJ^z${cg7ug(!qn_Waw0{Y9{>$mVW2n5EgV5la~*8|5DUxo3Gvlq1z`(hLK9{e
z89P%BlkZJY{Z}CJkaz<&1#qt>M}ymsfsP?sEDY)qv0)spu(2M^0Eu5qC7koH;ov=;
zw!^wXFggqUD0qyQaYxShDXxpe_*Z#VoZ(zvDx@frmH+|AsLO981bE9z48lrqE=v%h
zdO7eo3cT{0OBrsRbVo)YSB6Kt6dDx|mw<ex%tAngdBzGb#{o=MtCuEQ5m4QI&q5I9
zU6aW@kPKbS0b3cMZH<f20>uS!R9Z+_FJmtzhx}j>LP+4yr884F#*nMM{l9Y*b7V(2
zZk+Zp9J}IXsP8_q(__4Y=l)}icUI~efpGh+F7@k^|Jn9SjZIa&j7q?a&n;Zb@4Uj_
zZbEZiB>OBq-7W(Z3@rOcPi&d~`xVc=`}rnkqiwfCVt2ivlVyns<(HJP|M5V8pIv>%
z5e|8fl83nU1y1y1o$#w!CAEvY9@Y+TpuMHl=GIPOJRc}zYl}CJ;Wb2V&joiZ4{+|C
z;P!)4tHa0#DJPL?R_p*sEew}&Ru87=&!&Y-Tagx;yaJ~i<%=56S6PL#9jxRDYv^r;
zY0vWFe36lPtwiK2<aa-Rc78Hd)v~CQHTxsIoI%iAykhzEh=(ZlY-OT*Bh9sqK|VeV
znybPb;k^&W5h%1fbTiEpllxMD_|^%jtJ|Pu=p670LTk+^Q(zT<yxp&8zL$5RA~YxT
zL|B}PsVjsR{gCXk?%_}-Z#dg_5BWg^&RDK;8v+f=wyLG}PIb`XV9r)lU^3nblB8|R
zm14?b7278st_?r55Aoa`ll%3(Z5KJQ9@^}?`_r9f-sXPi@co}<?`}AP7n@Z>6dhLX
z-|*sCDE3)`r{;cqioByJPKo{bvW8mHzTEw)j;hYVL7;e05Hu({#xM+bgGt!Kv(Fpf
zD4R`G`XqWr7b>QrT+GJbKawj(J5~mn;^pUCKE(t?8peHp4ntsIg7vK}4GOae!Sc!D
z&q0<76P8TJy)!V)*IxZKd@<Tx`b1@7-~gprvA9ySkbtLSz*})^zwu)YaJfve!jf4F
z?~<gYQD1ONfPJ<bp}8m^1R;w2cdoC_t<<N(WUR&4!m!5ITsa-qQdKR4W_exUU_02p
zV^m1)vagnqbvjis;d%mgJ2ZGH+9cfM%f`(Dz5$~W%E}S^6XsIQ^KHgP4PIyd**ha-
z={H`Suw~ObF?7LZdbxBFjpmo7_qvaD3If441L@rzt^iSA?P_jZZE{o%4!*Bx4_C<V
z@HhIFsss{7>#Fp0NN*zu7@2s$S#e7#0Ds^wXW0~!w*zLQZ{-`oLOYo^(B9IXK_Le^
z&q?U#MsOEiq6JeY)9eZ#yh#*jv_)g^y%>zsO2gOl6rm^4BonOu3J4^VSTi#XD?8kP
zOdc|hyq+j0<FVeNw2q^Y)(KXaz{a8`c=H?ypv!`UqFsz01ojP+_ZAKm5FIS|X|A)m
zK##!DZZB!zpFIbza;OwUuv&d4W`QZ<`U&g27eHAN^;*;Z3018W!}J`75FnM81`|mL
zlD=H12*DJCrfneY6n1i`D|;YwdW<KWjab^}0f6&H4B~ZV&JM7J@BU^nD}`m37ymp4
z%hG!v4V#B#__;>S0YA)Ee`n(J!R@5yjPubfue;{*K-wd@cXd2x9;+ukGkWfjCxR3d
zF~m@9l)Cf>fx+iTRdpI|<d1BPmMUP&vI`J4pjH8&JN5RuORuYP3fY|`(u&#rC|G~T
z1(?x*A}@9#wn~b!X<K9<!*JUD<0;Eh5ECiEKHn!4f+hY38?4zT%9g?s(P=EaWEQ^n
zTKM5#Je!T5=@!mQnWh<EW;;Rcj+UA(vHJ?iC`vk%2J8ce%vQXH1^QSUl1)KRPZXin
zH4etx#z6ZEj+8PzAk}kBkCM<W1q(S2+&jd6K+K1R*{3k2kr8NcRW<0A7M(z-n&qNg
zo9ntYlw15^7+{-4989X_l?+<6@xtvoQ7G*3IuPa9-g9zyAjZ2Hq`-1av591us&L@K
z3w17SY|wP!88foW!R1J48(>C?mnqM%JnYM1qc*nt>ON@><iK9iN6xyKQBLuQh1f^y
zq?)TV1XWm}f#j{}vrcd&>W?E;CEvax#<$-wbI%b6?`E>SeguUWS!Q375Ydzdu93KM
z+r8M+c&bPwW?6(zNqy;akeYwmLu5zHiyUXF6?b~zV#AW>A=FX@hhqcv#HU}wuO+79
zyES_KGO9^@T$nGr^?PkJ00#&V`(5-di*X+G>VEBwlO|akjJRK#HqF|}`J8u)Y?y4p
zv{F7BTzf~+qxv9U4ffthj)p88CWn2(>@2|fikO3V5R1rj1kn5mhKCU)F?Y`yyyah!
zogAY{SiBwn%yLuA@Z8Uy&VfSgR@|8|Y8*oeqYQo;u9i|i!ERg-?U;X!MuEMB2#=0j
z91sPGHPhHZ=ZLF(Lb`9dUPLCC72~l8%jbJ+ozWwp9ZKAV*V7--@Q{c{Hl(;M=ma1b
zg5uV7>Uzo8U<quv0@A{q<o5n$NgoTutKM?=771!9a02O$jMfuIc}MVhCqDm=R^%)J
z-s2Uod)N@>Y@}s#s(T$R{FErqbKv7@Mf^n^Z{>505`<VZBdrI4%Q%)0{nqWQv!zHE
zlQBpY5gS5xGx<v;$&0!E>Sfy-Q$a~QLJxu{M8UpO%4Z-CGSrn1p8;uXx-g1)dsp}J
zHZWS*FyhlXRCS{gMQBl=m~Ne3()Rnlw3&zIoruE-IJ&fujG7>o7sjN)5))yg4libI
z7*V&WWIpwy6Zgy_iVlNO*^09mpjxp_bj~u(?m#m}WJAc{B-9R|I^MNmPSw*QZ2l%Z
zDpJ6J%H;XsB=Im~1{_ZR61bIvQo!4h;r46lv&E+5NU1exQoyQ0sWvZWDdW@IiZJt|
zPT2wKPg>l4nhXS#t=Iku#$_j4<4NC_dtzXA6c@7kKVhE}z=ZfN(|uoWPQBMwRXG?D
zFp~94yZCoXpm*2)IFH%B(KpF~u(ycNGN~F5XG+3bnx@5%ENBb|pDFWLf{U;6gq~*Q
zsbV)1@2L|BzbFaR_=J&dZ35A6A^2WCB>|jF=P+#Lo3&z;3YWr7;I@Uo&d{)fCq!d<
zDD#}Jl|tEj%CfCvpe630H-ff<zklxk$@vNIKSFya`4irL+B<*q*Ne>32Xtoa=uhTN
zq#P0rCbf1lKd1GV#qA0<gZmp-lNUmLR+uJ6%c$D!2a)bn%cc{2iXSNer(b{mJ6ZbG
z_9P1tb5HHTQC^GRR{xRvmJGKNj@{{8dyU<1u|}jl4cXHJ_xMlg<A`6-^w;8C?tFW_
z>gM;t(Zs(XX7{WJd)WoqZGI~uib`j$aJoz!s%Pf!^Com3^>`X}BYoZl1?YRIpD{6K
zx5d(Z@;Dz6`z5k(m9iWTu=OI3Uk29I+Qxq9thOa3Na=w_B?8>L?iHJAfD5|$$C>Ez
z{@CTWpd`6~rQ>yy8-2cjKksO@3(#CUbP+PKJEdc+MdrEM<<g)(1x3FXI1<_`-zea+
zUpaH2)U^Q$obqarZu3o~&<&ZabnYBe>kaXv-@OMCp3!p##cgCi^LxrIUa=iNKBCPh
z0Pf`grIg>_`B!)Bpemnt;5CU^@+mP+s7T_7-LVQhpZcIk#^;+>T+>}=++eF4K!=;s
zw|JHt+~26eU&Q^zd9>2HSl;*JaYqHFV|WYc@~Y3Sv)yt)ohqDaNwl|CnD)Y-C3{zX
zY)rK+0P0#;M=tf1Q0i;PeqG0SaubAfP=r1Mk=E`9GzM|mZ3e3g)l}r>qg9Vr9<P(B
zbxQ^5CCsGIQS_(Lp6n(6UBwNu!pI+Z4UG3P$m3jY`d<~*sO<nWftS8%rU!p+6NRjC
z?XE9R^SNnb9{SwwX@}C#+1)5nOZOyH4FtGyQ+ZBGs4Kwzee3u2UEja<dc@PM`C6Q0
zmh0kZStE&>Q-Gz6LE;*RkwTcKOlYczfsjs7J?e>q#!-~W3%ntKh`UWnPzAYp1`Vi3
zR+lPZUA`A+vFdAqmoOXwB-f(HXoLqjoeiWuZa3j1YRpO6nh{TfE<efU<en)2I|E&~
z^lMwq%LSn2$^kRi!z~s^OFgOKm@t3+jHqafUI`xTU3H2>bJ?S`aGpiJ9A)vf`g^?8
zIQQflC1n>mJ*X_qXqV2Fl=OKaY<iT2plt$X#uM}G;I(w%*<-Qgh`)~b7i5{PR@4EF
z3;{T=z8$vDK8Z-ic#unJOYD^2_n>xUxk(0irNVq|JK`4r1y)BYZXIT8V`UQ!H;Rt7
zOeB_hM&;epR2B3Qplt?-b#hT%$71&)#JP&%@+P9Z8HX*`vq`Yi4zk?y;a6jQwlCfl
zb{zs16`=*^)vhxQQNR;UM(Di4phI+p(#^{g#UNi22&dIqd}4|@IU?J~vBKbQ(W1vj
zBk<@VW%gK2!xf(Naz`ntNFZ2H_%6c)GA{85FYO4A7&((iX|W@{kH51f(}QiEtWOfS
z8Kd>#5gPEkvtCZh0?e@p(%E4LE<A2}w7JJ(&>Wd9k2vOF3L>HK%g8QC0;Y~j=%)ms
zO4+wDMv1alJ9bQep}pT$&)Z)To0f7qrGpN2?~=rnbr237tJ?LPG1uOr)?;`F)o{EM
zro=-qnc25To)l$`G{gT;bECy8=R&N{?hh;`Oymb{qy{+UVUS!P<gQ*fAR0vPy$#+x
zp{?rLW_kJoCrJDSKo6~bFAb(Ws&$w8icjQbg&1vZ62Im*YQwkTg^Rh+c-Yr1+xe(^
zQo66SeHjTl=|1Jy9)n*jtp9+S-e^kslV}E=eK!2gJx+?+3o0v(Mj~S@BtTfomCQ(s
z@i9=ck)Z%l>HJz7HJvXILYy+pURHBI`hY&U;ClUTUy}ByP_3G2tcQI}J)IrBIGQIF
z7`;casIAuKU%}jpbrIThcA|x1pmru?y%eHqPtP0v1u$Th|EzgdVik?oU=eb(pm-|p
z$=%jrVTg$f|Eae@^djfV*RgT`f`<$2bb8PrD()@4KEXpDP`$-|DE%$PO~@1m4~VpY
zjK_`ctjL7yO}>k#<Tb5%rhY~xu<ne5y6Rp%CP$Y-is)APum?F{w;zmf7mWaNzPTNy
z**Jx4Xdpf>{g})zbIJA}lN$55noaGsZ_yu(96SmFJ2>kk##_^=v?Wq#p;4k$4Y7zZ
z(HA-C=9I>5>Et5W4A*No06&b`iJ)%%0?pY*KtzN^=h^T3lJ02?qdd6S`yq7}LX9HN
zX%K2KPAWz78v8Z+{ZbKz(q#d|J&xbqM}HmX3vAMUBTqom$a5z3(A)An<W>P;iSLQB
zU@;om&c6x04QxpolRnq%G=g6_i+NF~i@+?Dos2HNI{i9wg`+dxWQ*7+V(SqP1AU9=
z;RgGYLx5oIgS-8Z;WshgVIXxzXgt7UJuP2Y4cK*-^<SJY7lhdcTrg0zzUWVyJ?)`-
zs(C5M9(o9bSO2pIW$H*npjo7z?PHr+1mc254X1AIBueK3M2LtxZZ3g&PrPlGA1T2H
zeioyg(GVe;f>(v7*ta-0ve}!Jc|gWK^`X1GC+V)d4iV~)nto}+obfRSXicuok7k}M
zsRw6%b1y!9$6sqd)|<@y6Om;EwOiU+T=*P%R9`e|77V`dqLd{@&pAiqe+qso1wf7}
z>aB@*#iNAR<9#O)>M;NXD@RbZ%_>U;erfvrmN+dJ)J);Uw<u}|6w?GsaI99pJ1~{@
zyx}X)zjrepvB1J#vQoYMUrCu1iDn*j`^S`a=wE+USH=EV25!B)JY>qy{$pAq8nF8|
zS}%E~gBYNOu?{rW3>X2mCi?)PFn+`R%2plhNfOPpSuL=>D0*!+QXaPF1q&ssJ~qA$
z(-rIQAY6xcXea*oIW>ZjA9SgGXoxlRq~HY#Q_tD?jtTsC^^Hw7JoWJ7V&fh4qZh9+
zjA{$=qhK|SEVOK5!~njlJK3R{fB#SgzS2UE4p1Fns5-TdDW4BOd#mxF;adLhWH30L
z3>|t(H3dtDfK*?>3e>(6={l}!a$r<x*$S{fDnoDfO<sdVM4zA}+}1^b3Iyl?0!<B4
z0=`{hRSd90816|-J?7x&S<85Ow?>SJr6?wNfsCw)ThkUL0DDEnru3r{sge^AYlL~5
z81+q7DnA;*WHN({jzl*2lZi`aIYw2nqzOIh_t(B!`z`7!tPKkPDEPp~sWT<63=c2y
zI{}L(EPU~G#(jcm`sG_3H=L?o;UVEySxuBl)lYGt<Of(Wsehwm5#5^X7^!!~Lq$~q
zj&|xg;^A6V#7GTZs5m_#L4su#6DRQ_<3dKxj@+L%;tMc0&JCdNt*a8>u{))M)k|5$
zo0zb*`~t|&oB5)UN&;zQEDa7e*aCY`qPWPSXf)vfm(#+M>vem{W?&F-<6ej6R5B>b
zzNM(zZGBuMK98-^*I<j|$v^C7{3r5YGT@G&dODV|V%5PYL`V`DHr<&PzV+Y)45<+f
zhsc^ZjO7q=vpLi*Day?SOd}#6e)?oB0uya1Ix=9TN?V#+8Zxl#IHGZ-fD(Bl<9HyQ
zWQKiOv|G5OLFylel~xv-fHiSiY^J?cP-LWNPQuFRgY?T2l{9YWIG@NkW<!&OyC}C{
zmbl+~OAolDfu^e~UrtkP#*4iNRC`|}0J=BX%e#9Onw{=aek0l2^WnXK6(>Xi3>*pW
zm2K1rk3h;HfbJ$^O~|*YZbVX9cCd&N6ca8ygVsr~@SjRw%-Q(;7?nEqu}2ew$oihE
zQop6;74M24G0VZ$6f$FZ^9_eT#^m+rOvKx76DonIMs#rit}yFo&^+$;Q^<VE7re)b
z73VF`-t&hjw33@Ic!vBTSwVsV?nX7Yg5gulvT<C|x<C^=8NStyb}<ddNeY=%63tF;
zjt!HX&14fqEn*)AD1Z(Rdg<hc4)+~muAYkfoQ$9v5}21S^N4Z0iV+Dp`=T4E49dZL
zvBp)|4?`EMW<ww_wIxh-fYlLY{16o@gZBfi3n#NF;I5;_vH)&e1~9s$D#AsugiuVG
z)uc8No4Cv<b<b~Gf~+=f9e?`{H4E`myk!qQi{*Kpd(W_B8m+M9@Dd3VSzW~xC7S@w
z$9$|19W4#5s7u&GKa?qkq%@eWI)r{Jp+XyGBObK&N_9kNVK;VEuhh*}k_t_ZhljrV
zgElt7jlzZujTp|zbF6o?dd_@o?tpYyL0BOlo5wk1O`u@IwQ6dKlnb6s4;F?h%1&6J
zDxnUH)Z)~RybIsmk*9DDGA7DG6Ejs|)wJ8Skf2V^4YkmfbhUjj4zNZv2_98lWb&HH
z6Wjqx7n2f9SPqln2t)^0)%puRnHYq$Oc!f5&><-ToRboqiBz-mMffidca3Mi=^??<
z-k&Vq#re+s;dJC$_xkdxr=s&6Gi`QoMZ#MradHP-^fP|A5;vP0A>^0`gKRE_tQx7c
zgwq>!-*yjM`F^Hx)%pX{#Sdtok2|)~8f2ErIqh4<f7@@F0J=`}=~)dqe}p6cV*tHo
z>iDPz;r4sQj^BnMt7DGov6d?S%@b0oS<R5GsIiaMA5HpAm^4X|f5+EZH{f+)ge^4Y
z6M9zRd8gSjDI^kp2AK9-Kyw6WG}RHz$<Z%SPBmOit;X}j=@y{DWKTv7;T0e&QUVQ;
zfH#5d5ue^)J-~=0GweyrO}zflK`7_6lmAmT+gdQb<q=Zw?oK4{-NnIlezNJITqyg~
zNm6u1Dwl|AHeQA{eDU*VOJoY}9n;yW&48ASf?UheT-~9JW_XuhN_3lNLa|t$6uX9O
zSdOTM$@jBtutwOSIAO@r{67GHgo%#b9sbFJQcpX6HYJQL2($vVvm+b;V7Of#0Lg<*
zn1=iBdUGXPcI6zveJvQ%-`58^H^Y9b0GAYj$l_n)m;;1_v-1W!a`bc-MQ4IJm`oUb
z!Y!N5svQz+NUAZfhIv<yvuK}~*|*&sy3Yy(SSaI>ft>EYgxX~wLhf%y9oO~z`oV#l
z_;hD=g!IjQc!v$CQH^6b2tZcqquc<NglV&%D{g!j&qu@Z2UdmON^}TIzBUpgPMEW6
za3QaeZ>S$-vz#--uHO?rO^)x2I3N6UdI#Q}{l7A<Gpwm)YePsNL^?s5N-v>?A}A^Z
zl#cW+B?uO}9(oZ7O`3=zh=n4d2~t8Alnw$?4+@A>MT*ivMCvy?o^!wFxtE{p?Afzs
zuf5iqS?~K^-t-^Y>Rb3V6{_-`KZ9N=C?Re)p(=D|=B}-XqF?owwQP7le;Nf})-Ycz
z{%=;ghSNNsyHmuCCYwB2`R8XIGY@v;Cwx=cFXIm!=-;JTT7Jyse38m+jkWiwAjg>+
z%*|G9QZrwWWrTxD-lmN@E%iFqdK%rZlSz7_C_xY}N4nDv9J`ATBdq9fXKrv;H&KIU
zw5vRJ>d{pgole5e$ifq0=hphNDKkp0)G#Rc&-NpyA6!_WR@p9s`A_*&ytBNO_9N2c
ztdUevQClqXkJW(Nox)S?HMPpUY&<KH6MC3a@tHSkX{_oP!-KE)RQzLUPT()%snB8c
zr#|t#?QXTdC!D^f7(ET&zUhe6BoMT)9@tZDmuRUsTcX{ZNLI6L#8IIEHVgN*WVH+Q
zFQLxf6xu^5iQA)=(9ZZ6AI2{6y!JE)9i`KB9m^h30&!TTgqqZuSh^RomRbY5?}DYg
zZWv`+4E$j0G{;;>f~MG)`&c5u;DlW%WnvcPB^-AybA1eJkV6c$L~Bz<>td>)st4Y-
z?I(VJhT1VbRUpVl9Y(=y!-36$yKiMN*Td`LQUeNm-#xu!2)Xa1s>1$!y|j#zeA5$J
z<t7Ec6&r<th#*bNO`L%C=XlB###<2%n)cx{=(#r0cY$HTD+r>;cC@k-_37AunprN%
zMc1WOfo1054s*C}5jzg?vgWJQii|op^~UhAQMIl4Z!GeFn8r%W-^av7rK$jyZGc7O
z%ZE4W(YH5@+0O|3(n{&lKRtboClSW!MHMZgrzS5>z}x7QDRlFNQMla{bgqX}9a6~S
z-8Q&D^IS1{%q%BT#Gs?1GLo(kQwY8@6A)#!TLH8H5hZlo++%5&mD|{co;o8|)n7iG
z^x2!kY>DL(cE(UERZDg*x{gWjdmTfcmw4oKD!M+d?Q^6RSFD}-mx2W|!97QzRWW15
zppW>NGoVxVALESRjy}x1FwYU6B4LTHtbvv<^clh;9I`Y&gx;*Qz6Qt6=Q+xsSy+0{
z`0&#ao?MA=X#AaE8;%q{rWh%w;OL>H3fOF8EA^`lHhH`CjeF-FIjqId!>Ka46+LE8
zW3~W?!k!enq{ikp5DIW`trYkD#&6RIs6OjpRNl#&=z33_SUSr@#HPC2sdry<HalxX
zpBI@kS%`sJmedRQtT1ZNif@_U*XB6f$|&=~&Mq0;qmaVhqWO}+a=2`;rEljwHc_sC
z7;oX$XqFWDc4>5)=3tQ9jWfmlRVh>PxXQVW5{-5#LW$etE#q>2PAvj8tDf1S)#f(T
z#u0lX>OcZM2!I1E1@WYbaFfSjY&VoZI=M4cO!pTEqb6#`o*&Vmxb7+9OtPOS@(j>^
z2mi?>6y9~=!g~jZ>sj0q&vINGgtiajn_^?ZAOLS&u95A8*!;BGZ_P{+n0g*(LNS_q
zd812kgC9|72%>XPU}|dvX!=@5u?tC<1DdxU+iw#u^J1JYAVY{WJgBR_>G~Fc5Hdg`
z&L9Ic;%GTdO-unj8w!BAmr(!=@NeTZ7H@4JEdT?InBHH#&j6a>|J(TjIie7bV3Q+z
zjP2icKCmg|a5#ZK&1Lh>=5@d$#E+#lR$c#>wchI(<6<EQ%n^N7V+8K~LmmHTXgM`(
zvWP)66JVeOq0{7@S@iF?Eh>L79`CBRA|nlQg6f@36~U?qz%Tmj5CBxMQitHplgOVo
zJfy`1+NX<?9$@ieLtLkdrfzEb*afe*o99YNnxm$l8~mC%Bial$mnyjJzlZ-q_%4s-
zu10A8N*pS%1aOsrDr%z1B_M1PiJFcOX!qNY2?E$iXmR{ph0Z^@W)8g!{<PhUw{dS|
z!EU9eqF=daRuXZGD+VtX^h3e*Duht6x>0Fv5(isE3Oh_be1gt`6*fQG@F-aqg!WJO
z4D6%qQb5vD)u09MrZ6yK<eD9Hm(+aW7dilO(WCu+#Uus~3+$)i>_#@*97Xu998U2g
ze#0=L7^ZA+=ZrdZr&{plU34-8tx4+BY&T{FGZUKiybREkUGu8f93U!wN_z0qTF3(;
z*@d8Nx2k#REI^iD!hU=1{501H*hswBD4cuxF?i>BMwwg)2?)7@nXY{JJ`ci!DyGzU
zD=_N~sc4m#7=SBXfeg;U5F)qo5vJR=8o*>SC8;E>z!lDg$Oj}ehY?O?KJmUj0Cy#=
zvw!$$=l%vv7a%eW{*o*cMU1Ttr2!h@$i79j&yV5t8d@r=9k5T@Bk~-GCgD-^!~!|X
z5LZb01a7ivVmV`xkK+#MyI>jqsnVIX6J=;7suVeW{-<<-#V<g{5dzz3=H^G<h0a`%
zK1@mDVPL&^dGPPQg6)<*Rft4J0ZD<Agv-y*+@9}C=W8Q!<lrEZAuvAE=cy6ug9ZUh
z3!TGvn0d|j72kV`GDXb-N~#7t`3J4g4dW~;RHQc6Yp&<^YWAJ2LCt5mb>;#H7V<*{
zm5iJO5o0fLVQ@%zARrX(efWF6X7l4<;T7`qhc;@$Ql$}r7$)9ke+0+h3Efzw`&SA8
zZPccwD82s9mA?&-+51ac0Z$V|MQUIHQ6ur-cq*sdbwR5{H_*8TUw8raP|l{6>jT(X
zaVD<jSC*vg&%Zj0?HiTn+ux_7k$`Ijin%2@(?I~)VME5@4a1r<4Zy)Hz!wmWU&_Bm
zi;{nmx8$Y2sZHR*Frk~bM4OmgO`~59zRWeOfKU+4PAc)U;DFDZaEr`LGs)LqJ}|k|
z+S-bBU5bAZrA;^hZ#xFRl>w<R6~ShhdH{|ldH>;;LbIZ+zjO$xz^%Z(Y1VW^HW$Z*
zfbnr0$KPV@X^A@K38-7~(hZ|G=Z@L$v;fj#L*P%BU~xJnvuN#2Sy#Oa<bl5j%!#>R
z4C7z~AY{?->n(`!+$UNyt=pvKIh!S{D?3AExEmjMx6&)ReXcG>yUWL-3oOYnrY|Oj
zL%M_{He@7TkDo>Fe!)$q@|?KKs9C^M1MhI;wV;Y|76Dq^M`wBpxOO&NwH?F(&#frK
zZN6l6mVR&C)Z3Vs0@30Wg(ae<zZoN!0gVmB$ofA2VsjK-4leB#({)oST5(5A5(u<l
zvG=S58I7|@sK_pqgT}|vWZbc10D=ZCeDE^4txcdnBa=a;DHirvm#<QnJW1OdZ_LFJ
z)W*De=193hLSzaF-AQ(k<O7L^G?)R)KaY1=($0#CB0C@J_t!6Lb8r-Y9>Ui2K9^~X
zY|&7OoLx~0j0(dfEFQ`E5!cdfiE@Gf8{u6c$GalXH($XV%GJ`0PHzhiw5XY7UBpg#
z&X;&r9{c&q)W(>X;~zuk)J=HZ0SF5idZo{&*aVeh_-AtH4VM^nCt&e_#rw8DXo(q+
zM*xI&k3C_orH<4BbR`_3GZRXj4*1h_oJMjW(h-0U`s$0F!WiblAg0mir{hvKNDZqp
zJf*VG>)uQifF52w>QHQuxzTsxd=!0xc&r)RBzEbkygWII4)kfa3n0YI@qm-0A$frd
z(wTs@i)j6xiNkk~*vL^s-%Ie~-txGQh-a8cj@m=mNAV_EJ<k}<Q>Q|<Kiwcm16q|m
zR(-%6j91uP`Ez`vE*IyA*iCg9F15F3Yv6VHi1*&mfhv9G=7oEZ+F&VeRkkOAQ!Yk2
z1r1_>l6@}49}l+!9?q*lICU*eljlyQS}?dF7z)!9G(<lF5R<WGTQHA)a?a1A3c<mg
z&}WUAX6osCAzgKwy?MbFk|&f#WM508Wffi;e_b&K1IKGOilL1XeoG4ab{@k9WqUqa
z*xR0Mh{1ag>p<?Iu?hpKPP?MhsSbq)$6OQ*4<sMz+h8aVN`4#F>ntqhlHr3_Aek*?
zRPD7im!oiNI5F7_<qx9RR*hDm2@sYVIPysACSMpb1^<3Em&27X$pDmowk*P~{kbx9
zl>1QqJ=%~SWQx@E4Qme*wB`0r+4dLo&2HyxA9*qbEU#<6W_TEnC<)v*U2ew=Ov`EN
zx+ai=x1;`b$sAi0`th4@oT#Nmx4rFU*Ac7SkAG~)GZ%Rko&qZsz4h@c&w$-?*!~zd
zE}`!XhUpbhd-7WTHTL?4{v_T&7a@$;6)*FCw^zju5etqmqVa`b<qN1yex5D(or@Dg
z#OY3M(1ADkvQLLzjQnBcePGp3)+W3`Th=+2g9!tap-*<V!EJIFZ%?<~kU*eJvubB;
zBj<Hjo~@Ar?%Hm5cB!9{ZplaHHF;T-c#)Z@U5lm<xiN+%FkQbl(!MHzJNK2nXPSMH
z?!TOCjPC69zujI?;Xc|`<k@aq-x>MQv0e3x&d#st=tSu5vwZ0bu=_v_GGqJ{^VQVZ
z?Fk8W?6-`*r;_)`i}Q3-!!ZZ<4JGkuy<zkuX8+E7LodUNW#wgsLcgQ4Bd6%$zvBb$
zhRhW?t|7I!IvF+i#29`*+tY7T9$0JWi0O5cvR14vy~9GqtoQ9kEo=cKVsO&?OYi{!
zjWi+%ofB?f@l;;&JJ%^2xWyLE8L-=YZ0dIB&dArn#Kdz4y$fLURj2+IP5qWZXWglf
z4v#DjTJt~E9#po4^i^q+c<7g&BQ+OUD=1`{XvgHUWO_OH7;gKH7|7=|zFviMc%dZ+
zv%C`91@_krAFkDPiH6gz=UC|Nk#obs1wMq!%cd-N#0Q2CJ3SUtjuJ2_Rgu5}16~}r
zd|3Xe(k#}6>0YFA7|k@23(H%YBod=~)24F8-@AodV&*yZ^Z13Yy$o_+AC4vs(0ZOw
z@44FJKWn34w6S(I1#HVVYzND;pnd$mUb#PtA?-b5IGE6$-zS|^duEVtx0A0)fAr#K
z=v<zoLs$Nd((`fd-r>~eYe?y3%}jJTGS7KrSAGpP*?iRxWj*IWF_v}Z+50c5jJsze
znLD2PJexS}>!?uE)f%5-1Rr{&sFOS*qlOhfBBj?i43>1=s2(2nM^FoKj7H#-MzlG?
zs0BmtG=44j;t?gGmLW5f>yrrrDfbz|YpLipwXhck;0}QE$k3A~8DPN}F0(5$s@Akn
zd1x7~eJTT)x9*vmCuIl)R+E1B;-VRp&F|4J(%vWo=O~}x-u=Ekxge#Z8QRhd(|(8F
z^BhSL6z3U%8GP}z`lA8c-2$Jwxahb9Ief=NM~XS87v4QSk(kdO^7U<{UvC*|cU|p^
zXep0)`6xb&k1C2?oaln34?U8<8UWQ-0{Tvp*>|7^YLoWHgWmBI4V31y8tWE0j@#Z;
z*xpjic)Kw%dK;~<u*lRA^GS35<Oa|<dO_n};g?S2Ax=}K`Y$zgYnw<12hm)eyr+Lc
zohtoSOuFOZl$R^Dxu$AFh1_5M#Q6ow-8Q2R=NDJeN{cxcvG3^6cCSE<zx_7%dkwkp
z4Y^Uwp9(X~;%;U_AW@w^u2Z+*MU1HS_U{@vG5X5V2afZtph?QA+$TbS+R{K;Qk#Me
zX}Rungg$10qZSdsVJf3V*Os(k>F1orT=6-FLp^-Pa$AJX08Ugiy-beNE`i_0ma4_e
zKwo`#g?-BFd;#LVWeX5i(l}RH1xluEMaz@J(jeS_m^p8jV9cA1yNL-M@b9w@9&P>_
za(^%1{FKbXTK2L!Hn2a6tiHv1XjO>J#U;Sh^Vd@MplHqxK;&Rm0Skry5sU<va~Skp
zRtNcRuwDw%+~QAL>o-;xMO>wwYg7MR#SW$C)w(tE^jcJO*<PSyjHct3MO>tTa$v%w
z&kRIIU9I*S@!N<F4G~kr444rhshapZlO3c{SLQ<Q95BFJXn+Fhe`e!GFN_X93z~J4
zp!Z%2`q$Kq=K9L>lB0tGb65Annq0q!%kp!){n0|M0BDaS%p#%e^}gmFqf_YD7p0VK
z&uexkMpZyt%Fa|I^Wgf@QYCQ*mWB&oJs$nv(?zD^6O8DP$^pF&ni;#)TT~wY-jf&K
zG4>xi%CDi}5t_<~;U<=#M<HT4K+6v@h@AUFQ-Li^#3rD&f+%lXA2{+E*P@?8F458M
zY>ZJIzT=E%{Jka=8rPwHqmeWH3`$pFAogAVgfBYdZx#a?u_QJ=x<8|Vs%#{<CcS=T
zmi}npG!iN_AG>pNcQQy(MolyCfpIiUMbZ!QzUuD@MBi2LmG8T9P{Poh;N3DAuDO>y
za)PVVS^^p?2%4D@z3_g8DYFh?luHi>zo<bv06oyEj0QN>0^b3}?UoskzW>LD7Wa2F
z<y6XH7!T~L<}w=kQwLk$TOGReKiIyRHb}pdbduh|_J7vfJ3K%$e<A!NFYIuq?er>~
z_`G2Ue|~wKhV>%$3_N1f^BjvNr6NVTU*_&E(`b|oNZTdHz+M?tjDKcm3H6YwdAEny
z8^7jMOm!Z7_~d!bbg6Bq@o<l*a=SP4#r(s&la88$5yUc86{QIRK|%*k^t0W8#144K
znRTt-0JvhESQ-9D5IM8{w<jgQ+J!s=qJc;Mm$#(iJ0wO6---f{4jhRpZJO;$rj%J8
z7ry+oO>xn1r!*Njzj2cZZpXL)y7}w(Y>NJm!yf!;b<YdpOi*tMo5G7%2SLUM7e9T^
zZi0$^>)_@wb*#@>Bes0BzZv28mBf$#{2&J>3DP%NF2WeE@}FEE*r-jghPI}V#02ya
z25m1nyHmc7jJjx-?hEReNWhgAp0&^<X%p-~+DCnZ-d>0??=3KGLL&}kfburOgOldY
n@-dV##m4v9WKhOAAr4h;$9y@ClA(&B0Ds!*`j<-7@ZtXlCg~}2

diff --git a/documentation/ref-manual/technical-details.xml b/documentation/ref-manual/technical-details.xml
index 79d1654..664c4f7 100644
--- a/documentation/ref-manual/technical-details.xml
+++ b/documentation/ref-manual/technical-details.xml
@@ -222,147 +222,309 @@
             environment:
         </para>
 
-        <mediaobject>
-            <imageobject>
-                <imagedata fileref="figures/user-configuration.png"
-                    format="PNG" align='center' scalefit='1' width="100%"/>
-            </imageobject>
-         </mediaobject>
+        <imagedata fileref="figures/user-configuration.png" align="center" width="6in" depth="3.5in" />
 
-         <para>
-             BitBake needs some basic configuration files in order to complete
-             a build.
-             These files are <filename>*.conf</filename> files.
-             The minimally necessary ones reside as example files in the
-             <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
-             For simplicity, this section refers to the Source Directory as
-             the "Poky Directory."
-             <note>
-                 Poky is primarily an aggregation of existing repositories and
-                 is not actual canonical upstream source for anything.
-             </note>
-             When you clone the <filename>poky</filename> Git repository or you
-             download and unpack a Yocto Project release, you can set up the
-             Source Directory to be named anything you want.
-             Here, though, we will assume that you have a cloned repository that
-             has the default name <filename>poky</filename>.
-         </para>
+        <para>
+            BitBake needs some basic configuration files in order to complete
+            a build.
+            These files are <filename>*.conf</filename> files.
+            The minimally necessary ones reside as example files in the
+            <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
+            For simplicity, this section refers to the Source Directory as
+            the "Poky Directory."
+            <note>
+                Poky is primarily an aggregation of existing repositories and
+                is not actual canonical upstream source for anything.
+            </note>
+            When you clone the <filename>poky</filename> Git repository or you
+            download and unpack a Yocto Project release, you can set up the
+            Source Directory to be named anything you want.
+            For this discussion, the cloned repository uses the default
+            name <filename>poky</filename>.
+        </para>
 
-         <para>
-             The <filename>meta-yocto</filename> layer inside Poky contains
-             a <filename>conf</filename> directory that has example
-             configuration files.
-             These example files are used as a basis for creating actual
-             configuration files when you source the build environment
-             script <filename>oe-init-build-env</filename>.
-             <note>
-                 The <filename>oe-init-build-env</filename> script also exists
-                 in the <filename>meta</filename> directory of the OE-Core
-                 root directory.
-                 Both scripts look for sample configuration files through
-                 a <filename>$TEMPLATECONF</filename> variable.
-                 When using the Yocto Project Development Environment,
-                 that location resolves to the samples found in the
-                 <filename>poky/meta-yocto/conf</filename> directory.
-             </note>
-         </para>
+        <para>
+            The <filename>meta-yocto</filename> layer inside Poky contains
+            a <filename>conf</filename> directory that has example
+            configuration files.
+            These example files are used as a basis for creating actual
+            configuration files when you source the build environment
+            script <filename>oe-init-build-env</filename>.
+            <note>
+                The <filename>oe-init-build-env</filename> script also exists
+                in the <filename>meta</filename> directory of the OE-Core
+                root directory.
+                Both scripts look for sample configuration files through
+                a <filename>$TEMPLATECONF</filename> variable.
+                When using the Yocto Project Development Environment,
+                that location resolves to the samples found in the
+                <filename>poky/meta-yocto/conf</filename> directory.
+            </note>
+        </para>
 
-         <para>
-             When you source the build environment script, it creates a
-             <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
-             that BitBake uses as the area in which it does all its work
-             during builds.
-             The Build Directory has a <filename>conf</filename> directory that
-             contains default versions of your <filename>local.conf</filename>
-             and <filename>bblayers.conf</filename> configuration files.
-             These default configuration files are created by
-             <filename>oe-init-build-env</filename> only if versions of these
-             files do not already exist in the Build Directory you specify
-             when you run the script.
-         </para>
+        <para>
+            When you source the build environment script, it creates a
+            <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
+            if one does not already exist.
+            BitBake uses the Build Directory for all its work during builds.
+            The Build Directory has a <filename>conf</filename> directory that
+            contains default versions of your <filename>local.conf</filename>
+            and <filename>bblayers.conf</filename> configuration files.
+            These default configuration files are created by
+            <filename>oe-init-build-env</filename> only if versions of these
+            files do not already exist in the Build Directory you specify
+            when you run the script.
+        </para>
+
+        <para>
+            The <filename>local.conf</filename> file provides many
+            basic variables that define your build.
+            Here is a list of a few.
+            To see the default configurations in a <filename>local.conf</filename>
+            file created by the build environment script, see the
+            <filename>local.conf.sample</filename> in the
+            <filename>meta-yocto</filename> layer:
+            <itemizedlist>
+                <listitem><para><emphasis>Parallelism Options:</emphasis>
+                    Controlled by the
+                    <link linkend='var-BB_NUMBER_THREADS'><filename>BB_NUMBER_THREADS</filename></link>
+                    and
+                    <link linkend='var-PARALLEL_MAKE'><filename>PARALLEL_MAKE</filename></link>
+                    variables.</para></listitem>
+                <listitem><para><emphasis>Target Machine Selection:</emphasis>
+                    Controlled by the
+                    <link linkend='var-MACHINE'><filename>MACHINE</filename></link>
+                    variable.</para></listitem>
+                <listitem><para><emphasis>Download Directory:</emphasis>
+                    Controlled by the
+                    <link linkend='var-DL_DIR'><filename>DL_DIR</filename></link>
+                    variable.</para></listitem>
+                <listitem><para><emphasis>Shared State Directory:</emphasis>
+                    Controlled by the
+                    <link linkend='var-SSTATE_DIR'><filename>SSTATE_DIR</filename></link>
+                    variable.</para></listitem>
+                <listitem><para><emphasis>Build Output:</emphasis>
+                    Controlled by the
+                    <link linkend='var-TMPDIR'><filename>TMPDIR</filename></link>
+                    variable.</para></listitem>
+            </itemizedlist>
+        </para>
+
+        <para>
+            The <filename>bblayers.conf</filename> file tells BitBake what
+            layers you want it to consider during the build.
+            The list of layers includes default layers needed by the build
+            system.
+            You have to manually add any custom layers that you have created.
+            You can find more information on working with the
+            <filename>bblayers.conf</filename> file in the
+            "<ulink url='&YOCTO_DOCS_DEV_URL;#enabling-your-layer'>Enabling Your Layer</ulink>"
+            section in the Yocto Project Development Manual.
+        </para>
+
+        <para>
+            The files <filename>site.conf</filename> and
+            <filename>auto.conf</filename> are not created by the environment
+            initialization script.
+            If you want these configuration files, you must create them
+            yourself:
+            <itemizedlist>
+                <listitem><para><emphasis><filename>site.conf</filename>:</emphasis>
+                    I don't really know what this does.
+                    All I know is that if you want it, you need to hand-create
+                    it.
+                    I need some information on it.</para></listitem>
+                <listitem><para><emphasis><filename>auto.conf</filename>:</emphasis>
+                    This file is not hand-created.
+                    Rather, the file is usually created and written to by
+                    an autobuilder.
+                    The settings put into the file are typically the same as
+                    you would find in the <filename>local.conf</filename>
+                    or <filename>site.conf</filename> files.
+                    </para></listitem>
+            </itemizedlist>
+        </para>
+
+        <para>
+            You can edit all configuration files to further define
+            the build.
+            This process is represented by the "User Configuration Edits"
+            box in the figure.
+        </para>
+
+        <para>
+            When you launch your build with the
+            <filename>bitbake &lt;target&gt;</filename> command, BitBake
+            draws on the user configurations you have provided in your
+            Build Directory.
+        </para>
+    </section>
+
+    <section id="metadata-machine-configuration-and-policy-configuration">
+        <title>Metadata, Machine Configuration, and Policy Configuration</title>
+
+        <para>
+            The previous section described the user configurations that
+            define the BitBake's global behavior.
+            This section takes a closer look at the layers the build system
+            uses to further control the build.
+            These layers provide Metadata for the software, machine, and
+            policy.
+        </para>
 
          <para>
-             The <filename>local.conf</filename> file provides many
-             basic variables that define your build.
-             Here is a list of a few.
-             To see the default configurations in a <filename>local.conf</filename>
-             file created by the build environment script, see the
-             <filename>local.conf.sample</filename> in the
-             <filename>meta-yocto</filename> layer:
+             In general, three types of layer input exist:
              <itemizedlist>
-                 <listitem><para><emphasis>Parallelism Options:</emphasis>
-                     Controlled by the
-                     <link linkend='var-BB_NUMBER_THREADS'><filename>BB_NUMBER_THREADS</filename></link>
-                     and
-                     <link linkend='var-PARALLEL_MAKE'><filename>PARALLEL_MAKE</filename></link>
-                     variables.</para></listitem>
-                 <listitem><para><emphasis>Target Machine Selection:</emphasis>
-                     Controlled by the
-                     <link linkend='var-MACHINE'><filename>MACHINE</filename></link>
-                     variable.</para></listitem>
-                 <listitem><para><emphasis>Download Directory:</emphasis>
-                     Controlled by the
-                     <link linkend='var-DL_DIR'><filename>DL_DIR</filename></link>
-                     variable.</para></listitem>
-                 <listitem><para><emphasis>Shared State Directory:</emphasis>
-                     Controlled by the
-                     <link linkend='var-SSTATE_DIR'><filename>SSTATE_DIR</filename></link>
-                     variable.</para></listitem>
-                 <listitem><para><emphasis>Build Output:</emphasis>
-                     Controlled by the
-                     <link linkend='var-TMPDIR'><filename>TMPDIR</filename></link>
-                     variable.</para></listitem>
+                 <listitem><para><emphasis>Metadata:</emphasis>
+                     Software layers contain user-supplied recipe files,
+                     patches, and append files.
+                     </para></listitem>
+                 <listitem><para><emphasis>Machine Configuration:</emphasis>
+                     Board Support Package (BSP) layers provide machine
+                     configurations.
+                     This type of information is specific to a particular
+                     target architecture.</para></listitem>
+                 <listitem><para><emphasis>Policy Configuration:</emphasis>
+                     Distribution Layers provide top-level or general
+                     policies for the image or SDK being built.
+                     For example, this layer would dictate whether BitBake
+                     produces RPM or IPK packages.</para></listitem>
              </itemizedlist>
          </para>
 
          <para>
-             The <filename>bblayers.conf</filename> file tells BitBake what
-             layers you want it to consider during the build.
-             The list of layers includes default layers needed by the build
-             system.
-             You have to manually add any custom layers that you have created.
-             You can find more information on working with the
-             <filename>bblayers.conf</filename> file in the
-             "<ulink url='&YOCTO_DOCS_DEV_URL;#enabling-your-layer'>Enabling Your Layer</ulink>"
-             section in the Yocto Project Development Manual.
+            The following figure shows an expanded representation of the
+            Metadata, Machine Configuration, and Policy Configuration input
+            boxes of the Yocto Project development environment:
          </para>
 
+         <imagedata fileref="figures/layer-input.png" align="center" width="8in" depth="7.5in" />
+
          <para>
-             The files <filename>site.conf</filename> and
-             <filename>auto.conf</filename> are not created by the environment
-             initialization script.
-             If you want these configuration files, you must create them
-             yourself:
-             <itemizedlist>
-                 <listitem><para><emphasis><filename>site.conf</filename>:</emphasis>
-                     I don't really know what this does.
-                     All I know is that if you want it, you need to hand-create
-                     it.
-                     I need some information on it.</para></listitem>
-                 <listitem><para><emphasis><filename>auto.conf</filename>:</emphasis>
-                     This file is not hand-created.
-                     Rather, the file is usually created and written to by
-                     an autobuilder.
-                     The settings put into the file are typically the same as
-                     you would find in the <filename>local.conf</filename>
-                     or <filename>site.conf</filename> files.
-                     </para></listitem>
-             </itemizedlist>
+             The Yocto Project has many layers that can be used.
+             You can see a web-interface listing of them on the
+             <ulink url="http://git.yoctoproject.org/">Source Repositories</ulink>
+             page.
+             The layers are shown at the bottom categorized under
+             "Yocto Metadata Layers."
+             These layers are fundamentally a subset of the
+             <ulink url="http://layers.openembedded.org/layerindex/layers/">OpenEmbedded Metadata Index</ulink>,
+             which shows all layers supported by OpenEmbedded.
          </para>
 
+         <note>
+             Layers exist in the Yocto Project Source Repositories that cannot
+             be found in the OpenEmbedded Metadata Index.
+             These layers are either deprecated or experimental in nature.
+         </note>
+
          <para>
-             You can edit all configuration files to further define
-             the build.
-             This process is represented by the "User Configuration Edits"
-             box in the figure.
+             BitBake uses the <filename>bblayers.conf</filename> file that is
+             part of the user configuration to find what layers it should be
+             using as part of the build.
          </para>
 
          <para>
-             When you launch your build with the
-             <filename>bitbake &lt;target&gt;</filename> command, BitBake
-             draws on the user configurations you have provided in your
-             Build Directory.
+             For more information on layers, see the
+             "<ulink url='&YOCTO_DOCS_DEV_URL;#understanding-and-creating-layers'>Understanding and Creating Layers</ulink>"
+             section in the Yocto Project Development Manual.
          </para>
+
+         <section id="software-layer">
+             <title>Software Layer</title>
+
+             <para>
+                 The software layer provides the Metadata for your source
+                 code used during the build.
+                 This general layer minimally contains license
+                 information; a <filename>README</filename> file; a layer
+                 configuration file named <filename>layer.conf</filename>;
+                 and recipe files (<filename>.bb</filename>), append files
+                 (<filename>.bbappend</filename>), and patches
+                 (<filename>.patch</filename>).
+             </para>
+
+             <para>
+                 You provide any new recipes that your project needs in the
+                 form of recipe files.
+                 If you are modifying any existing recipes from other layers,
+                 rather than duplicate them here with the modifcations, you can
+                 provide a recipe append file that just has the modifications.
+                 Patch files are stored in the <filename>files</filename>
+                 directory.
+             </para>
+         </section>
+
+         <section id="distro-layer">
+             <title>Distro Layer</title>
+
+             <para>
+                 The distribution layer provides policy configurations for your
+                 distribution.
+                 Best practices dictate that you isolate these types of
+                 configurations into their own layer.
+                 Metadata you provide in this layer overrides similar settings
+                 that BitBake finds in your <filename>local.conf</filename>
+                 file in the Build Directory.
+             </para>
+
+             <para>
+                 The following list provides some explanation and references
+                 for what you typically find in the distribution layer:
+                 <itemizedlist>
+                     <listitem><para><emphasis>classes:</emphasis>
+                         Class files (<filename>.bbclass</filename>) hold
+                         common functionality that can be shared among
+                         recipes in the distribution.
+                         When your recipes inherit a class, they take on the
+                         settings and functions for that class.
+                         You can read more about class files in the
+                         "<link linkend='ref-classes'>Classes</link>" section.
+                         </para></listitem>
+                     <listitem><para><emphasis>conf:</emphasis>
+                         This area holds configuration information for the
+                         distribution.
+                         Any distribution-wide include files and, of course, the
+                         <filename>layer.conf</filename> configuration
+                         file that every layer must have.</para></listitem>
+                     <listitem><para><emphasis>recipes-core:</emphasis>
+                         Recipes and append files that affect common
+                         functionality across the distribution.
+                         This area also can hold common distribution headers,
+                         initialization files, and
+                         <filename>defconfig</filename> files for the
+                         distribution.</para></listitem>
+                 </itemizedlist>
+             </para>
+         </section>
+
+         <section id="bsp-layer">
+             <title>BSP Layer</title>
+
+             <para>
+                 The BSP Layer provides machine configurations.
+                 Everything in this layer is specific to the machine for which
+                 you are building the image or the SDK.
+                 BSP Layer's have a structure that is followed if they are
+                 considered to be compatible with the Yocto Project.
+                 For information on the structure, see the
+                 <ulink url='&YOCTO_DOCS_BSP_URL;'>Yocto Project Board Support Package (BSP) Developer's Guide</ulink>.
+             </para>
+
+             <para>
+                 The BSP Layer contains a configuration directory that has
+                 configuration files for the machine
+                 (<filename>&lt;machine&gt;.conf</filename>) and, of course,
+                 the layer (<filename>layer.conf</filename>).
+             </para>
+
+             <para>
+                 The remainder of the layer is dedicated to specific recipes
+                 by function: bsp, core, graphics, and kernel.
+                 Metadata can exist for multiple formfactors, graphics
+                 support systems, and so forth.
+             </para>
+         </section>
     </section>
 </section>
 
-- 
1.7.9.5


