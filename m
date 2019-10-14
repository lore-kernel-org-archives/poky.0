Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51BF1E00D94; Mon, 14 Oct 2019 03:18:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
	[209.85.160.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45A1FE00D7E
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 03:18:56 -0700 (PDT)
Received: by mail-qt1-f193.google.com with SMTP id v52so24649908qtb.8
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 03:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=l5n+1KU23DvKm4DFSbRlEzivr2NT22RCOnmZiBDqS5o=;
	b=YHkGzh5OVrS+i1zhAePhZedEJpmA+K7IPwrGvQZHduYA7a3Zz0Ru8WJXze62zCHM4n
	ygwycAIGMmZ4/ITcti4qIg+/5ltzp2NrTI5GXIIxR+/4s5gFJh+eB29fUY5xEM1bQPCW
	Qlle2K/kOQcbiqQ94g+vVE60UWt05HzT+6LkTdKrDcbQX20j1Qx4LMkUrGJ9+U3ygH4A
	YZ2PJvBaO+J4M/7C6AytrMUP2+hl5EgxlRKMa8ZFOBWunVM37LRoOVlRirKE/+ilechD
	a3OQD8ambP5pWpKQiVevqD43SZAjCYFiNcWdXpNuPC4nG2cfackOnzW6/wSOkHAeI6TS
	9i/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=l5n+1KU23DvKm4DFSbRlEzivr2NT22RCOnmZiBDqS5o=;
	b=KSo88VGoBXxsKul7fjcl9TvkDFii8Y3qQc98hls+Uo/MNqnmj86TQ5u5Niv1rlr5ka
	tDjYzy8nYGAlDdQX5Re6NWiHV5KAyhXo51IGd9P5uQuSNVToM5YeLoEtMfqqRSvBeg5k
	VlndnSeMMvm5Z+dcv4xOomW2nWyomh2SeotV+EVCnmvm6eC17rF2odp1JXdlqWWGpFNe
	5xAMDPJjsWJfEjGm/J3Xb+PPeRpUn3NPFRAQ3jYWBGUAOviFgeeZ+d1i6o4NaTFvTqIm
	vCNtQxIgRhqthnRU0MNfEOQCSrpqOClhO+YenBUR0wVqv0+Rq4YSZYMhLkcYFDr0XKYe
	QjTQ==
X-Gm-Message-State: APjAAAVARv4f4Vk53hr8467bYQ7v2SmfkNlVkSW/TDbU+YvBU6+SQ7Mc
	iMqRvDNwHUYB5jwaxGdXT+2q3yCDw4aL6h153xA=
X-Google-Smtp-Source: APXvYqzI2AyNsb3vyNB6lXhU3LS9ITWrKHZYaCllTqYVphLxUqcUmrKlwVbPG6q01AKNAHOjcwwBpWDZPfnfvDRho+Y=
X-Received: by 2002:aed:3f3a:: with SMTP id p55mr31280483qtf.194.1571048335289;
	Mon, 14 Oct 2019 03:18:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
	<CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
	<fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
	<CAOe0dAX_G6aV3=Mn9+KeMDTfXqogLj7R16pkmy7Bfhvh7KuFzg@mail.gmail.com>
	<eb81f66bdaa3604bb555d0416ae83b8df61d0f13.camel@linuxfoundation.org>
In-Reply-To: <eb81f66bdaa3604bb555d0416ae83b8df61d0f13.camel@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 Oct 2019 03:18:44 -0700
Message-ID: <CAMKF1sqgLZ3Rfyiy1Qsv=Y1xEt7m4eKX4Brk8v_7AGET9Hv9zQ@mail.gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: poky@yoctoproject.org, AshishKumar Mishra <ashish.emailaddress@gmail.com>
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
X-List-Received-Date: Mon, 14 Oct 2019 10:18:58 -0000
Content-Type: multipart/alternative; boundary="000000000000f3348f0594dc31b9"

--000000000000f3348f0594dc31b9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2019 at 11:10 AM <richard.purdie@linuxfoundation.org> wrote=
:

> On Mon, 2019-10-14 at 15:24 +0530, AshishKumar Mishra wrote:
> > Thanks for replying back Richard.
> >
> > I can see the RPM generated at "tmp/deploy/rpm/core2_32" .
> >
> > [15:14:38]:~/Documents/linux-foundation-projects/yocto/build-armour :
> find tmp/* -name 'eth0*' | grep rpm
> > tmp/deploy/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm
> > tmp/deploy/rpm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
> >
> tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm/=
core2_32/eth0-dev-0.1-r0.core2_32.rpm
> >
> tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm/=
core2_32/eth0-dbg-0.1-r0.core2_32.rpm
> >
> tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dev-0.=
1-r0.core2_32.rpm
> >
> tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dbg-0.=
1-r0.core2_32.rpm
> >
> > This is my folder skeleton & attached is the recipe
> > ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-
> > armour (master) : ls
> > armour  eth0-0.1  images
> > ~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-
> > armour (master) : ls eth0-0.1/*
> > eth0-0.1/eth0_0.1.bb
> >
> > eth0-0.1/eth0-0.1:
> > eth0.service
> >
> > Is there any specific dependency which i am missing or if i am doing
> > any thing wrong here .
>
> In the list above I see "eth0-dev" and "eth0-dbg" but no "eth0"
> package.
>
> The error is therefore correct in that no "eth0" package exists. Why, I
> don't know but you need to look at the recipe and figure out why the
> expected package isn't generated.


Most probably it=E2=80=99s an empty package and is eventually deleted by pa=
ckager
try ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D and of that works then you kn=
ow that=E2=80=99s the
problem so you need to fix the packaging to not rdepend on an empty package

>
>
> Cheers,
>
> Richard
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--000000000000f3348f0594dc31b9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Oct 14, 2019 at 11:10 AM &lt;<a href=3D"mailto:rich=
ard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">On Mon, 2019-10-14 at 15:24 =
+0530, AshishKumar Mishra wrote:<br>
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
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><br>
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

--000000000000f3348f0594dc31b9--
