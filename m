Return-Path: <maxime.roussinbelanger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B3EDE00C7E; Thu, 29 Nov 2018 17:30:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maxime.roussinbelanger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9118E00C71
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 17:30:02 -0800 (PST)
Received: by mail-io1-f66.google.com with SMTP id v10so3211481ios.13
	for <poky@yoctoproject.org>; Thu, 29 Nov 2018 17:30:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=NYpmJJt6tVt4xZELjxb36D29vC4+szxe5otKYyaBh3s=;
	b=fRqioKrx+lzohEGsYJ4Qcb2797LYC8/9I1XaS94FUj/yGZMpNglTpMS0qFfRJAI+F7
	JitE/WqLUIAcwvcQ0ZaHt1b2A9CH/xB1/fVN7SQQ8X6ddhITP0th8/lklEUkuXPsHh8/
	/X7rp4OumjHttoeOlMQJG614ntF590T3APmElDPd1fZ2hTuRuOxTVb1XoraL8qex2C1O
	mgyaYlaZkGy/KeQMLdrBOt4TxuvQUNipd9C6D2f9aRFY/QLj6IXjkR+e26OyMkn+5r99
	2ADY6CI+a+dZSY5ILlyXWgfQ7zoj7klIv8kJ3sf9bJNgHSgk9YVw4Y4RY7wPrhAOhY8o
	vXzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=NYpmJJt6tVt4xZELjxb36D29vC4+szxe5otKYyaBh3s=;
	b=n+CxJVWhOMlu2OspxrUU+QusuSfbqRIpLsP0I9UROh+8NoEL9HnvqfsMHSh7PltVtS
	0VeOfxmXy7Y0LXOyW51mCJZPy29BItns5S7dOIZMvW/PVYe/7Ucm3JlJKK8fPB5+AXg/
	6MfLozoyEcpziCr58bCYfnezHJpUenOUNrIjWAJuY5zGUJUXufAM4iYyH66fs4Fss+fN
	9BEQay9tL6MtfypGgbq1lwoesyz2NkVqd1DN1fFLX5MUWvBYmoTLwCKMnMGCFrcP3jx7
	ldVSl3O/GZPpRYfv7Ckcxv5MvkPr6cBf/bnqiPpuQ/6EA8TxaAXS/frGxSLE0eJ4mfXR
	L8Rg==
X-Gm-Message-State: AA+aEWY9nXcTFD0tpo8T6N1GjFq38FujPVF/RGIoiLmJcgCN7khrjNsh
	4nWwALNC7ZLdUFmO3JhKlM148mRi4HpZw0mjY85rEA==
X-Google-Smtp-Source: AFSGD/XbPx6TLMtRaoSOMBpza/aH5tELUG7zK3R5QvkbEtTNVn1B1PvgvuNBbnJnrTZccvrOwakD99ZLly2qPHLXgq0=
X-Received: by 2002:a6b:770c:: with SMTP id n12mr3181438iom.88.1543541402127; 
	Thu, 29 Nov 2018 17:30:02 -0800 (PST)
MIME-Version: 1.0
References: <cover.1543535225.git.roussinm@sonatest.com>
	<9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
	<CAJTo0LZRa_b0DbGVpuUa_Uksjho877bqjyAAYuOhD9_zRtPLKg@mail.gmail.com>
In-Reply-To: <CAJTo0LZRa_b0DbGVpuUa_Uksjho877bqjyAAYuOhD9_zRtPLKg@mail.gmail.com>
From: =?UTF-8?Q?Maxime_Roussin=2DB=C3=A9langer?=
	<maxime.roussinbelanger@gmail.com>
Date: Thu, 29 Nov 2018 20:29:49 -0500
Message-ID: <CAE=T-s7YKSYr77eiFQQ1cCTTjH5dEy=sm=BNuQ=PXSBra8AJBw@mail.gmail.com>
To: ross.burton@intel.com
Cc: poky@yoctoproject.org
Subject: Re: [PULL][PATCH 1/1] cmake: remove version in directory structure
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
X-List-Received-Date: Fri, 30 Nov 2018 01:30:04 -0000
Content-Type: multipart/alternative; boundary="000000000000f851c9057bd7bc58"

--000000000000f851c9057bd7bc58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 29, 2018 at 6:55 PM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Thu, 29 Nov 2018 at 23:52, Maxime Roussin-B=C3=A9langer
> <maxime.roussinbelanger@gmail.com> wrote:
> > Remove the number because I don't think it's worth
> > supporting multiple version of cmake inside an embedded
> > product.
> >
> > When using an SDK, using 2 different CMake is probably not a
> > use case.
>
> Whilst that's a hard point to argue with, what's the problem that's
> being solved here?


If CMake is in the cmake-x.xx directory and then there is libeigen that
adds their own cmake modules to the cmake/modules.

So now you have the cmake modules inside cmake-x.xx/Modules and some in
cmake/modules. Your project will have to update the CMAKE_MODULE_PATH,
if they wanna use libeigen.

Well, I think that's how it works. All of the recipes that want to add
their own
module they have to use `cmake/Modules`, because they can't possibly know
which cmake version we are using.

So I thought maybe put them all in the same directory so no one
has to deal with the fact that 2 directories are used for the same thing.

Less confusing?

>
> >  EXTRA_OECMAKE=3D" \
> > -    -DCMAKE_DOC_DIR=3D${docdir_stripped}/cmake-${CMAKE_MAJOR_VERSION} =
\
> > +    -DCMAKE_DOC_DIR=3D${docdir_stripped}/cmake \
> > +    -DCMAKE_DATA_DIR=3Dshare/cmake \
> >      -DCMAKE_USE_SYSTEM_LIBRARIES=3D1 \
> >      -DCMAKE_USE_SYSTEM_LIBRARY_JSONCPP=3D0 \
> >      -DCMAKE_USE_SYSTEM_LIBRARY_LIBUV=3D0 \
> > @@ -46,8 +47,8 @@ do_install_append_class-nativesdk() {
> >
> >  FILES_${PN}_append_class-nativesdk =3D " ${SDKPATHNATIVE}"
> >
> > -FILES_${PN} +=3D "${datadir}/cmake-${CMAKE_MAJOR_VERSION}
${datadir}/cmake ${datadir}/aclocal"
> > -FILES_${PN}-doc +=3D "${docdir}/cmake-${CMAKE_MAJOR_VERSION}"
> > +FILES_${PN} +=3D "${datadir}/cmake ${datadir}/aclocal"
> > +FILES_${PN}-doc +=3D "${docdir}/cmake"
> >  FILES_${PN}-dev =3D ""
>
> If the distro has set $datadir to something other than the default
> then -DCMAKE_DATA_DIR=3Dshare/cmake won't match FILES_${PN} +=3D
> ${datadir}/cmake, you need to do the same calculation that
> docdir_stripped already does.


Thanks didn't know about that.

>
>
> Ross


Max

--000000000000f851c9057bd7bc58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Nov 29, 2018 at 6:55 PM Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br>&=
gt;<br>&gt; On Thu, 29 Nov 2018 at 23:52, Maxime Roussin-B=C3=A9langer<br>&=
gt; &lt;<a href=3D"mailto:maxime.roussinbelanger@gmail.com">maxime.roussinb=
elanger@gmail.com</a>&gt; wrote:<br>&gt; &gt; Remove the number because I d=
on&#39;t think it&#39;s worth<br>&gt; &gt; supporting multiple version of c=
make inside an embedded<br>&gt; &gt; product.<br>&gt; &gt;<br>&gt; &gt; Whe=
n using an SDK, using 2 different CMake is probably not a<br>&gt; &gt; use =
case.<br>&gt;<br>&gt; Whilst that&#39;s a hard point to argue with, what&#3=
9;s the problem that&#39;s<br>&gt; being solved here?<br><br><br>If CMake i=
s in the cmake-x.xx directory and then there is libeigen that <br>adds thei=
r own cmake modules to the cmake/modules.<br><br>So now you have the cmake =
modules inside cmake-x.xx/Modules and some in<br>cmake/modules. Your projec=
t will have to update the CMAKE_MODULE_PATH,<br>if they wanna use libeigen.=
<br><br>Well, I think that&#39;s how it works. All of the recipes that want=
 to add their own <br>module they have to use `cmake/Modules`, because they=
 can&#39;t possibly know<br>which cmake version we are using.=C2=A0<div><br=
></div><div>So I thought maybe put them all in the same directory so no one=
=C2=A0</div><div>has to deal with the fact that 2 directories are used for =
the same thing.=C2=A0</div><div><br></div><div>Less confusing?</div><div><d=
iv><br>&gt;<br>&gt; &gt; =C2=A0EXTRA_OECMAKE=3D&quot; \<br>&gt; &gt; - =C2=
=A0 =C2=A0-DCMAKE_DOC_DIR=3D${docdir_stripped}/cmake-${CMAKE_MAJOR_VERSION}=
 \<br>&gt; &gt; + =C2=A0 =C2=A0-DCMAKE_DOC_DIR=3D${docdir_stripped}/cmake \=
<br>&gt; &gt; + =C2=A0 =C2=A0-DCMAKE_DATA_DIR=3Dshare/cmake \<br>&gt; &gt; =
=C2=A0 =C2=A0 =C2=A0-DCMAKE_USE_SYSTEM_LIBRARIES=3D1 \<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0-DCMAKE_USE_SYSTEM_LIBRARY_JSONCPP=3D0 \<br>&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0-DCMAKE_USE_SYSTEM_LIBRARY_LIBUV=3D0 \<br>&gt; &gt; @@ -46,8 +=
47,8 @@ do_install_append_class-nativesdk() {<br>&gt; &gt;<br>&gt; &gt; =C2=
=A0FILES_${PN}_append_class-nativesdk =3D &quot; ${SDKPATHNATIVE}&quot;<br>=
&gt; &gt;<br>&gt; &gt; -FILES_${PN} +=3D &quot;${datadir}/cmake-${CMAKE_MAJ=
OR_VERSION} ${datadir}/cmake ${datadir}/aclocal&quot;<br>&gt; &gt; -FILES_$=
{PN}-doc +=3D &quot;${docdir}/cmake-${CMAKE_MAJOR_VERSION}&quot;<br>&gt; &g=
t; +FILES_${PN} +=3D &quot;${datadir}/cmake ${datadir}/aclocal&quot;<br>&gt=
; &gt; +FILES_${PN}-doc +=3D &quot;${docdir}/cmake&quot;<br>&gt; &gt; =C2=
=A0FILES_${PN}-dev =3D &quot;&quot;<br>&gt;<br>&gt; If the distro has set $=
datadir to something other than the default<br>&gt; then -DCMAKE_DATA_DIR=
=3Dshare/cmake won&#39;t match FILES_${PN} +=3D<br>&gt; ${datadir}/cmake, y=
ou need to do the same calculation that<br>&gt; docdir_stripped already doe=
s.<br><br><br>Thanks didn&#39;t know about that.<br>=C2=A0<br>&gt;<br>&gt;<=
br>&gt; Ross<br><br><br>Max <br></div></div></div>

--000000000000f851c9057bd7bc58--
