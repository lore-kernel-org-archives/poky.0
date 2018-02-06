Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7D00E00DA3; Tue,  6 Feb 2018 05:36:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1E35E00CF1
	for <poky@yoctoproject.org>; Tue,  6 Feb 2018 05:36:22 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id e1so2465487ita.0
	for <poky@yoctoproject.org>; Tue, 06 Feb 2018 05:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vxiT4BNQIJU1WMCWGf4IKMFFHn8k9DAO2FBi+3Du0G0=;
	b=18ZjFfzxyxbXjoCNb+j04ELNVuPzwwYw+i0HtMGCtxHdPaERk1YVr6wj0rfABwoUO4
	rPgXMdd+EXl4TRPR//2hjpmbEjrpRSGTtKx8JYZ3oBnINTYHbRlKbiz7qKqQtVtHr2Ve
	Fph/9i6aZ5VRsS3oyDflfoQNotbpginYE9Vw3bCNjV0/b1IAY1pD+S57CpyVxQ1uoDY3
	OYpCeCFWCLf4srfaGV0eCs86dPYV3Rnec1DtXIglnDqJsac0k9TTSVbM6kq2oQm2nJMD
	ZmYYp+MjFvD3rCHPxgkYAmbSkot9KMl6M0k75Th6AjH8mhFcnacWsXGohbl3P7kJkEVW
	dcTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vxiT4BNQIJU1WMCWGf4IKMFFHn8k9DAO2FBi+3Du0G0=;
	b=NjuEKySF5bBBEwlfrTp7VVFVPYklZB2yxj5XYBvi56VLZVX02dZrfTFj0czqf0Y4Wr
	llz0iqiAHpT6vjtGufCqkAzkejX+gmZwnfoJsT8ijG5A3/RW0cdFHRGF0pJWKSw4mjvm
	6Kx0oTJgkAXqUIQcGdqzwA8goniQJXSCAxw9UGcbgZ4//yNmfwKFnpnLONSmSoEPgn6Q
	sPB8XFKrh1R4P0AdyWQZh4rSZxG7u9o40bc21sQv4CbhNxREgGGOHvNyxhsxRcc3sZmM
	dGU0oelPTIlJAs/M3dAnZsUHbdkkuadwGNZ/Z3yvtwWEQWUFHaGOdCNzV/mZlK/mJu0g
	Uznw==
X-Gm-Message-State: APf1xPC0s1o3tSD4WuxDdnVQH4ru9Wxrl3kgg+4veJyQ6TrV8Jz1SKzI
	yeFvHw1FijP0C8NU1pW5Nskil+0Fpp0Zb0/goXyfGg==
X-Google-Smtp-Source: AH8x227EmII1WgaN4XhIYU2D9lCQHXzUy3oDxBTB4muygWgQ7z7XiJaUNIPNe3LAkR/STWIA+4xbujoyjDewAGsufnU=
X-Received: by 10.36.83.148 with SMTP id n142mr3119219itb.10.1517924181816;
	Tue, 06 Feb 2018 05:36:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.206 with HTTP; Tue, 6 Feb 2018 05:36:01 -0800 (PST)
In-Reply-To: <trinity-1246f5e9-868e-404f-95dd-358cc7330745-1517922925393@3c-app-gmx-bs24>
References: <trinity-20f872c2-19c2-4de6-b977-5b88adae1eb3-1517824511514@3c-app-gmx-bs39>
	<84f1733e-a5cd-b9d6-c75d-cdb8faf38815@intel.com>
	<trinity-92e2db9a-aa15-48ad-b7d5-80b10abb70b2-1517835902286@3c-app-gmx-bs39>
	<98fa3583-b321-2cc6-b95c-d193beb78d15@intel.com>
	<trinity-1246f5e9-868e-404f-95dd-358cc7330745-1517922925393@3c-app-gmx-bs24>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 6 Feb 2018 13:36:01 +0000
Message-ID: <CAJTo0LatfDSVWN+R9qtQjc1DaqpVBCYhq9mhX7fFSzRVcL0dHw@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: libs / so without a link to xxx.so.1
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
X-List-Received-Date: Tue, 06 Feb 2018 13:36:23 -0000
Content-Type: multipart/alternative; boundary="001a1145f7f2a74c7705648b432c"

--001a1145f7f2a74c7705648b432c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sounds like the recipe is broken.  If PN is curlpp then the libraries
should be put into PN (which will then be renamed magically by
debian.bbclass) and the default dependencies will then work.

If PN is empty, then the recipe needs to stop PN-dev depending on PN (which
is a default dependency).

Ross

On 6 February 2018 at 13:15, Arno Steffens <star@gmx.li> wrote:

> You are right, curlpp-dev includes the wanted libcurlpp.so. Thanks for
> this hint to packages-split.
> Ok - no bug, it's just my fault.
> Probably I haven't really understand the concept, but adding " curlpp-dev=
"
> to IMAGE_INSTALL won't work, which confuses me,
> as curlpp was also added ?!?
>
> Solver encountered 1 problem(s):
> Problem 1/1:
>   - nothing provides curlpp =3D 0.8.1-r0 needed by curlpp-dev-0.8.1-r0.
> cortexa9hf-neon
>
> Solution 1:
>   - do not ask to install a package providing curlpp-dev
>
> Oh!
> Arno
>
>
>
> > Gesendet: Montag, 05. Februar 2018 um 15:20 Uhr
> > Von: "Anuj Mittal" <anuj.mittal@intel.com>
> > An: star@gmx.li
> > Cc: poky@yoctoproject.org
> > Betreff: Re: Aw: Re: [poky] libs / so without a link to xxx.so.1
> >
> > On 02/05/2018 09:05 PM, star@gmx.li wrote:
> > >
> > >
> > >> Gesendet: Montag, 05. Februar 2018 um 11:21 Uhr
> > >> Von: "Anuj Mittal" <anuj.mittal@intel.com>
> > >> An: poky@yoctoproject.org
> > >> Betreff: Re: [poky] libs / so without a link to xxx.so.1
> > >>
> > > Thanks Anuj,  but I don't think so. The libs itself are not in the de=
v
> package, but in the libcurlpp1
> > > And I include them like this:
> > >
> > > IMAGE_INSTALL =3D "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}
> ..... curl libcurlpp"
> > >
> > > TOOLCHAIN_TARGET_TASK_append =3D " zlib-dev curl-dev libcurlpp-dev
> net-snmp-dev libidn-dev"
> >
> > In general, in addition to looking at the recipe, you can check
> > packages-split in recipe $WORKDIR to see what's where. In this case, th=
e
> > package you're probably looking for is "curlpp-dev" not libcurlpp-dev:
> >
> > $ tree packages-split/curlpp-dev/
> > packages-split/curlpp-dev/
> > =E2=94=94=E2=94=80=E2=94=80 usr
> >     =E2=94=94=E2=94=80=E2=94=80 lib
> >         =E2=94=94=E2=94=80=E2=94=80 libcurlpp.so -> libcurlpp.so.1
> >
> > 2 directories, 1 file
> >
> > https://www.yoctoproject.org/docs/latest/ref-manual/ref-
> manual.html#structure-build-tmp-work-tunearch-recipename-version
> >
> > Thanks,
> >
> > Anuj
> >
> > >
> > > And I use the rootfs that is created with -c populate_sdk.
> > > So it is a bug in the package? Or am I doing wrong?
> > >
> > >
> > >> On 02/05/2018 05:55 PM, Arno Steffens wrote:
> > >>> Using in my project libcurlpp. It is created with yocto (2.3.3), bu=
t
> in my filesystem I just see:
> > >>>
> > >>> "/usr/lib/libcurlpp.so.1" which is a link to libcurlpp.so.1.0.0
> > >>>
> > >>> What I miss is "libvcurlpp.so" (without version number), as my
> project includes  "-lcurlpp".
> > >>
> > >> You're probably missing the -dev package in your image.
> > >>
> > >> Thanks,
> > >> Anuj
> > >>
> > >>>
> > >>> My question: is there a reason for that? Is this a bug in the
> scripts or did I handle it wrong?
> > >>>
> > >>> I can do "-l:libcurlpp.so.1" but this looks only like a second best
> solution to me.
> > >>> Thanks and best regards
> > >>> Arno
> > >>>
> > >>
> > >> --
> > >> _______________________________________________
> > >> poky mailing list
> > >> poky@yoctoproject.org
> > >> https://lists.yoctoproject.org/listinfo/poky
> > >>
> >
> >
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--001a1145f7f2a74c7705648b432c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sounds like the recipe is broken.=C2=A0 If PN is curlpp th=
en the libraries should be put into PN (which will then be renamed magicall=
y by debian.bbclass) and the default dependencies will then work.<div><br><=
/div><div>If PN is empty, then the recipe needs to stop PN-dev depending on=
 PN (which is a default dependency).</div><div><br></div><div>Ross</div></d=
iv><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 6 February =
2018 at 13:15, Arno Steffens <span dir=3D"ltr">&lt;<a href=3D"mailto:star@g=
mx.li" target=3D"_blank">star@gmx.li</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">You are right, curlpp-dev includes the wanted libcurlpp.s=
o. Thanks for this hint to packages-split.<br>
Ok - no bug, it&#39;s just my fault.<br>
Probably I haven&#39;t really understand the concept, but adding &quot; cur=
lpp-dev&quot; to IMAGE_INSTALL won&#39;t work, which confuses me,<br>
as curlpp was also added ?!?<br>
<br>
Solver encountered 1 problem(s):<br>
Problem 1/1:<br>
=C2=A0 - nothing provides curlpp =3D 0.8.1-r0 needed by curlpp-dev-0.8.1-r0=
.<wbr>cortexa9hf-neon<br>
<br>
Solution 1:<br>
=C2=A0 - do not ask to install a package providing curlpp-dev<br>
<br>
Oh!<br>
Arno<br>
<br>
<br>
<br>
&gt; Gesendet: Montag, 05. Februar 2018 um 15:20 Uhr<br>
&gt; Von: &quot;Anuj Mittal&quot; &lt;<a href=3D"mailto:anuj.mittal@intel.c=
om">anuj.mittal@intel.com</a>&gt;<br>
&gt; An: <a href=3D"mailto:star@gmx.li">star@gmx.li</a><br>
&gt; Cc: <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>=
<br>
&gt; Betreff: Re: Aw: Re: [poky] libs / so without a link to xxx.so.1<br>
<div class=3D"HOEnZb"><div class=3D"h5">&gt;<br>
&gt; On 02/05/2018 09:05 PM, <a href=3D"mailto:star@gmx.li">star@gmx.li</a>=
 wrote:<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;&gt; Gesendet: Montag, 05. Februar 2018 um 11:21 Uhr<br>
&gt; &gt;&gt; Von: &quot;Anuj Mittal&quot; &lt;<a href=3D"mailto:anuj.mitta=
l@intel.com">anuj.mittal@intel.com</a>&gt;<br>
&gt; &gt;&gt; An: <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoprojec=
t.org</a><br>
&gt; &gt;&gt; Betreff: Re: [poky] libs / so without a link to xxx.so.1<br>
&gt; &gt;&gt;<br>
&gt; &gt; Thanks Anuj,=C2=A0 but I don&#39;t think so. The libs itself are =
not in the dev package, but in the libcurlpp1<br>
&gt; &gt; And I include them like this:<br>
&gt; &gt;<br>
&gt; &gt; IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${CORE_IMAGE_EXTRA=
_INSTALL} ..... curl libcurlpp&quot;<br>
&gt; &gt;<br>
&gt; &gt; TOOLCHAIN_TARGET_TASK_append =3D &quot; zlib-dev curl-dev libcurl=
pp-dev net-snmp-dev libidn-dev&quot;<br>
&gt;<br>
&gt; In general, in addition to looking at the recipe, you can check<br>
&gt; packages-split in recipe $WORKDIR to see what&#39;s where. In this cas=
e, the<br>
&gt; package you&#39;re probably looking for is &quot;curlpp-dev&quot; not =
libcurlpp-dev:<br>
&gt;<br>
&gt; $ tree packages-split/curlpp-dev/<br>
&gt; packages-split/curlpp-dev/<br>
&gt; =E2=94=94=E2=94=80=E2=94=80 usr<br>
&gt;=C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 lib<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 libcurlpp=
.so -&gt; libcurlpp.so.1<br>
&gt;<br>
&gt; 2 directories, 1 file<br>
&gt;<br>
&gt; <a href=3D"https://www.yoctoproject.org/docs/latest/ref-manual/ref-man=
ual.html#structure-build-tmp-work-tunearch-recipename-version" rel=3D"noref=
errer" target=3D"_blank">https://www.yoctoproject.org/<wbr>docs/latest/ref-=
manual/ref-<wbr>manual.html#structure-build-<wbr>tmp-work-tunearch-recipena=
me-<wbr>version</a><br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Anuj<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; And I use the rootfs that is created with -c populate_sdk.<br>
&gt; &gt; So it is a bug in the package? Or am I doing wrong?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;&gt; On 02/05/2018 05:55 PM, Arno Steffens wrote:<br>
&gt; &gt;&gt;&gt; Using in my project libcurlpp. It is created with yocto (=
2.3.3), but in my filesystem I just see:<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; &quot;/usr/lib/libcurlpp.so.1&quot; which is a link to li=
bcurlpp.so.1.0.0<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; What I miss is &quot;libvcurlpp.so&quot; (without version=
 number), as my project includes=C2=A0 &quot;-lcurlpp&quot;.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; You&#39;re probably missing the -dev package in your image.<b=
r>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Thanks,<br>
&gt; &gt;&gt; Anuj<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; My question: is there a reason for that? Is this a bug in=
 the scripts or did I handle it wrong?<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; I can do &quot;-l:libcurlpp.so.1&quot; but this looks onl=
y like a second best solution to me.<br>
&gt; &gt;&gt;&gt; Thanks and best regards<br>
&gt; &gt;&gt;&gt; Arno<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; --<br>
&gt; &gt;&gt; ______________________________<wbr>_________________<br>
&gt; &gt;&gt; poky mailing list<br>
&gt; &gt;&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.or=
g</a><br>
&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/poky</a><br>
&gt; &gt;&gt;<br>
&gt;<br>
&gt;<br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</div></div></blockquote></div><br></div>

--001a1145f7f2a74c7705648b432c--
