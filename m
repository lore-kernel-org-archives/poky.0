Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0137E00D98; Mon, 14 Oct 2019 02:55:08 -0700 (PDT)
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
	*      [209.85.166.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
	[209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7F55E00D94
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 02:55:07 -0700 (PDT)
Received: by mail-io1-f66.google.com with SMTP id h144so36545921iof.7
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 02:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XcFAo8c2CysoB3Ds1JeRPM0hTk+zIipMT0cyLptFeoE=;
	b=sSS34RlcjzvCgC762d0kkSmcm7GLjZDfx6cZPWbSjjcI2XTGkHw5aJpiYapJwYtAmV
	vjR5FWs+VTOnKRN9V2YM8UtvyM80IS5saS0dOexs5q+b1VczIiucQTgJWRHirtBlXpS1
	YVukGSY9g/agyhu8hirLRv/8OKWURWFyX2g3HkFpGxhOgB3V9WS+/cPRbrahxPuWWVqp
	7DHpgAKFumwTvbwYePp9FwOstZGLW21GKASYV7htdKiUw7zi0gcxsytxnBEYaznh1oVC
	rrM99eE+P7ZHuZu2a39scuNGVgtY4060FH+k50S19WyGnD6uovDvHAfiYUl1pJ6gc7Em
	Thtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XcFAo8c2CysoB3Ds1JeRPM0hTk+zIipMT0cyLptFeoE=;
	b=TI3zcweqQTV04yVXntne6GIKRPP8umgnQb4jAaWSCQiXg6W285SrzrIjyIgvsSMYdQ
	Zjo1lNaIBR4dU4i059Sw2hFnHHj5oFT12J91knmnOxK+v0Qp75TRRrYsR3X4Tj1aATwp
	hPN+01C09g/YAvraI5LdUVAyW/xH4AN9fIoH2jBO4Loz8GnRR8qoE2G0rQQu8IUQCHqR
	QK5NPDb2skzA4rtk8jkAtSWBqE7IudkaEN6fm6m7CkJuD3xMIpXSem70KXQu7v085Vw+
	GGxpOzQhhSe1FlWIDP5Nl0B8QOU5dz+n6mWhdK2sNQbSo99s7564EYnlgq3+3rdDneUI
	sqkw==
X-Gm-Message-State: APjAAAXYj2iy00FMc3pJaS9c2RvAWSix7e91X2VfyPlIX4SUxwyK5ydD
	DDNPw4L1+tWdTJf4hbRqRhZmXV9guyfLTypIf12vAX9Q
X-Google-Smtp-Source: APXvYqwsBjhMDjT+6Sbs6dC8vrGvwfN3KReQ/qIyrqAY5y+3MRT9Z2bhph+NeexGUTVA+A4PHchqXZWnYdYghZDU7pA=
X-Received: by 2002:a5d:8242:: with SMTP id n2mr15615451ioo.139.1571046906943; 
	Mon, 14 Oct 2019 02:55:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
	<CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
	<fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
In-Reply-To: <fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Mon, 14 Oct 2019 15:24:55 +0530
Message-ID: <CAOe0dAX_G6aV3=Mn9+KeMDTfXqogLj7R16pkmy7Bfhvh7KuFzg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
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
X-List-Received-Date: Mon, 14 Oct 2019 09:55:08 -0000
X-Groupsio-MsgNum: 11787
Content-Type: multipart/mixed; boundary="000000000000d1365e0594dbdce0"

--000000000000d1365e0594dbdce0
Content-Type: multipart/alternative; boundary="000000000000d1365b0594dbdcde"

--000000000000d1365b0594dbdcde
Content-Type: text/plain; charset="UTF-8"

Thanks for replying back Richard.

I can see the RPM generated at "tmp/deploy/rpm/core2_32" .

[15:14:38]:~/Documents/linux-foundation-projects/yocto/build-armour : find
tmp/* -name 'eth0*' | grep rpm
tmp/deploy/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm
tmp/deploy/rpm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm
tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm/core2_32/eth0-dbg-0.1-r0.core2_32.rpm
tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dev-0.1-r0.core2_32.rpm
tmp/work/core2-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dbg-0.1-r0.core2_32.rpm

This is my folder skeleton & attached is the recipe
~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-armour
(master) : ls
armour  eth0-0.1  images
~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-armour
(master) : ls eth0-0.1/*
eth0-0.1/eth0_0.1.bb

eth0-0.1/eth0-0.1:
eth0.service

Is there any specific dependency which i am missing or if i am doing any
thing wrong here .

Thanks
Ashish








On Mon, Oct 14, 2019 at 2:00 PM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Mon, 2019-10-14 at 13:40 +0530, AshishKumar Mishra wrote:
> > Hi All ,
> >
> > I am trying to build an image with my custom layer and getting error
> > of
> > "ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf.".
> >
> > ( i have added an basic ethernet up/down systemd service in my layer)
> > The details of service file & log are attached in  (poky-error.txt)
>
> The error says it can't find a package named eth0. Was such a package
> generated? It should be somewhere like tmp/deploy/rpm/XXX/eth0_*.rpm
>
> Cheers,
>
> Richard
>
>

--000000000000d1365b0594dbdcde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks for replying back Richard. <br></div><div><br>=
</div><div>I can see the RPM generated at &quot;tmp/deploy/rpm/core2_32&quo=
t; . <br></div><div><br></div><div>[15:14:38]:~/Documents/linux-foundation-=
projects/yocto/build-armour : find tmp/* -name &#39;eth0*&#39; | grep rpm<b=
r>tmp/deploy/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm<br>tmp/deploy/rpm/co=
re2_32/eth0-dbg-0.1-r0.core2_32.rpm<br>tmp/work/qemux86-poky-linux/core-ima=
ge-minimal/1.0-r0/oe-rootfs-repo/rpm/core2_32/eth0-dev-0.1-r0.core2_32.rpm<=
br>tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/oe-rootfs-repo/rpm=
/core2_32/eth0-dbg-0.1-r0.core2_32.rpm<br>tmp/work/core2-32-poky-linux/eth0=
/0.1-r0/deploy-rpms/core2_32/eth0-dev-0.1-r0.core2_32.rpm<br>tmp/work/core2=
-32-poky-linux/eth0/0.1-r0/deploy-rpms/core2_32/eth0-dbg-0.1-r0.core2_32.rp=
m<br></div><div><br></div><div>This is my folder skeleton &amp; attached is=
 the recipe <br></div><div>~/Documents/linux-foundation-projects/yocto/meta=
-mechanic/recipes-armour (master) : ls<br>armour =C2=A0eth0-0.1 =C2=A0image=
s<br>~/Documents/linux-foundation-projects/yocto/meta-mechanic/recipes-armo=
ur (master) : ls eth0-0.1/*<br>eth0-0.1/<a href=3D"http://eth0_0.1.bb">eth0=
_0.1.bb</a><br><br>eth0-0.1/eth0-0.1:<br>eth0.service</div><div><br></div><=
div><div>Is there any specific dependency which i am missing or if i am doi=
ng any thing wrong here . <br></div></div><div><br></div><div>Thanks</div><=
div>Ashish <br></div><div><br></div><div><br></div><div><br></div><div><br>=
</div><div><br></div><div><br></div><div><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 14, 2019 at =
2:00 PM Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation=
.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">On Mon, 2019-10-14 at 13:40 +0530, =
AshishKumar Mishra wrote:<br>
&gt; Hi All , <br>
&gt; <br>
&gt; I am trying to build an image with my custom layer and getting error<b=
r>
&gt; of <br>
&gt; &quot;ERROR: core-image-minimal-1.0-r0 do_rootfs: Could not invoke dnf=
.&quot;. <br>
&gt; <br>
&gt; ( i have added an basic ethernet up/down systemd service in my layer)<=
br>
&gt; The details of service file &amp; log are attached in=C2=A0 (poky-erro=
r.txt)<br>
<br>
The error says it can&#39;t find a package named eth0. Was such a package<b=
r>
generated? It should be somewhere like tmp/deploy/rpm/XXX/eth0_*.rpm<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--000000000000d1365b0594dbdcde--

--000000000000d1365e0594dbdce0
Content-Type: application/octet-stream; name="eth0_0.1.bb"
Content-Disposition: attachment; filename="eth0_0.1.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_k1q8nizi0>
X-Attachment-Id: f_k1q8nizi0

IyBDb3B5cmlnaHQgKEMpIDIwMTkgQXNoaXNoIDxhc2hpc2htQG12aXN0YS5jb20+CiMgUmVsZWFz
ZWQgdW5kZXIgdGhlIE1JVCBsaWNlbnNlIChzZWUgQ09QWUlORy5NSVQgZm9yIHRoZSB0ZXJtcykK
ClNVTU1BUlkgPSAiSW5zdGFsbCBhbmQgc3RhcnQgYSBzeXN0ZW1kIHNlcnZpY2UiClNFQ1RJT04g
PSAiZXRoMCIKTElDRU5TRSA9ICJNSVQiCgppbmhlcml0IHN5c3RlbWQKCkxJQ19GSUxFU19DSEtT
VU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJQ0VOU0VfRElSfS9NSVQ7bWQ1PTA4MzVhZGU2OThlMGJj
Zjg1MDZlY2RhMmY3YjRmMzAyIgoKU1JDX1VSSSArPSAiZmlsZTovL2V0aDAuc2VydmljZSIKClMg
PSAiJHtXT1JLRElSfSIKCiNGSUxFU0VYVFJBUEFUSFNfcHJlcGVuZCA6PSAiJHtUSElTRElSfS8k
e1BOfToiClNZU1RFTURfU0VSVklDRV8ke1BOfSA9ICJldGgwLnNlcnZpY2UiCgpkb19pbnN0YWxs
KCkgewogICAgaW5zdGFsbCAtZCAke0R9JHtzeXN0ZW1kX3N5c3RlbV91bml0ZGlyfS9zeXN0ZW0K
ICAgIGluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L2V0aDAuc2VydmljZSAke0R9JHtzeXN0ZW1k
X3N5c3RlbV91bml0ZGlyfS9zeXN0ZW0KfQoKI0ZJTEVTXyR7UE59ICs9ICIvbGliL3N5c3RlbWQv
c3lzdGVtIgpGSUxFU18ke1BOfSArPSAiJHtzeXN0ZW1kX3N5c3RlbV91bml0ZGlyfSIKUkVRVUlS
RURfRElTVFJPX0ZFQVRVUkVTPSAic3lzdGVtZCIK

--000000000000d1365e0594dbdce0
Content-Type: application/octet-stream; name="eth0.service"
Content-Disposition: attachment; filename="eth0.service"
Content-Transfer-Encoding: base64
Content-ID: <f_k1q8nnv01>
X-Attachment-Id: f_k1q8nnv01

W1VuaXRdCkRlc2NyaXB0aW9uPU5ldHdvcmsgaW50ZXJmYWNlcwpXYW50cz1uZXR3b3JrLnRhcmdl
dApCZWZvcmU9bmV0d29yay50YXJnZXQKQmluZHNUbz1zeXMtc3Vic3lzdGVtLW5ldC1kZXZpY2Vz
LWV0aDAuZGV2aWNlCkFmdGVyPXN5cy5zdWJzeXN0ZW0tbmV0LWRldmljZXMtZXRoMC5kZXZpY2UK
CltTZXJ2aWNlXQpUeXBlPW9uZXNob3QKUmVtYWluQWZ0ZXJFeGl0PXllcwpFeGVjU3RhcnQ9L2Jp
bi9zaCAtYyAiaWZ1cCBldGgwIgpFeGVjU3RvcD0vYmluL3NoIC1jICJpZmRvd24gZXRoMCIKCltJ
bnN0YWxsXQpXYW50ZWRCeT1tdWx0aS11c2VyLnRhcmdldAo=

--000000000000d1365e0594dbdce0--
