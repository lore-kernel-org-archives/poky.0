Return-Path: <hardik.vala@aumraj.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81D77E00CE0; Wed, 11 Jul 2018 05:47:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [106.10.242.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic303-29.consmr.mail.sg3.yahoo.com
	(sonic303-29.consmr.mail.sg3.yahoo.com [106.10.242.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33E65E00B58
	for <poky@yoctoproject.org>; Wed, 11 Jul 2018 05:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1531313231; bh=Cqc+cvo+JBkNuIiPfdBjq9R1tubwaLo+erysHtHnkt8=;
	h=Date:From:Reply-To:To:In-Reply-To:References:Subject:From:Subject;
	b=ersHx2juAqB+bJDwr/1xhEVd3qw2uKhTRkSJpX5WFKzXAoI9kNoA68VmW/SZGrYF8JgEkaT1NK8ZTCIEm73P9Put/b3MWp5tVpxnEL9GxN2JCyYEz3vt8Dpx15IuQylXJLntSJuiwLqxasmOA3IdE26iLPjVIRLTv2cCEYSN73tVYl+Pq6DHcwMWuSSStLoPYYc2+LpG8+jOES91Vd3gC+3SPf6L5pJe8oPUVI2iHCefvlFl2BBH3zzvJmhi1B2HXag/4svvCaa/GULGKddcp4bW31o+4GWb8WZuvzGARO9085s3YSsTABo0aQ1FscxIPA3BsOMOBcjtklj25UGl3g==
X-YMail-OSG: NxkFlXYVM1mDGST2j_PzCgkiBSaIhUB8puHSe9g0qkWreHxEc7GDhh8hRJ8Lxpv
	6fOOWZBhfqv_CiMkHuXYi3tHff4yjxYWDcfs32N8LJo8X8.ZPmG7lFvoGeb8U84Ajo6j29DW3IoW
	RRaJVr6eDInZzgMiMPjBIbLCP.RT7Zjw711_PRqnLT0SvdCHU1iIixGeBQzq1Kx.lAD9LakGTYmf
	iZfBt81qDqqFxSdUGVc5ggh0UJUlL_lnpKGzZiuk667hqXUF8uQmTqMDvWdYV9qsLmCJcSuB12BV
	3aw5XYRSPUsfHJOXCTvWjT76xtaUGdVfRsbLhn6js7qUKBP8PsYEHfLeng0StpIN2CqmQdocal7l
	CiL9Fj6fctSEjDAFQfwws69PnRzWPgBoT7H0D6Ymqhmx8yfM5ZJeNzTrW23Bx9FEw1aUofihS1AL
	pCKp0x771qq67voeN3cylxxTZnNehLOhwbGc4JP5b9mPbcl9icUzgRXI4rGOWUeZCYXosXgBJAxy
	8V.QzTF8qI9gWIiRMEsbY1GzlWaz5Aw81rbmkLL9u3GSXZiqikubtmY0i9kIk7WNN94iMV8184SF
	w0YJV.hjT8yyoYwJH_LtmfkPXRisGLE0BKRpwkxwlo5fdIuIGq_25YJgiGPJD1seYO78pB7dzto0
	0uz1JY9u0Z7RlcnxS6gFQqVFmasg9C2JWWVMiZnIhiMdx11A95hkTnwDv06F6nijguJFEtawZp_F
	KHe_5s5Rw.X22Iqf_X_Pg8kX9q69Hu5Hb_pUAvNOO9.QxCxk.Q.XPsFb2HSoxpIzluL8l5SddYSr
	mUEmE8IDValt8S3Bw0yPqjC0PEZCcdPZePh4aR66fo1QTf_RDuRTLfjOXPwei9fxSEo1sjJj40Dt
	iV1oGtQjELiLmxPjRWJcSluj7afhkkCORjhVCjCwXK_s4I8qnnGv_Y5.x58UoBB5WQfoN2SdtPk8
	mfTTDb17X
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic303.consmr.mail.sg3.yahoo.com with HTTP;
	Wed, 11 Jul 2018 12:47:11 +0000
Date: Wed, 11 Jul 2018 12:47:06 +0000 (UTC)
From: hardik vala <hardik.vala@aumraj.com>
To: Aditya Tayade <Aditya.Tayade@kpit.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Message-ID: <1864804528.2138302.1531313226178@mail.yahoo.com>
In-Reply-To: <MAXPR01MB03480862C61EEC86A4B64980915A0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB03480862C61EEC86A4B64980915A0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-Mailer: WebService/1.1.12062 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0
Subject: Re: [do_package_qa] QA Issue: -dev package contains non-symlink	.so
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hardik vala <hardik.vala@aumraj.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 11 Jul 2018 12:47:15 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2138301_1827972929.1531313226174"

------=_Part_2138301_1827972929.1531313226174
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

It looks like mediasdk install .so files that are actual libraries and not =
syslinks to the versioned libraries.Best solution would be to get mediasdk =
to install versioned libraries if that's not an option you can transfer you=
r files to actual library package not the -dev package.
also set both files in {PN} - dev and files_{PN}
Regards,Hardik Vala


      From: Aditya Tayade <Aditya.Tayade@kpit.com>
 To: "poky@yoctoproject.org" <poky@yoctoproject.org>=20
 Sent: Wednesday, 11 July 2018 6:02 PM
 Subject: [poky] [do_package_qa] QA Issue: -dev package contains non-symlin=
k .so
  =20
 <!--#yiv0193257264 P {margin-top:0;margin-bottom:0;}-->Hi,
I am getting do_package_qa: QA Issue while compiling mediasdk.bb.

Configuration set up in mediasdk.bb file are as follows:
INSANE_SKIP_${PN} +=3D " already-stripped dev-so dev-deps ldflags"
INHIBIT_SYSROOT_STRIP =3D "1"

RDEPENDS_${PN} +=3D "wayland libdrm-3rdparty media-libva libpciaccess libdr=
m mediasdk-dev"
DEPENDS +=3D "libva"

FILES_${PN}=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 +=3D "/opt/3rdparty/mediasdk/lib64/libmfxhw64.so"
FILES_${PN}-dbg=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +=3D "/opt/=
3rdparty/mediasdk/lib64/.debug/i965_drv_video.so"
FILES_${PN}-dev=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +=3D "/opt/=
3rdparty/mediasdk/include"
FILES_${PN}-samples=C2=A0=C2=A0=C2=A0=C2=A0 +=3D "/opt/3rdparty/mediasdk/sa=
mples"
FILES_${PN}-staticdev=C2=A0=C2=A0 +=3D "/opt/3rdparty/mediasdk/lib/lin_x64/=
libmfx.a"
FILES_${PN}-doc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +=3D "/opt/=
3rdparty/mediasdk/doc"

ERROR: mediasdk-16.7-772-r0 do_package_qa: QA Issue: -dev package contains =
non-symlink .so: mediasdk-samples-dev path '/work/corei7-64-work-linux/medi=
asdk/16.7-772-r0/packages-split/mediasdk-samples-dev/usr/share/3rdparty/med=
iasdk/samples/_bin/x64/libsample_rotate_plugin.so'
-dev package contains non-symlink .so: mediasdk-samples-dev path '/work/cor=
ei7-64-work-linux/mediasdk/16.7-772-r0/packages-split/mediasdk-samples-dev/=
usr/share/3rdparty/mediasdk/samples/_bin/x64/libmfx_wayland.so' [dev-elf]
ERROR: mediasdk-16.7-772-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.
ERROR: mediasdk-16.7-772-r0 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /home/builder/src/base/build_work-high=
/tmp-glibc/work/corei7-64-work-linux/mediasdk/16.7-772-r0/temp/log.do_packa=
ge_qa.20727
ERROR: Task (/home/builder/src/base/meta-3rdparty-ias/meta-ias-mediasdk/rec=
ipes-multimedia/mediasdk/mediasdk_16.7-772.bb:do_package_qa) failed with ex=
it code '1'
Could you please help me with this.
Regards,Aditya Tayade
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.--=20
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky


  =20

------=_Part_2138301_1827972929.1531313226174
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:=E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb;font-size:16px"><div id=3D=
"yui_3_16_0_ym19_1_1531302470954_7733">It looks like mediasdk install .so f=
iles that are actual libraries and not syslinks to the versioned libraries.=
</div><div id=3D"yui_3_16_0_ym19_1_1531302470954_7890">Best solution would =
be to get mediasdk to install versioned libraries if that's not an option y=
ou can transfer your files to actual library package not the -dev package.<=
/div><div id=3D"yui_3_16_0_ym19_1_1531302470954_7891"><br></div><div dir=3D=
"ltr" id=3D"yui_3_16_0_ym19_1_1531302470954_7889">also set both files in {P=
N} - dev and files_{PN}</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_15313=
02470954_7933"><br></div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_153130247=
0954_7937">Regards,</div><div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_153130247=
0954_7935">Hardik Vala</div><div id=3D"yui_3_16_0_ym19_1_1531302470954_7601=
"><span id=3D"yui_3_16_0_ym19_1_1531302470954_7919"><br></span></div><div c=
lass=3D"qtdSeparateBR" id=3D"yui_3_16_0_ym19_1_1531302470954_7610"><br><br>=
</div><div class=3D"yahoo_quoted" id=3D"yui_3_16_0_ym19_1_1531302470954_775=
7" style=3D"display: block;">  <div style=3D"font-family: =E6=A8=99=E6=A5=
=B7=E9=AB=94, dfkai-sb; font-size: 16px;" id=3D"yui_3_16_0_ym19_1_153130247=
0954_7756"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helve=
tica, Arial, Lucida Grande, Sans-Serif; font-size: 16px;" id=3D"yui_3_16_0_=
ym19_1_1531302470954_7755"> <div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_153130=
2470954_7888"> <font id=3D"yui_3_16_0_ym19_1_1531302470954_7892" size=3D"2"=
 face=3D"Arial"> <hr size=3D"1"> <b><span style=3D"font-weight:bold;">From:=
</span></b> Aditya Tayade &lt;Aditya.Tayade@kpit.com&gt;<br> <b><span style=
=3D"font-weight: bold;">To:</span></b> "poky@yoctoproject.org" &lt;poky@yoc=
toproject.org&gt; <br> <b><span style=3D"font-weight: bold;">Sent:</span></=
b> Wednesday, 11 July 2018 6:02 PM<br> <b><span style=3D"font-weight: bold;=
">Subject:</span></b> [poky] [do_package_qa] QA Issue: -dev package contain=
s non-symlink=09.so<br> </font> </div> <div class=3D"y_msg_container" id=3D=
"yui_3_16_0_ym19_1_1531302470954_7754"><br><div id=3D"yiv0193257264">

=20
<style type=3D"text/css"><!--#yiv0193257264 P {margin-top:0;margin-bottom:0=
;}--></style>

<div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1531302470954_7753">
<div id=3D"yiv0193257264divtagdefaultwrapper" style=3D"font-size:12pt;color=
:#000000;font-family:Calibri, Helvetica, sans-serif;" dir=3D"ltr">
<div style=3D"margin-top:0;margin-bottom:0;" id=3D"yui_3_16_0_ym19_1_153130=
2470954_7893">Hi,</div>
<div style=3D"margin-top:0;margin-bottom:0;" id=3D"yui_3_16_0_ym19_1_153130=
2470954_7894"><br>
</div>
<div style=3D"margin-top:0;margin-bottom:0;" id=3D"yui_3_16_0_ym19_1_153130=
2470954_7916">I am getting <span id=3D"yui_3_16_0_ym19_1_1531302470954_7915=
">do_package_qa: QA Issue</span> while compiling mediasdk.bb.
<br>
</div>
<div style=3D"margin-top:0;margin-bottom:0;"></div>
<div id=3D"yui_3_16_0_ym19_1_1531302470954_7887"><br>
</div>
<div id=3D"yui_3_16_0_ym19_1_1531302470954_7752">Configuration set up in me=
diasdk.bb file are as follows:<br>
<div id=3D"yui_3_16_0_ym19_1_1531302470954_7895">INSANE_SKIP_${PN} +=3D " a=
lready-stripped dev-so dev-deps ldflags"<br>
INHIBIT_SYSROOT_STRIP =3D "1"<br>
<br>
RDEPENDS_${PN} +=3D "wayland libdrm-3rdparty media-libva libpciaccess libdr=
m mediasdk-dev"<br>
DEPENDS +=3D "libva"<br>
<br>
FILES_${PN}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; +=3D "/opt/3rdparty/mediasdk/lib64/libmfxhw64.so"<br>
FILES_${PN}-dbg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +=3D "/opt/=
3rdparty/mediasdk/lib64/.debug/i965_drv_video.so"<br>
FILES_${PN}-dev&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +=3D "/opt/=
3rdparty/mediasdk/include"<br>
FILES_${PN}-samples&nbsp;&nbsp;&nbsp;&nbsp; +=3D "/opt/3rdparty/mediasdk/sa=
mples"<br>
FILES_${PN}-staticdev&nbsp;&nbsp; +=3D "/opt/3rdparty/mediasdk/lib/lin_x64/=
libmfx.a"<br>
FILES_${PN}-doc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +=3D "/opt/=
3rdparty/mediasdk/doc"</div>
</div>
<div><br>
</div>
<div id=3D"yui_3_16_0_ym19_1_1531302470954_7913"><br>
</div>
<div></div>
<div style=3D"margin-top:0;margin-bottom:0;"></div>
<div id=3D"yui_3_16_0_ym19_1_1531302470954_7899">
<div id=3D"yui_3_16_0_ym19_1_1531302470954_7898">
<div id=3D"yui_3_16_0_ym19_1_1531302470954_7897">ERROR: mediasdk-16.7-772-r=
0 do_package_qa: QA Issue: -dev package contains non-symlink .so: mediasdk-=
samples-dev path '/work/corei7-64-work-linux/mediasdk/16.7-772-r0/packages-=
split/mediasdk-samples-dev/usr/share/3rdparty/mediasdk/samples/_bin/x64/lib=
sample_rotate_plugin.so'<br>
-dev package contains non-symlink .so: mediasdk-samples-dev path '/work/cor=
ei7-64-work-linux/mediasdk/16.7-772-r0/packages-split/mediasdk-samples-dev/=
usr/share/3rdparty/mediasdk/samples/_bin/x64/libmfx_wayland.so' [dev-elf]<b=
r>
ERROR: mediasdk-16.7-772-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.<br>
ERROR: mediasdk-16.7-772-r0 do_package_qa: Function failed: do_package_qa<b=
r>
ERROR: Logfile of failure stored in: /home/builder/src/base/build_work-high=
/tmp-glibc/work/corei7-64-work-linux/mediasdk/16.7-772-r0/temp/log.do_packa=
ge_qa.20727<br>
ERROR: Task (/home/builder/src/base/meta-3rdparty-ias/meta-ias-mediasdk/rec=
ipes-multimedia/mediasdk/mediasdk_16.7-772.bb:do_package_qa) failed with ex=
it code '1'</div>
<br>
</div>
<div>Could you please help me with this.</div>
<div><br>
</div>
<div>Regards,</div>
<div>Aditya Tayade<br>
</div>
</div>
<div></div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</div>
</div>-- <br>_______________________________________________<br>poky mailin=
g list<br><a ymailto=3D"mailto:poky@yoctoproject.org" href=3D"mailto:poky@y=
octoproject.org">poky@yoctoproject.org</a><br><a href=3D"https://lists.yoct=
oproject.org/listinfo/poky" target=3D"_blank">https://lists.yoctoproject.or=
g/listinfo/poky</a><br><br><br></div> </div> </div>  </div></div></body></h=
tml>

------=_Part_2138301_1827972929.1531313226174--
