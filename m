Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C54BE00B23; Mon, 14 Oct 2019 08:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ashish.emailaddress[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 462C3E0091A
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 08:58:59 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id n26so38925152ioj.8
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 08:58:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=L5XniU3Ax7yRg6y7Kf7TBIqFRIiB0x/puYPaawft82o=;
	b=tDG/IXdX6mTKE3xAWGB8nIaB+C1K1hmu1jZRNqjUo/1Po0AFm5IM6PYhACmvoBCQnA
	v9p1wAsRmmG0jn36RVboGqrgSJDbEWoh2QolldMrPZaAEikpgQ80JNWyO2NFelyA0i6Y
	e+a2CLUv8SL9OiuoAfEBGKF/mG1AZXfiKKUY1AMRBfmPUQUXMhMS7YMLxen1H1BlUX5F
	NJ9ZwnYV5thNeo0d6yIVn8Hza14H6VpF4E7HBsScRxynSCJpdSAEiqoG2UhFM+c7g0t7
	pSwYVyTZxQq98rTmtGU2nJvv5Fn3cHsgbBTg+P7pdZCEx0p8m3ktfora/hRT1ZhR/vEw
	2xVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=L5XniU3Ax7yRg6y7Kf7TBIqFRIiB0x/puYPaawft82o=;
	b=uNC7gRydMpxKws9hgFr8x9ZpoHxLhea8dg3+vx/YhGse5A+NqjncodCfXblszrRlLq
	2k1LBM/cSHpglFCPDmqwwPZHxdx3XDKkpsNy4D3CVMUR57XAh9BrfEVVTL+I/V2ZlSCi
	/7MvcZjwgvjfcF1B8D8icy1SDScPDWBhw7iqxrHpc8Cp/ShD7KCJt+zVTHFNwcWDsH2C
	u7rSpupH5S0Z4Ujaiz7/rSb11TQTORejvyBVQZskf57Y6kvkxHW7/DmxOXo2wSCuoxzv
	ofN/A6WmRV6HEThrABpRLkFAfuilbMX3lj5jkkfXc1bKE8dDtsij58n77DWDOuH+8heq
	r/Hg==
X-Gm-Message-State: APjAAAVd+yZ1f8rUWwGWUhVxizylH43oFzlBSlAm3WCsygfPp4mYJ/My
	4yBlXX507zSqzIG/jbXX1KIzj6ddNKhmbBG6D7o=
X-Google-Smtp-Source: APXvYqylXXYtbE39CeJZe7kkhIAo34LpIENbdzPdnlQ+EgtxxRRGV0rmhtKxdoGYtyXVoAxyvE7qG0M1xUHWE76+IxQ=
X-Received: by 2002:a02:aa0a:: with SMTP id r10mr38880910jam.8.1571068738675; 
	Mon, 14 Oct 2019 08:58:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
	<CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
	<fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
	<CAOe0dAX_G6aV3=Mn9+KeMDTfXqogLj7R16pkmy7Bfhvh7KuFzg@mail.gmail.com>
	<eb81f66bdaa3604bb555d0416ae83b8df61d0f13.camel@linuxfoundation.org>
	<CAMKF1sqgLZ3Rfyiy1Qsv=Y1xEt7m4eKX4Brk8v_7AGET9Hv9zQ@mail.gmail.com>
In-Reply-To: <CAMKF1sqgLZ3Rfyiy1Qsv=Y1xEt7m4eKX4Brk8v_7AGET9Hv9zQ@mail.gmail.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 14 Oct 2019 21:28:47 +0530
Message-ID: <CAOe0dAV0ou+XC7tNMf1Ufngp_5BeOy24OVcUa8_UG-dVCG5kjg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: poky@yoctoproject.org
Subject: Re: Poky build failure with "Could not invoke dnf" error message.
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
X-List-Received-Date: Mon, 14 Oct 2019 15:59:01 -0000
Content-Type: multipart/alternative; boundary="0000000000001628500594e0f2e3"

--0000000000001628500594e0f2e3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Richard / Khem Raj ,

Thanks for the pointer & indeed that was the problem  !!!!

Would it be possible to share any link / pointers to help me understand the
"packaging " aspect of recipe

*Predominantly , how are the package being created from the files being
copied to {D)<some-folder>*
*and what are the essential rules i need to know .*
(Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D we are informing that the p=
ackage can be
empty )

But i am not able to understand :-
a) Who & how are packages being created from files copied in
{D)<some-folder>
b) What are the rules (Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1 ) for empty pa=
ckage ?
c) When would we get an empty package.

Like looking for pointers i came across below link but was unable to get
clear picture .
http://lists.openembedded.org/pipermail/openembedded-core/2012-July/064040.=
html

Sorry for long thread but i am trying to implement things & learn yocto.

Thanks
Ashish















On Mon, Oct 14, 2019 at 3:48 PM Khem Raj <raj.khem@gmail.com> wrote:

>
>
> On Mon, Oct 14, 2019 at 11:10 AM <richard.purdie@linuxfoundation.org>
> wrote:
>
>> On Mon, 2019-10-14 at 15:24 +0530, AshishKumar Mishra wrote:
>> > Thanks for replying back Richard.
>> >
>> > I can see the RPM generated at "tmp/deploy/rpm/core2_32" .
>> >
>> > [15:14:38]:~/Documents/linux-foundation-projects/yocto/build-armour :
>> find tmp/* -name 'eth0*' | grep rpm
>> > tmp/deploy/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm
>> > tmp/deploy/rpm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
>> >
>> tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm=
/core2_32/eth0-dev-0.1-r0.core2_32.rpm
>> >
>> tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm=
/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
>> >
>> tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dev-0=
.1-r0.core2_32.rpm
>> >
>> tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dbg-0=
.1-r0.core2_32.rpm
>> >
>> > This is my folder skeleton & attached is the recipe
>> > ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-
>> > armour (master) : ls
>> > armour  eth0-0.1  images
>> > ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-
>> > armour (master) : ls eth0-0.1/*
>> > eth0-0.1/eth0_0.1.bb
>> >
>> > eth0-0.1/eth0-0.1:
>> > eth0.service
>> >
>> > Is there any specific dependency which i am missing or if i am doing
>> > any thing wrong here .
>>
>> In the list above I see "eth0-dev" and "eth0-dbg" but no "eth0"
>> package.
>>
>> The error is therefore correct in that no "eth0" package exists. Why, I
>> don't know but you need to look at the recipe and figure out why the
>> expected package isn't generated.
>
>
> Most probably it=E2=80=99s an empty package and is eventually deleted by =
packager
> try ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D and of that works then you =
know that=E2=80=99s the
> problem so you need to fix the packaging to not rdepend on an empty packa=
ge
>
>>
>>
>> Cheers,
>>
>> Richard
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>

--0000000000001628500594e0f2e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Richard / Khem Raj , <br></div><div><br></div><div=
>Thanks for the pointer &amp; indeed that was the problem=C2=A0 !!!!<br></d=
iv><div><br></div><div>Would it be possible to share any link / pointers to=
 help me understand the <br></div><div>&quot;packaging &quot; aspect of rec=
ipe <br></div><br><div><u><b>Predominantly , how are the package being crea=
ted from the files being copied to {D)&lt;some-folder&gt;</b></u></div><div=
><u><b>and what are the essential rules i need to know .</b></u></div><div>=
(Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D we are informing that the p=
ackage can be empty ) </div><div><br></div><div>But i am not able to unders=
tand :-</div><div>a) Who &amp; how are packages being created from files co=
pied in {D)&lt;some-folder&gt;</div><div>b) What are the rules (Like ALLOW_=
EMPTY_${PN} =3D =E2=80=9C1 ) for empty package ?</div><div>c) When would we=
 get an empty package. <br></div><div><br></div><div>Like looking for point=
ers i came across below link but was unable to get clear picture .<br></div=
><div><a href=3D"http://lists.openembedded.org/pipermail/openembedded-core/=
2012-July/064040.html">http://lists.openembedded.org/pipermail/openembedded=
-core/2012-July/064040.html</a></div><div><br></div><div><div>Sorry for lon=
g thread but i am trying to implement things &amp; learn yocto. <br></div><=
div><br></div><div>Thanks <br></div><div>Ashish <br></div></div><div><br></=
div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></=
div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></=
div><div><br></div><div><br></div><div><br></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 14, 2019 at 3:=
48 PM Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Oct 14, 2019 at 11:10 AM &lt;<a href=3D"mailto:rich=
ard.purdie@linuxfoundation.org" target=3D"_blank">richard.purdie@linuxfound=
ation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Mon, 2019-10-14 at 15:24 +0530, AshishKumar Mishra wrote:<br>
&gt; Thanks for replying back Richard. <br>
&gt; <br>
&gt; I can see the RPM generated at &quot;tmp/deploy/rpm/core2_32&quot; . <=
br>
&gt; <br>
&gt; [15:14:38]:~/Documents/linux-foundation-projects/yocto/build-armour : =
find tmp/* -name &#39;eth0*&#39; | grep rpm<br>
&gt; tmp/deploy/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm<br>
&gt; tmp/deploy/rpm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm<br>
&gt; tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/r=
pm/core2_32/eth0-dev-0.1-r0.core2_32.rpm<br>
&gt; tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/r=
pm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm<br>
&gt; tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dev=
-0.1-r0.core2_32.rpm<br>
&gt; tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dbg=
-0.1-r0.core2_32.rpm<br>
&gt; <br>
&gt; This is my folder skeleton &amp; attached is the recipe <br>
&gt; ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-<br>
&gt; armour (master) : ls<br>
&gt; armour=C2=A0 eth0-0.1=C2=A0 images<br>
&gt; ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-<br>
&gt; armour (master) : ls eth0-0.1/*<br>
&gt; eth0-0.1/<a href=3D"http://eth0_0.1.bb" rel=3D"noreferrer" target=3D"_=
blank">eth0_0.1.bb</a><br>
&gt; <br>
&gt; eth0-0.1/eth0-0.1:<br>
&gt; eth0.service<br>
&gt; <br>
&gt; Is there any specific dependency which i am missing or if i am doing<b=
r>
&gt; any thing wrong here . <br>
<br>
In the list above I see &quot;eth0-dev&quot; and &quot;eth0-dbg&quot; but n=
o &quot;eth0&quot;<br>
package.<br>
<br>
The error is therefore correct in that no &quot;eth0&quot; package exists. =
Why, I<br>
don&#39;t know but you need to look at the recipe and figure out why the<br=
>
expected package isn&#39;t generated.</blockquote><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Most probably it=E2=80=99s an empty package and is eve=
ntually deleted by packager try ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D a=
nd of that works then you know that=E2=80=99s the problem so you need to fi=
x the packaging to not rdepend on an empty package=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div></div>
</blockquote></div>

--0000000000001628500594e0f2e3--
