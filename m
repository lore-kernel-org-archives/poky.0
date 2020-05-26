Subject: Opencv support on Jethro branch
To: poky@lists.yoctoproject.org
From: "Yash" <yash.j@mistralsolutions.com>
X-Originating-Location: Bengaluru, Karnataka, IN (106.217.67.70)
X-Originating-Platform: Windows Chrome 81
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 25 May 2020 21:30:05 -0700
Message-ID: <dM2n.1590467405674619419.NrNX@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="s2EoMJj9AsyGKqpPgvnP"

--s2EoMJj9AsyGKqpPgvnP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have added meta-openembedded/meta-oe recipes in the Yocto project, at Jet=
hro branch OpenCV version is 2.4.
After building while testing the sample applications provided by opencv-sa=
mples_2.4.bb gives these samples :
adaptiveskindetector=C2=A0 contours=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0faced=
etect=C2=A0 find_obj_calonder=C2=A0 morphology=C2=A0 =C2=A0mushroom=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pyramid_segmentation
bgfg_codebook=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0convert_cascade=C2=A0 fback=
_c=C2=A0 =C2=A0 =C2=A0find_obj_ferns=C2=A0 =C2=A0 =C2=A0motempl=C2=A0 =C2=
=A0 =C2=A0 one_way_sample=C2=A0 =C2=A0 smiledetect
blobtrack_sample=C2=A0 =C2=A0 =C2=A0 delaunay=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0find_obj=C2=A0 =C2=A0 latentsvmdetect=C2=A0 =C2=A0 mser_sample=C2=A0=
 polar_transforms=C2=A0 tree_engine

but while testing I got this error :
OpenCV Error : Unspecified error ( The function is not implemented. Rebuil=
d the library with Windows , GTK + 2.x or Carbon support. If you are on Ubu=
ntu or Debian , install libgtk2. 0 - dev and pkg - config , then re - run c=
make or configure script ) in cvNamedWindow , file / home/ymj / opencv / mo=
dules / highgui / src / window. cpp , line 516

I have added in local.conf:

IMAGE_INSTALL_append=C2=A0+=3D=C2=A0" opencv opencv-samples python-opencv"

Is=C2=A0anything=C2=A0more=C2=A0needed=C2=A0to=C2=A0get=C2=A0full-fledged=
=C2=A0opencv=C2=A0operations.

--s2EoMJj9AsyGKqpPgvnP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have added meta-openembedded/meta-oe recipes in the Yocto project, at Jet=
hro branch OpenCV version is 2.4.<br />After building while testing the sam=
ple applications provided by opencv-samples_2.4.bb gives these samples :<br=
 />
<div>adaptiveskindetector&nbsp; contours&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
facedetect&nbsp; find_obj_calonder&nbsp; morphology&nbsp; &nbsp;mushroom&nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; pyramid_segmentation</div>
<div>bgfg_codebook&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;convert_cascade&nbsp; =
fback_c&nbsp; &nbsp; &nbsp;find_obj_ferns&nbsp; &nbsp; &nbsp;motempl&nbsp; =
&nbsp; &nbsp; one_way_sample&nbsp; &nbsp; smiledetect</div>
<div>blobtrack_sample&nbsp; &nbsp; &nbsp; delaunay&nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp;find_obj&nbsp; &nbsp; latentsvmdetect&nbsp; &nbsp; mser_sample&nb=
sp; polar_transforms&nbsp; tree_engine<br /><br />but while testing I got t=
his error :<br />
<pre class=3D"lang-cpp prettyprint prettyprinted" style=3D"margin-bottom: =
1em; padding: 12px 8px; font-variant-numeric: inherit; font-variant-east-as=
ian: inherit; font-stretch: inherit; line-height: inherit; font-family: Con=
solas, Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mon=
o', 'Bitstream Vera Sans Mono', 'Courier New', monospace, sans-serif; verti=
cal-align: baseline; box-sizing: inherit; width: auto; max-height: 600px; b=
ackground-color: var(--black-050); border-radius: 3px; color: #242729; over=
flow-wrap: normal; border: 0px initial initial;"><code style=3D"margin: 0px=
; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inh=
erit; font-stretch: inherit; line-height: inherit; font-family: Consolas, M=
enlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bit=
stream Vera Sans Mono', 'Courier New', monospace, sans-serif; font-size: 13=
px; vertical-align: baseline; box-sizing: inherit; white-space: inherit;"><=
span class=3D"typ" style=3D"margin: 0px; padding: 0px; border: 0px; font-st=
yle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; vertical-align: baseline=
; box-sizing: inherit; color: #2b91af;">OpenCV</span><span class=3D"pln" st=
yle=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; line-height: i=
nherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit=
; color: var(--black-750);"> </span><span class=3D"typ" style=3D"margin: 0p=
x; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; f=
ont-weight: inherit; font-stretch: inherit; line-height: inherit; font-fami=
ly: inherit; vertical-align: baseline; box-sizing: inherit; color: #2b91af;=
">Error</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; borde=
r: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; f=
ont-stretch: inherit; line-height: inherit; font-family: inherit; vertical-=
align: baseline; box-sizing: inherit; color: var(--black-750);">:</span><sp=
an class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-styl=
e: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inhe=
rit; line-height: inherit; font-family: inherit; vertical-align: baseline; =
box-sizing: inherit; color: var(--black-750);"> </span><span class=3D"typ" =
style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-=
variant: inherit; font-weight: inherit; font-stretch: inherit; line-height:=
 inherit; font-family: inherit; vertical-align: baseline; box-sizing: inher=
it; color: #2b91af;">Unspecified</span><span class=3D"pln" style=3D"margin:=
 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit=
; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-f=
amily: inherit; vertical-align: baseline; box-sizing: inherit; color: var(-=
-black-750);"> error </span><span class=3D"pun" style=3D"margin: 0px; paddi=
ng: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weig=
ht: inherit; font-stretch: inherit; line-height: inherit; font-family: inhe=
rit; vertical-align: baseline; box-sizing: inherit; color: var(--black-750)=
;">(</span><span class=3D"typ" style=3D"margin: 0px; padding: 0px; border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; line-height: inherit; font-family: inherit; vertical-ali=
gn: baseline; box-sizing: inherit; color: #2b91af;">The</span><span class=
=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: var(--black-750);"> function is not implemented</span>=
<span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-s=
tyle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: i=
nherit; line-height: inherit; font-family: inherit; vertical-align: baselin=
e; box-sizing: inherit; color: var(--black-750);">.</span><span class=3D"pl=
n" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; fo=
nt-variant: inherit; font-weight: inherit; font-stretch: inherit; line-heig=
ht: inherit; font-family: inherit; vertical-align: baseline; box-sizing: in=
herit; color: var(--black-750);"> </span><span class=3D"typ" style=3D"margi=
n: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inher=
it; font-weight: inherit; font-stretch: inherit; line-height: inherit; font=
-family: inherit; vertical-align: baseline; box-sizing: inherit; color: #2b=
91af;">Rebuild</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px=
; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inh=
erit; font-stretch: inherit; line-height: inherit; font-family: inherit; ve=
rtical-align: baseline; box-sizing: inherit; color: var(--black-750);"> the=
 library with </span><span class=3D"typ" style=3D"margin: 0px; padding: 0px=
; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inh=
erit; font-stretch: inherit; line-height: inherit; font-family: inherit; ve=
rtical-align: baseline; box-sizing: inherit; color: #2b91af;">Windows</span=
><span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-=
style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: =
inherit; line-height: inherit; font-family: inherit; vertical-align: baseli=
ne; box-sizing: inherit; color: var(--black-750);">,</span><span class=3D"p=
ln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; f=
ont-variant: inherit; font-weight: inherit; font-stretch: inherit; line-hei=
ght: inherit; font-family: inherit; vertical-align: baseline; box-sizing: i=
nherit; color: var(--black-750);"> GTK</span><span class=3D"pun" style=3D"m=
argin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: i=
nherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; =
font-family: inherit; vertical-align: baseline; box-sizing: inherit; color:=
 var(--black-750);">+</span><span class=3D"pln" style=3D"margin: 0px; paddi=
ng: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weig=
ht: inherit; font-stretch: inherit; line-height: inherit; font-family: inhe=
rit; vertical-align: baseline; box-sizing: inherit; color: var(--black-750)=
;"> </span><span class=3D"lit" style=3D"margin: 0px; padding: 0px; border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; line-height: inherit; font-family: inherit; vertical-ali=
gn: baseline; box-sizing: inherit; color: var(--red-800);">2.x</span><span =
class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: =
inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit=
; line-height: inherit; font-family: inherit; vertical-align: baseline; box=
-sizing: inherit; color: var(--black-750);"> or </span><span class=3D"typ" =
style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-=
variant: inherit; font-weight: inherit; font-stretch: inherit; line-height:=
 inherit; font-family: inherit; vertical-align: baseline; box-sizing: inher=
it; color: #2b91af;">Carbon</span><span class=3D"pln" style=3D"margin: 0px;=
 padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; fon=
t-weight: inherit; font-stretch: inherit; line-height: inherit; font-family=
: inherit; vertical-align: baseline; box-sizing: inherit; color: var(--blac=
k-750);"> support</span><span class=3D"pun" style=3D"margin: 0px; padding: =
0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: =
inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;=
 vertical-align: baseline; box-sizing: inherit; color: var(--black-750);">.=
</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px;=
 font-style: inherit; font-variant: inherit; font-weight: inherit; font-str=
etch: inherit; line-height: inherit; font-family: inherit; vertical-align: =
baseline; box-sizing: inherit; color: var(--black-750);"> </span><span clas=
s=3D"typ" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: #2b91af;">If</span><span class=3D"pln" style=3D"margin=
: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inheri=
t; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-=
family: inherit; vertical-align: baseline; box-sizing: inherit; color: var(=
--black-750);"> you are on </span><span class=3D"typ" style=3D"margin: 0px;=
 padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; fon=
t-weight: inherit; font-stretch: inherit; line-height: inherit; font-family=
: inherit; vertical-align: baseline; box-sizing: inherit; color: #2b91af;">=
Ubuntu</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border=
: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; fo=
nt-stretch: inherit; line-height: inherit; font-family: inherit; vertical-a=
lign: baseline; box-sizing: inherit; color: var(--black-750);"> or </span><=
span class=3D"typ" style=3D"margin: 0px; padding: 0px; border: 0px; font-st=
yle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; vertical-align: baseline=
; box-sizing: inherit; color: #2b91af;">Debian</span><span class=3D"pun" st=
yle=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; line-height: i=
nherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit=
; color: var(--black-750);">,</span><span class=3D"pln" style=3D"margin: 0p=
x; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; f=
ont-weight: inherit; font-stretch: inherit; line-height: inherit; font-fami=
ly: inherit; vertical-align: baseline; box-sizing: inherit; color: var(--bl=
ack-750);"> install libgtk2</span><span class=3D"pun" style=3D"margin: 0px;=
 padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; fon=
t-weight: inherit; font-stretch: inherit; line-height: inherit; font-family=
: inherit; vertical-align: baseline; box-sizing: inherit; color: var(--blac=
k-750);">.</span><span class=3D"lit" style=3D"margin: 0px; padding: 0px; bo=
rder: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit=
; font-stretch: inherit; line-height: inherit; font-family: inherit; vertic=
al-align: baseline; box-sizing: inherit; color: var(--red-800);">0</span><s=
pan class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-sty=
le: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inh=
erit; line-height: inherit; font-family: inherit; vertical-align: baseline;=
 box-sizing: inherit; color: var(--black-750);">-</span><span class=3D"pln"=
 style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font=
-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height=
: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inhe=
rit; color: var(--black-750);">dev and pkg</span><span class=3D"pun" style=
=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; =
color: var(--black-750);">-</span><span class=3D"pln" style=3D"margin: 0px;=
 padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; fon=
t-weight: inherit; font-stretch: inherit; line-height: inherit; font-family=
: inherit; vertical-align: baseline; box-sizing: inherit; color: var(--blac=
k-750);">config</span><span class=3D"pun" style=3D"margin: 0px; padding: 0p=
x; border: 0px; font-style: inherit; font-variant: inherit; font-weight: in=
herit; font-stretch: inherit; line-height: inherit; font-family: inherit; v=
ertical-align: baseline; box-sizing: inherit; color: var(--black-750);">,</=
span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; f=
ont-style: inherit; font-variant: inherit; font-weight: inherit; font-stret=
ch: inherit; line-height: inherit; font-family: inherit; vertical-align: ba=
seline; box-sizing: inherit; color: var(--black-750);"> then re</span><span=
 class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style:=
 inherit; font-variant: inherit; font-weight: inherit; font-stretch: inheri=
t; line-height: inherit; font-family: inherit; vertical-align: baseline; bo=
x-sizing: inherit; color: var(--black-750);">-</span><span class=3D"pln" st=
yle=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; line-height: i=
nherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit=
; color: var(--black-750);">run cmake or configure script</span><span class=
=
=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inhe=
rit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; li=
ne-height: inherit; font-family: inherit; vertical-align: baseline; box-siz=
ing: inherit; color: var(--black-750);">)</span><span class=3D"pln" style=
=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; =
color: var(--black-750);"> in cvNamedWindow</span><span class=3D"pun" style=
=
=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-vari=
ant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inh=
erit; font-family: inherit; vertical-align: baseline; box-sizing: inherit; =
color: var(--black-750);">,</span><span class=3D"pln" style=3D"margin: 0px;=
 padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; fon=
t-weight: inherit; font-stretch: inherit; line-height: inherit; font-family=
: inherit; vertical-align: baseline; box-sizing: inherit; color: var(--blac=
k-750);"> file </span><span class=3D"pun" style=3D"margin: 0px; padding: 0p=
x; border: 0px; font-style: inherit; font-variant: inherit; font-weight: in=
herit; font-stretch: inherit; line-height: inherit; font-family: inherit; v=
ertical-align: baseline; box-sizing: inherit; color: var(--black-750);">/</=
span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; f=
ont-style: inherit; font-variant: inherit; font-weight: inherit; font-stret=
ch: inherit; line-height: inherit; font-family: inherit; vertical-align: ba=
seline; box-sizing: inherit; color: var(--black-750);">home/ymj</span><span=
 class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style:=
 inherit; font-variant: inherit; font-weight: inherit; font-stretch: inheri=
t; line-height: inherit; font-family: inherit; vertical-align: baseline; bo=
x-sizing: inherit; color: var(--black-750);">/</span><span class=3D"pln" st=
yle=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; line-height: i=
nherit; font-family: inherit; vertical-align: baseline; box-sizing: inherit=
; color: var(--black-750);">opencv</span><span class=3D"pun" style=3D"margi=
n: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inher=
it; font-weight: inherit; font-stretch: inherit; line-height: inherit; font=
-family: inherit; vertical-align: baseline; box-sizing: inherit; color: var=
(--black-750);">/</span><span class=3D"pln" style=3D"margin: 0px; padding: =
0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: =
inherit; font-stretch: inherit; line-height: inherit; font-family: inherit;=
 vertical-align: baseline; box-sizing: inherit; color: var(--black-750);">m=
odules</span><span class=3D"pun" style=3D"margin: 0px; padding: 0px; border=
: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; fo=
nt-stretch: inherit; line-height: inherit; font-family: inherit; vertical-a=
lign: baseline; box-sizing: inherit; color: var(--black-750);">/</span><spa=
n class=3D"pln" style=3D"margin: 0px; padding: 0px; border: 0px; font-style=
: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inher=
it; line-height: inherit; font-family: inherit; vertical-align: baseline; b=
ox-sizing: inherit; color: var(--black-750);">highgui</span><span class=3D"=
pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-he=
ight: inherit; font-family: inherit; vertical-align: baseline; box-sizing: =
inherit; color: var(--black-750);">/</span><span class=3D"pln" style=3D"mar=
gin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inh=
erit; font-weight: inherit; font-stretch: inherit; line-height: inherit; fo=
nt-family: inherit; vertical-align: baseline; box-sizing: inherit; color: v=
ar(--black-750);">src</span><span class=3D"pun" style=3D"margin: 0px; paddi=
ng: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weig=
ht: inherit; font-stretch: inherit; line-height: inherit; font-family: inhe=
rit; vertical-align: baseline; box-sizing: inherit; color: var(--black-750)=
;">/</span><span class=3D"pln" style=3D"margin: 0px; padding: 0px; border: =
0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font=
-stretch: inherit; line-height: inherit; font-family: inherit; vertical-ali=
gn: baseline; box-sizing: inherit; color: var(--black-750);">window</span><=
span class=3D"pun" style=3D"margin: 0px; padding: 0px; border: 0px; font-st=
yle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: in=
herit; line-height: inherit; font-family: inherit; vertical-align: baseline=
; box-sizing: inherit; color: var(--black-750);">.</span><span class=3D"pln=
" style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; fon=
t-variant: inherit; font-weight: inherit; font-stretch: inherit; line-heigh=
t: inherit; font-family: inherit; vertical-align: baseline; box-sizing: inh=
erit; color: var(--black-750);">cpp</span><span class=3D"pun" style=3D"marg=
in: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inhe=
rit; font-weight: inherit; font-stretch: inherit; line-height: inherit; fon=
t-family: inherit; vertical-align: baseline; box-sizing: inherit; color: va=
r(--black-750);">,</span><span class=3D"pln" style=3D"margin: 0px; padding:=
 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight:=
 inherit; font-stretch: inherit; line-height: inherit; font-family: inherit=
; vertical-align: baseline; box-sizing: inherit; color: var(--black-750);">=
 line </span><span class=3D"lit" style=3D"margin: 0px; padding: 0px; border=
: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; fo=
nt-stretch: inherit; line-height: inherit; font-family: inherit; vertical-a=
lign: baseline; box-sizing: inherit; color: var(--red-800);">516<br /><br /=
>I have added in local.conf:<br /><br />IMAGE_INSTALL_append&nbsp;+=3D&nbsp=
;" opencv opencv-samples python-opencv"<br /><br />Is&nbsp;anything&nbsp;mo=
re&nbsp;needed&nbsp;to&nbsp;get&nbsp;full-fledged&nbsp;opencv&nbsp;operatio=
ns.</span></code></pre>
</div>

--s2EoMJj9AsyGKqpPgvnP--
