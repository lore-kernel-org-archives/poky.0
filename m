Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A64F4E00952; Thu,  9 Apr 2015 03:00:44 -0700 (PDT)
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
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E87AE0088A;
	Thu,  9 Apr 2015 03:00:41 -0700 (PDT)
Received: by pdea3 with SMTP id a3so147746581pde.3;
	Thu, 09 Apr 2015 03:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=WoH6g5ujn3qUJnheTBwUgYINL8lVFDE21WIHNXt8+6c=;
	b=CHWOVeqN391R4kwMgxEPwKBHnI+RtH8s2qZgcB1TH2Kb9t1b9tVqobWdjm7DHiMJRS
	/POcOyUI06UDsI7l8WlQSozC1Fq6kLlbtsSSxvjPsebx59R1yGOHPakKkzYQcbLmkz8c
	Q2KKR8uQKa0jsTIRKJgIwFCeNMva2D0eOtDQtrENlASpbHZxGrJnxL5UI1vR3XeFUH97
	JuGnbyfS0aR9VC1YHKfAT22HKegcax4BoQtUb6Na0jyjt5qFRQJeg7LdfyHNq/AlHgUu
	CL7OIBXH+c4H7F/pRMxWs5eAQsOaSMn3NOBjf5H7rYUg1ynkM8WGPEFOgPV88UyEY63A
	/4HA==
MIME-Version: 1.0
X-Received: by 10.70.98.139 with SMTP id ei11mr54306323pdb.3.1428573640491;
	Thu, 09 Apr 2015 03:00:40 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Thu, 9 Apr 2015 03:00:40 -0700 (PDT)
In-Reply-To: <CA+pXca261qeRDUw4vCUxpczKYdsjhEpMQ3O63kfCp7iQCeTbMg@mail.gmail.com>
References: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
	<20150408135331.GC8848@ad.chargestorm.se>
	<CA+pXca261qeRDUw4vCUxpczKYdsjhEpMQ3O63kfCp7iQCeTbMg@mail.gmail.com>
Date: Thu, 9 Apr 2015 15:30:40 +0530
Message-ID: <CA+pXca3j+yaTzZZsRSFckutbG1cfRH=c+tDcyT5rtB2Xo75r2g@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: yocto <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Re: error in xerces-c in yocto-dizzy-1.7.1
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
X-List-Received-Date: Thu, 09 Apr 2015 10:00:44 -0000
Content-Type: multipart/alternative; boundary=001a11c2324e6087f3051347b8e0

--001a11c2324e6087f3051347b8e0
Content-Type: text/plain; charset=UTF-8

HI


i changed the bb file
now xerces-c_3.1.1.bb <http://xerces-c_3.1.1.bb> recipe looks like this

DESCRIPTION = "Xerces-c is a validating xml parser written in C++"
HOMEPAGE = "http://xerces.apache.org/xerces-c/"
SECTION =  "libs"
PRIORITY = "optional"
LICENSE = "Apache-2.0"

LIC_FILES_CHKSUM = "file://LICENSE;md5=
3b83ef96387f14655fc854ddc3c6bd57"

SRC_URI = "http://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz"

inherit autotools pkgconfig

PACKAGES = "libxerces-c \
    libxerces-c-dbg \
    libxerces-c-dev \
    xerces-c-samples \
    xerces-c-samples-dbg \
"

FILES_libxerces-c = "${libdir}/libxerces-c-3.1.so"
FILES_libxerces-c-dbg = "${libdir}/.debug/"
FILES_libxerces-c-dev = "${libdir}/lib*.la  \
    ${libdir}/libxerces-c.so \
    ${libdir}/pkgconfig/xerces-c.pc \
    ${includedir}/xercesc \
"
FILES_libxerces-c-staticdev = "${libdir}/libxerces-c.a"
FILES_xerces-c-samples = "${bindir}/*  ${prefix}/src/debug"
FILES_xerces-c-samples-dbg = "${bindir}/.debug/"

SRC_URI[md5sum] = "6a8ec45d83c8cfb1584c5a5345cb51ae"
SRC_URI[sha256sum] =
"a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b805d26d44968736"

almost all errors have been resolved except below....

now I am getting below error



*ERROR: QA Issue: xerces-c: Files/directories were installed but not
shipped  /usr/lib/libxerces-c.a [installed-vs-shipped]NOTE: Tasks Summary:
Attempted 382 tasks of which 376 didn't need to be rerun and all succeeded.*

Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

Thanks
Praveen

On Wed, Apr 8, 2015 at 7:44 PM, praveen vattipalli <praveen.vatt@gmail.com>
wrote:

> Hi Anders,
>
> I have added  to xerces-c_3.1.1.bb
>
> do_install_append() {
>         rm -rf ${D}/usr/src/
> }
>
> but no use still getting the error
>
> >>2) Package those file in either one of the current packages, or in a new
> package.
>
> I didn't get this.
>
> Thanks
> Praveen
>
>
> On Wed, Apr 8, 2015 at 7:23 PM, Anders Darander <anders@chargestorm.se>
> wrote:
>
>> * praveen vattipalli <praveen.vatt@gmail.com> [150408 15:48]:
>> > +PACKAGES = "libxerces-c \
>> > + libxerces-c-dbg \
>> > + libxerces-c-dev \
>> > + xerces-c-samples \
>> > + xerces-c-samples-dbg \
>> > +"
>> > +
>> > +FILES_libxerces-c = "${libdir}/libxerces-c-3.1.so"
>> > +FILES_libxerces-c-dbg = "${libdir}/.debug/"
>> > +FILES_libxerces-c-dev = "${libdir}/lib*.la \
>> > + ${libdir}/lib*.a \
>> > + ${libdir}/libxerces-c.so \
>> > + ${libdir}/pkgconfig/xerces-c.pc \
>> > + ${includedir}/xercesc \
>> > +"
>> > +FILES_xerces-c-samples = "${bindir}/*"
>> > +FILES_xerces-c-samples-dbg = "${bindir}/.debug/"
>>
>> > I am getting below error
>>
>> > ERROR: QA Issue: xerces-c: Files/directories were installed but not
>> shipped
>> > /usr/src
>> > /usr/src/debug
>> > /usr/src/debug/xerces-c
>> > /usr/src/debug/xerces-c/3.1.1-r0
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1
>> > /usr/src/debug/xerces-c/3.1.1-r0/build
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/samples
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.h
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.c
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.c
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.h
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/util
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/framework
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/internal
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/xinclude
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax2
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/parsers
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/dom
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/datatype
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/schema
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/DTD
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMBinaryOp.cpp
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/GrammarResolver.hpp
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMNode.hpp
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.cpp
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.hpp
>> >
>> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMLeaf.hpp
>> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe
>>
>> > and so on........
>>
>> Well, xervces is installing lots of files to /usr/src/debug... So you
>> have to choices:
>>
>> 1) Remove those files. Add a do_install_append where you're running
>> `rm -rf ${D}/usr/src`
>>
>> 2) Package those file in either one of the current packages, or in a new
>> package.
>>
>> Cheers,
>> Anders
>>
>>
>> --
>> Anders Darander
>> ChargeStorm AB / eStorm AB
>>
>
>

--001a11c2324e6087f3051347b8e0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">HI<br><div><div><br><br>i changed the bb file <br>now x<a =
href=3D"http://xerces-c_3.1.1.bb" target=3D"_blank">erces-c_3.1.1.bb</a> re=
cipe looks like this<span class=3D"im"><br><br>DESCRIPTION =3D &quot;Xerces=
-c is a validating xml parser written in C++&quot;<br></span>HOMEPAGE =3D &=
quot;<a href=3D"http://xerces.apache.org/xerces-c/" target=3D"_blank">http:=
//xerces.apache.org/xerces-c/</a>&quot;<br>SECTION =3D=C2=A0 &quot;libs&quo=
t;<br>PRIORITY =3D &quot;optional&quot;<br>LICENSE =3D &quot;Apache-2.0&quo=
t;<br><br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D<div>3b83ef96387f=
14655fc854ddc3c6bd57&quot;<br><br>SRC_URI =3D &quot;<a href=3D"http://apach=
e.lauf-forum.at/xerces/c/3/sources/$%7BBP%7D.tar.gz" target=3D"_blank">http=
://apache.lauf-forum.at/xerces/c/3/sources/${BP}.tar.gz</a>&quot;<br><br>in=
herit autotools pkgconfig<br><br>PACKAGES =3D &quot;libxerces-c \<br>=C2=A0=
=C2=A0=C2=A0 libxerces-c-dbg \<br>=C2=A0=C2=A0=C2=A0 libxerces-c-dev \<br>=
=C2=A0=C2=A0=C2=A0 xerces-c-samples \<br>=C2=A0=C2=A0=C2=A0 xerces-c-sample=
s-dbg \<span class=3D"im"><br>&quot;<br><br>FILES_libxerces-c =3D &quot;${l=
ibdir}/<a href=3D"http://libxerces-c-3.1.so" target=3D"_blank">libxerces-c-=
3.1.so</a>&quot;<br>FILES_libxerces-c-dbg =3D &quot;${libdir}/.debug/&quot;=
<br>FILES_libxerces-c-dev =3D &quot;${libdir}/lib*.la=C2=A0 \<br>=C2=A0=C2=
=A0=C2=A0 ${libdir}/libxerces-c.so \<br>=C2=A0=C2=A0=C2=A0 ${libdir}/pkgcon=
fig/xerces-c.pc \<br>=C2=A0=C2=A0=C2=A0 ${includedir}/xercesc \<br>&quot;<b=
r>FILES_libxerces-c-staticdev =3D &quot;${libdir}/libxerces-c.a&quot;<br>FI=
LES_xerces-c-samples =3D &quot;${bindir}/*=C2=A0 ${prefix}/src/debug&quot;<=
br>FILES_xerces-c-samples-dbg =3D &quot;${bindir}/.debug/&quot;<br><br></sp=
an>SRC_URI[md5sum] =3D &quot;6a8ec45d83c8cfb1584c5a5345cb51ae&quot;<br>SRC_=
URI[sha256sum] =3D &quot;a42785f71e0b91d5fd273831c87410ce60a73ccfdd207de1b8=
05d26d44968736&quot;<br><br></div>almost all errors have been resolved exce=
pt below....<br></div><div><br>now I am getting below error <br><br><span s=
tyle=3D"background-color:rgb(255,0,0)"><b><span class=3D"im">ERROR: QA Issu=
e: xerces-c: Files/directories were installed but not shipped<br></span>=C2=
=A0 /usr/lib/libxerces-c.a [installed-vs-shipped]<br>NOTE: Tasks Summary: A=
ttempted 382 tasks of which 376 didn&#39;t need to be rerun and all succeed=
ed.</b></span><br><br>Summary: There was 1 WARNING message shown.<br>Summar=
y: There was 1 ERROR message shown, returning a non-zero exit code.<br><br>=
</div><div>Thanks <br></div><div>Praveen<br></div></div></div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Apr 8, 2015 at 7:44 PM=
, praveen vattipalli <span dir=3D"ltr">&lt;<a href=3D"mailto:praveen.vatt@g=
mail.com" target=3D"_blank">praveen.vatt@gmail.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hi Anders,<=
br><br>I have added=C2=A0 to <a href=3D"http://xerces-c_3.1.1.bb" target=3D=
"_blank">xerces-c_3.1.1.bb</a> <br><br>do_install_append() {<br>=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${D}/usr/src/<br>}<br><br></div><d=
iv>but no use still getting the error<span class=3D""><br><br>&gt;&gt;2) Pa=
ckage those file in either one of the current packages, or in a new package=
.<br></span></div><br>I didn&#39;t get this.<br><br></div>Thanks <br></div>=
<span class=3D"HOEnZb"><font color=3D"#888888">Praveen<br><div><div><div><b=
r></div></div></div></font></span></div><div class=3D"HOEnZb"><div class=3D=
"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Apr =
8, 2015 at 7:23 PM, Anders Darander <span dir=3D"ltr">&lt;<a href=3D"mailto=
:anders@chargestorm.se" target=3D"_blank">anders@chargestorm.se</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">* praveen vattipalli &lt;<a hr=
ef=3D"mailto:praveen.vatt@gmail.com" target=3D"_blank">praveen.vatt@gmail.c=
om</a>&gt; [150408 15:48]:<br>
<span>&gt; +PACKAGES =3D &quot;libxerces-c \<br>
&gt; + libxerces-c-dbg \<br>
&gt; + libxerces-c-dev \<br>
&gt; + xerces-c-samples \<br>
&gt; + xerces-c-samples-dbg \<br>
&gt; +&quot;<br>
&gt; +<br>
&gt; +FILES_libxerces-c =3D &quot;${libdir}/<a href=3D"http://libxerces-c-3=
.1.so" target=3D"_blank">libxerces-c-3.1.so</a>&quot;<br>
&gt; +FILES_libxerces-c-dbg =3D &quot;${libdir}/.debug/&quot;<br>
&gt; +FILES_libxerces-c-dev =3D &quot;${libdir}/lib*.la \<br>
&gt; + ${libdir}/lib*.a \<br>
&gt; + ${libdir}/libxerces-c.so \<br>
&gt; + ${libdir}/pkgconfig/xerces-c.pc \<br>
&gt; + ${includedir}/xercesc \<br>
&gt; +&quot;<br>
&gt; +FILES_xerces-c-samples =3D &quot;${bindir}/*&quot;<br>
&gt; +FILES_xerces-c-samples-dbg =3D &quot;${bindir}/.debug/&quot;<br>
<br>
</span><div><div>&gt; I am getting below error<br>
<br>
&gt; ERROR: QA Issue: xerces-c: Files/directories were installed but not sh=
ipped<br>
&gt; /usr/src<br>
&gt; /usr/src/debug<br>
&gt; /usr/src/debug/xerces-c<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/build<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/samples<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.h<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.c<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.c<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.h<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/util<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/framework<=
br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/internal<b=
r>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/xinclude<b=
r>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax2<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/parsers<br=
>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/dom<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/common<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/datatype<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/schema<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/DTD<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/common/CMBinaryOp.cpp<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/common/GrammarResolver.hpp<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/common/CMNode.hpp<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/common/Grammar.cpp<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/common/Grammar.hpp<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators=
/common/CMLeaf.hpp<br>
&gt; /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe<br>
<br>
&gt; and so on........<br>
<br>
</div></div>Well, xervces is installing lots of files to /usr/src/debug... =
So you<br>
have to choices:<br>
<br>
1) Remove those files. Add a do_install_append where you&#39;re running<br>
`rm -rf ${D}/usr/src`<br>
<br>
2) Package those file in either one of the current packages, or in a new<br=
>
package.<br>
<br>
Cheers,<br>
Anders<br>
<span><font color=3D"#888888"><br>
<br>
--<br>
Anders Darander<br>
ChargeStorm AB / eStorm AB<br>
</font></span></blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a11c2324e6087f3051347b8e0--
