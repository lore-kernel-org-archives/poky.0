Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 803BDE008EC; Wed,  8 Apr 2015 07:14:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
Received: from mail-pd0-f179.google.com (mail-pd0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 312DEE0086E;
	Wed,  8 Apr 2015 07:14:49 -0700 (PDT)
Received: by pdea3 with SMTP id a3so116852762pde.3;
	Wed, 08 Apr 2015 07:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=3yGTOQHvA3kPvyQQsJqMg4VqiKBELSBvdJKoQp4fwIk=;
	b=NMWdfIncvPYeNpA7Khp6L4WH4RKibWDO5yVdZ3MfQ3/htzzGkg8WIOU0LxfSY2ypnV
	mzUZU3ZBTxiQXOQg2TE9ilkRAg0k4ryzScPn5uDwngxzZ/Yx5hd4PhX4kfgHckdmjmFF
	h6dmDO8XnTQlYAHd6chHlCY/dG7dDcpxSWu7zb/ge0l/uFy1opYk6dPw/rcDUq6RbIHK
	hW4l4fx7GJ2a3QDWgXZ7zuPAOYzxE6MlRmTir8yzVO00Grr2mAdxUoyJHkXssqng6GBU
	zmr5i6nfSo+wWUv09AU3UOGCd7UWeJvaSvpJi2S5VNvizkm17EQtuO7vExyuopSoEW3i
	ToKQ==
MIME-Version: 1.0
X-Received: by 10.68.94.129 with SMTP id dc1mr46414809pbb.8.1428502489444;
	Wed, 08 Apr 2015 07:14:49 -0700 (PDT)
Received: by 10.70.135.134 with HTTP; Wed, 8 Apr 2015 07:14:49 -0700 (PDT)
In-Reply-To: <20150408135331.GC8848@ad.chargestorm.se>
References: <CA+pXca1Wjea0jtPUH5mMcqA13E3_E_o6am4yjn28w-cJq3nYuQ@mail.gmail.com>
	<20150408135331.GC8848@ad.chargestorm.se>
Date: Wed, 8 Apr 2015 19:44:49 +0530
Message-ID: <CA+pXca261qeRDUw4vCUxpczKYdsjhEpMQ3O63kfCp7iQCeTbMg@mail.gmail.com>
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
X-List-Received-Date: Wed, 08 Apr 2015 14:14:52 -0000
Content-Type: multipart/alternative; boundary=047d7b6741ee71b62705133727bb

--047d7b6741ee71b62705133727bb
Content-Type: text/plain; charset=UTF-8

Hi Anders,

I have added  to xerces-c_3.1.1.bb

do_install_append() {
        rm -rf ${D}/usr/src/
}

but no use still getting the error

>>2) Package those file in either one of the current packages, or in a new
package.

I didn't get this.

Thanks
Praveen


On Wed, Apr 8, 2015 at 7:23 PM, Anders Darander <anders@chargestorm.se>
wrote:

> * praveen vattipalli <praveen.vatt@gmail.com> [150408 15:48]:
> > +PACKAGES = "libxerces-c \
> > + libxerces-c-dbg \
> > + libxerces-c-dev \
> > + xerces-c-samples \
> > + xerces-c-samples-dbg \
> > +"
> > +
> > +FILES_libxerces-c = "${libdir}/libxerces-c-3.1.so"
> > +FILES_libxerces-c-dbg = "${libdir}/.debug/"
> > +FILES_libxerces-c-dev = "${libdir}/lib*.la \
> > + ${libdir}/lib*.a \
> > + ${libdir}/libxerces-c.so \
> > + ${libdir}/pkgconfig/xerces-c.pc \
> > + ${includedir}/xercesc \
> > +"
> > +FILES_xerces-c-samples = "${bindir}/*"
> > +FILES_xerces-c-samples-dbg = "${bindir}/.debug/"
>
> > I am getting below error
>
> > ERROR: QA Issue: xerces-c: Files/directories were installed but not
> shipped
> > /usr/src
> > /usr/src/debug
> > /usr/src/debug/xerces-c
> > /usr/src/debug/xerces-c/3.1.1-r0
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1
> > /usr/src/debug/xerces-c/3.1.1-r0/build
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/samples
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.h
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/strnicmp.c
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.c
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/stricmp.h
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/util
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/framework
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/internal
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/xinclude
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/sax2
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/parsers
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/dom
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/datatype
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/schema
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/DTD
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMBinaryOp.cpp
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/GrammarResolver.hpp
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMNode.hpp
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.cpp
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/Grammar.hpp
> >
> /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xercesc/validators/common/CMLeaf.hpp
> > /usr/src/debug/xerces-c/3.1.1-r0/xerces-c-3.1.1/src/xe
>
> > and so on........
>
> Well, xervces is installing lots of files to /usr/src/debug... So you
> have to choices:
>
> 1) Remove those files. Add a do_install_append where you're running
> `rm -rf ${D}/usr/src`
>
> 2) Package those file in either one of the current packages, or in a new
> package.
>
> Cheers,
> Anders
>
>
> --
> Anders Darander
> ChargeStorm AB / eStorm AB
>

--047d7b6741ee71b62705133727bb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi Anders,<br><br>I have added=C2=A0 to <a =
href=3D"http://xerces-c_3.1.1.bb">xerces-c_3.1.1.bb</a> <br><br>do_install_=
append() {<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rm -rf ${D}/usr/sr=
c/<br>}<br><br></div><div>but no use still getting the error<br><br>&gt;&gt=
;2) Package those file in either one of the current packages, or in a new p=
ackage.<br></div><br>I didn&#39;t get this.<br><br></div>Thanks <br></div>P=
raveen<br><div><div><div><br></div></div></div></div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Wed, Apr 8, 2015 at 7:23 PM, Anders =
Darander <span dir=3D"ltr">&lt;<a href=3D"mailto:anders@chargestorm.se" tar=
get=3D"_blank">anders@chargestorm.se</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">* praveen vattipalli &lt;<a href=3D"mailto:praveen.vatt@g=
mail.com">praveen.vatt@gmail.com</a>&gt; [150408 15:48]:<br>
<span class=3D"">&gt; +PACKAGES =3D &quot;libxerces-c \<br>
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
</span><div><div class=3D"h5">&gt; I am getting below error<br>
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
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
--<br>
Anders Darander<br>
ChargeStorm AB / eStorm AB<br>
</font></span></blockquote></div><br></div>

--047d7b6741ee71b62705133727bb--
