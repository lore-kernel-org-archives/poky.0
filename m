Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D45C4E008EC; Wed,  8 Apr 2015 06:47:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8594EE0086E;
	Wed,  8 Apr 2015 06:47:56 -0700 (PDT)
Received: by pdbqa5 with SMTP id qa5so58970343pdb.1;
	Wed, 08 Apr 2015 06:47:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=I+1T31jzPqhWDPZuBFk9LNqyPm+xp8MDZai8KIeA5oU=;
	b=hfE5EIX6N1MXCiVzBVhT1Ko0CSGcD4HvZD0K0tT4j2wEXMMRamBr/xnaMQpeFo1xcS
	U0PR04rRORg/pWDvz+Y8g66J3ifcGqURuUAf9Uu5JGauJCKaRDlPFSrlAEvmGnjvOFKu
	xXhFUG3gx5DH9Ab6LfL25yTFqosJPJxisrstK8tvZQeJTWYdD4gRqTZtnaUSAaaO1o19
	QdmV18OblwpMWC7ackyeb9T4UlTtg+9tzvpRFjcEBAq5hRpY49/hioB3VofQuGy7q0LQ
	AugJr6MOdtxztlPhBoVsXS6CLtcmGl4aci3e66iJFKBeSWW8n2tYm2XcxDmHE1ADrCwd
	VgSg==
MIME-Version: 1.0
X-Received: by 10.68.168.225 with SMTP id zz1mr45736756pbb.3.1428500876575;
	Wed, 08 Apr 2015 06:47:56 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Wed, 8 Apr 2015 06:47:56 -0700 (PDT)
Date: Wed, 8 Apr 2015 19:17:56 +0530
Message-ID: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: yocto <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: error in xerces-c in yocto-dizzy-1.7.1
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
X-List-Received-Date: Wed, 08 Apr 2015 13:47:58 -0000
Content-Type: multipart/alternative; boundary=047d7ba984904f4bcd051336c70f

--047d7ba984904f4bcd051336c70f
Content-Type: text/plain; charset=UTF-8

hi,
I am building xerces-c in yocto-1.7.1(dizzy) on ubuntu12.04 64bit for
cortexa9 board.

I am referring below link

http://lists.openembedded.org/pipermail/openembedded-devel/
2012-January/082676.html
xerces-c_3.1.1.bb

+DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
+HOMEPAGE = "http://xerces.apache.org/xerces-c/"
+SECTION = "libs"
+PRIORITY = "optional"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57
+
+PR = "r1"
+
+SRC_URI = "http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.
gz"
+
+inherit autotools pkgconfig
+
+PACKAGES = "libxerces-c \
+ libxerces-c-dbg \
+ libxerces-c-dev \
+ xerces-c-samples \
+ xerces-c-samples-dbg \
+"
+
+FILES_libxerces-c = "${libdir}/libxerces-c-3.1.so"
+FILES_libxerces-c-dbg = "${libdir}/.debug/"
+FILES_libxerces-c-dev = "${libdir}/lib*.la \
+ ${libdir}/lib*.a \
+ ${libdir}/libxerces-c.so \
+ ${libdir}/pkgconfig/xerces-c.pc \
+ ${includedir}/xercesc \
+"
+FILES_xerces-c-samples = "${bindir}/*"
+FILES_xerces-c-samples-dbg = "${bindir}/.debug/"
+
+SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
+SRC_URI[sha256sum] =
"a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"
+
+BBCLASSEXTEND += "native"


I am getting below error

ERROR: QA Issue: xerces-c: Files/directories were installed but not shipped
/usr/src
/usr/src/debug
/usr/src/debug/xerces-c
/usr/src/debug/xerces-c/3.1.1-r0
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1
/usr/src/debug/xerces-c/3.1.1-r0/build
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/samples
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.h
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.c
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.c
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.h
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/util
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/framework
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/internal
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/xinclude
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax2
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/parsers
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/dom
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/datatype
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/schema
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/DTD
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMBinaryOp.cpp
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/GrammarResolver.hpp
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMNode.hpp
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.cpp
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.hpp
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMLeaf.hpp
/usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe

and so on........


Could i get any help..

Thanks

Praveen

--047d7ba984904f4bcd051336c70f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>hi,<br>I am building xerces-c in yocto-1.7.1(diz=
zy) on ubuntu12.04 64bit for cortexa9 board.</div><div>=C2=A0</div></div> I=
 am referring below link<br><div><div><br><a href=3D"http://lists.openembed=
ded.org/pipermail/openembedded-devel/2012-January/082676.html" target=3D"_b=
lank"><font color=3D"#0066cc">http://lists.openembedded.org/</font><font co=
lor=3D"#0066cc">pipermail/openembedded-devel/</font><font color=3D"#0066cc"=
>2012-January/082676.html</font></a><br></div><div><a href=3D"http://xerces=
-c_3.1.1.bb">xerces-c_3.1.1.bb</a> </div><div><br>+DESCRIPTION =3D &quot;<s=
pan>Xerces</span>-c is a validating xml parser written in C++&quot;<br>+HOM=
EPAGE =3D &quot;<a href=3D"http://xerces.apache.org/xerces-c/" target=3D"_b=
lank"><font color=3D"#0066cc">http://<span>xerces</span>.apache.org/<span>x=
erces</span>-c/</font></a>&quot;<br>+SECTION =3D  &quot;libs&quot;<br>+PRIO=
RITY =3D &quot;optional&quot;<br>+LICENSE =3D &quot;Apache-2.0&quot;<br>+LI=
C_FILES_CHKSUM =3D &quot;<a><font color=3D"#0066cc">file://LICENSE;md5=3D3b=
83ef96387f14655fc854ddc3c6bd57</font></a><br>+<br>+PR =3D &quot;r1&quot;<br=
>+<br>+SRC_URI =3D &quot;<a href=3D"http://apache.lauf-forum.at/xerces/c/3/=
sources/$%7BBP" target=3D"_blank"><font color=3D"#0066cc">http://apache.lau=
f-forum.at/<span>xerces</span>/c/3/sources/${BP</font></a>}.tar.</div><div =
dir=3D"ltr">gz&quot;<br>+<br>+inherit autotools pkgconfig<br>+<br>+PACKAGES=
 =3D &quot;libxerces-c \<br>+    libxerces-c-dbg \<br>+    libxerces-c-dev =
\<br>+    <span>xerces</span>-c-samples \<br>+    <span>xerces</span>-c-sam=
ples-dbg \<br>+&quot; <br>+<br>+FILES_libxerces-c =3D &quot;${libdir}/<a hr=
ef=3D"http://libxerces-c-3.1.so/" target=3D"_blank"><font color=3D"#0066cc"=
>libxerces-c-3.1.so</font></a>&quot;<br>+FILES_libxerces-c-dbg =3D &quot;${=
libdir}/.debug/&quot;<br>+FILES_libxerces-c-dev =3D &quot;${libdir}/lib*.la=
 \<br>+    ${libdir}/lib*.a \<br>+    ${libdir}/libxerces-c.so \<br>+    ${=
libdir}/pkgconfig/<span>xerces</span>-c.pc \<br>+    ${includedir}/xercesc =
\<br>+&quot;<br>+FILES_xerces-c-samples =3D &quot;${bindir}/*&quot;<br>+FIL=
ES_xerces-c-samples-dbg =3D &quot;${bindir}/.debug/&quot;<br>+<br>+SRC_URI[=
md5sum] =3D &quot;6a8ec45d83c8cfb1584c5a5345cb51ae&quot;<br>+SRC_URI[sha256=
sum] =3D &quot;a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d4496=
8736&quot;<br>+<br>+BBCLASSEXTEND +=3D &quot;native&quot;</div><div><br>=C2=
=A0</div><div>I am getting below error<br><br>ERROR: QA Issue: xerces-c: Fi=
les/directories were installed but not shipped<br>  /usr/src<br>  /usr/src/=
debug<br>  /usr/src/debug/xerces-c<br>  /usr/src/debug/xerces-c/3.1.1-r0<br=
>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1<br>  /usr/src/debug/xerc=
es-c/3.1.1-r0/build<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/sr=
c<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/samples<br>  /usr/sr=
c/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.h<br>  /usr/src/debug=
/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.c<br>  /usr/src/debug/xerces=
-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.c<br>  /usr/src/debug/xerces-c/3.1.1=
-r0/xerces-c-3.1.1/src/stricmp.h<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerc=
es-c-3.1.1/src/xercesc<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1=
/src/xercesc/validators<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.=
1/src/xercesc/util<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src=
/xercesc/sax<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xerce=
sc/framework<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xerce=
sc/internal<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xerces=
c/xinclude<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc=
/sax2<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/pars=
ers<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/dom<br=
>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/c=
ommon<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/vali=
dators/datatype<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe=
rcesc/validators/schema<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.=
1/src/xercesc/validators/DTD<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c=
-3.1.1/src/xercesc/validators/common/CMBinaryOp.cpp<br>  /usr/src/debug/xer=
ces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/GrammarResolver=
.hpp<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/valid=
ators/common/CMNode.hpp<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.=
1/src/xercesc/validators/common/Grammar.cpp<br>  /usr/src/debug/xerces-c/3.=
1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.hpp<br>  /usr/s=
rc/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CML=
eaf.hpp<br>  /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe<br><br>=
</div><div>and so on........<br><br><br></div><div>Could i get any help..<b=
r><br></div><div>Thanks </div><div>=C2=A0</div><div>Praveen</div></div></di=
v>

--047d7ba984904f4bcd051336c70f--
