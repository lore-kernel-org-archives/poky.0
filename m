Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BCB5E00E93; Thu, 19 May 2016 12:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB453E00E8D
	for <poky@yoctoproject.org>; Thu, 19 May 2016 12:22:35 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id qe5so118166416igc.1
	for <poky@yoctoproject.org>; Thu, 19 May 2016 12:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iEQxsSFRlvzg40SAKugWIKrAg4SaGwMyiXzaXioqN/Q=;
	b=oYeHS9Iy+BANPaoTXIb/xe8Tf337Xo4/NCUOl5r7VQtBvQ36oKPbqGmINDk4YCo2A3
	5Np+NZdlKJPN6R+49+Jidrgl/XUTosuAcXKKo73IrnE8BRaKwKNmIUWgGEx15dGGDNI6
	+X2P9fRYqf0V4/LPljLoRR+DJqVOyICyAVjql7HhbzFF6z6QgX0feZXdmAjycYfwANpJ
	KU0aftOL9Gw0AtgOVYqLe1hXNlfCg0sPxK+bdvwyJ/1F68iZ2m5pXhsJIH7HtID9HxG9
	utHV7UlRq0HnSBf9vmvV859i/4UPfPLfFUBd0ORjOWPhgdXusD4lBlU4MQi98JntJN/A
	Eeog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iEQxsSFRlvzg40SAKugWIKrAg4SaGwMyiXzaXioqN/Q=;
	b=ZFlR/6psQfyHdf8/JgvsDLiWzE1v37Z7pWWiqeWRFFCsXBPowRt5ZlaPlQ20oaYrc+
	zvymfrPL39fNBn0DrjMrxS6ZNG5I6WkHCVhjdLb10GydzSAZJbm+K3r+WCOdC7S6Nyim
	Qi73nG6iaYXGj7AhAvx46EWQEDX/c0+iC0OfGdexQ7245KxVlTkcalUJeEnghpXN0Ks/
	+Ja9hLNSTPYuFuDOMuwIZfzXPjplO6gbnOSA2eqJcsIHZ0v3/9Sd3iZaInd1UlQR4fUG
	jItell7JWWgvZB0bR1wsJr/fgkLViaHlENHUe4i1YwOoTe4hifAviCMuMeiChA3DmXyM
	uTpw==
X-Gm-Message-State: AOPr4FWExO8HCOVu/D/EJkoiWZnZB2VOiKYaSArRDS2qry+kLclKxkbJuSbyStUtjSowMSDaZeDr5c2YPgZRNFqk
X-Received: by 10.50.160.10 with SMTP id xg10mr4002141igb.52.1463685755119;
	Thu, 19 May 2016 12:22:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Thu, 19 May 2016 12:22:15 -0700 (PDT)
In-Reply-To: <CAO7m3AmuueFfYGJZ4YBvz-cuMTAYqThUQnWVTm+iEc1a0ka0pA@mail.gmail.com>
References: <CAO7m3AmuueFfYGJZ4YBvz-cuMTAYqThUQnWVTm+iEc1a0ka0pA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 May 2016 20:22:15 +0100
Message-ID: <CAJTo0LYvpynQ6cF8QLL_NuTSZDHf34tx=Vt6TBnQZqUaQv7pCg@mail.gmail.com>
To: Thomas Besemer <thomas.besemer@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: yasm as host tool with populate_sdk
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
X-List-Received-Date: Thu, 19 May 2016 19:22:39 -0000
Content-Type: multipart/alternative; boundary=001a1136a2f27f6ce6053336e570

--001a1136a2f27f6ce6053336e570
Content-Type: text/plain; charset=UTF-8

On 19 May 2016 at 17:59, Thomas Besemer <thomas.besemer@gmail.com> wrote:

> TOOLCHAIN_HOST_TASK_append = " yasm"
>

This needs to be nativesdk-yasm, and as Khem says the BBCLASSEXTEND needs
to include nativesdk for yasm.  If that works then please submit the patch
to add nativesdk to yasm.bb back to oe-core.

Ross

--001a1136a2f27f6ce6053336e570
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 May 2016 at 17:59, Thomas Besemer <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:thomas.besemer@gmail.com" target=3D"_blank">thomas.besemer@gmail.com</=
a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>TOOLCHAIN_HOST_=
TASK_append =3D &quot; yasm&quot;<br></div></blockquote></div><br>This need=
s to be nativesdk-yasm, and as Khem says the BBCLASSEXTEND needs to include=
 nativesdk for yasm.=C2=A0 If that works then please submit the patch to ad=
d nativesdk to <a href=3D"http://yasm.bb">yasm.bb</a> back to oe-core.</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div>=
</div>

--001a1136a2f27f6ce6053336e570--
