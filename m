Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09462E00E29; Fri, 27 May 2016 02:15:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0C4EE00DEE
	for <poky@yoctoproject.org>; Fri, 27 May 2016 02:14:59 -0700 (PDT)
Received: by mail-io0-f178.google.com with SMTP id p64so27732514ioi.2
	for <poky@yoctoproject.org>; Fri, 27 May 2016 02:14:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=k5gjKhUWUyX541J2AWthf44BDGQ9b65FrXs+b7Oo2RM=;
	b=p+hFjlU0Rp/lnkG+Y5SE+mWmUb9tvP+0pyUKSVR7Luk/X6xKqbhC2LZdpTgc0K9beJ
	HHV21JwSoLH3tevqkU7Rxk57zSTFEMVa6/WjWUOzVgp9T3pxC8XX6X4PPDpL+Pyn06aG
	CIJPFlZesZ0wA+YqMwQG5K+5xpjrFK3EhxcTVC47rBN3adyTpJraunaszZveJUvhn4UH
	pf26/TeSE5vYSSarfqnC6TG7ppVowwrs1rrhsN3qB+t5CgqMgrS0D19Oeak6op1ugKD1
	g4YtNdaQvn43CCouEavWg+vDGLLoe5rjLLMXiDfi+m8tKtnaNqRaMc+RTcGKJy0MWxck
	SrzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=k5gjKhUWUyX541J2AWthf44BDGQ9b65FrXs+b7Oo2RM=;
	b=PpqjoGSjROLkYBVp7UdDR6U0pytC2rPJOOGG1RPXjs4GCh/S6QudMtnW6HDG+UFp/q
	lt3K59LEH9Tc52mfZiWYkgaqB2ojERbZy9wJzf/h7t9ZlRdB15Ny71dmjNdhX7jBkfeU
	VyKN/Dgxkjz0ODxDDuHgQ7eZ/h/XSpOIp8EsbpmdFcWw2xtb4HFq0DcZoksHDjc/L3TZ
	qagmzvy4nncq/AovlkMiu+wdbvYjbCIXjfgU/+lejGqF9Cipa5x5d3uVebH9dCjf5Vjc
	AMhNMC/MwvroszHES+gJb2aGsMK+Gci4hyYpIvdk9A3jk2UXZhY6L7LQPJW6chqL/egI
	WVpw==
X-Gm-Message-State: ALyK8tKRgJwDFHyEUiX+ha84TyS2k/RYwN0a+m36tG+0VKWVesTrZDPDijwiqjoypUIiQJs2SUph6lKxGux6A2zn
X-Received: by 10.107.135.234 with SMTP id r103mr13363406ioi.133.1464340498820;
	Fri, 27 May 2016 02:14:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Fri, 27 May 2016 02:14:39 -0700 (PDT)
In-Reply-To: <trinity-439db5cd-2a82-47c4-8184-dd5e03d49e5d-1464339731287@3capp-gmx-bs48>
References: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>
	<1464338437.3484.3.camel@linux.intel.com>
	<trinity-439db5cd-2a82-47c4-8184-dd5e03d49e5d-1464339731287@3capp-gmx-bs48>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 27 May 2016 10:14:39 +0100
Message-ID: <CAJTo0LZSG=2zZZ4REnZS5WU+6cPJ-7TAraWLdZy+u_RB1iOUPw@mail.gmail.com>
To: star@gmx.li
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: lib-sdl issue with qemu
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
X-List-Received-Date: Fri, 27 May 2016 09:15:02 -0000
Content-Type: multipart/alternative; boundary=001a113fc2b64345b20533cf5730

--001a113fc2b64345b20533cf5730
Content-Type: text/plain; charset=UTF-8

On 27 May 2016 at 10:02, <star@gmx.li> wrote:

> So am I right, I have to do both: update to 2.0.2 and remove the
> ASSUME_PROVIDED (which is indeed included in my local.conf)?
>

Yes, that should solve the problem.

Ross

--001a113fc2b64345b20533cf5730
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 27 May 2016 at 10:02,  <span dir=3D"ltr">&lt;<a href=3D"mailto:star@gmx.=
li" target=3D"_blank">star@gmx.li</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div id=3D":30e" class=3D"a3s aXjCH m154f178b0f1695ff">So am=
 I right, I have to do both: update to 2.0.2 and remove the ASSUME_PROVIDED=
 (which is indeed included in my local.conf)?<br></div></blockquote></div><=
br>Yes, that should solve the problem.</div><div class=3D"gmail_extra"><br>=
</div><div class=3D"gmail_extra">Ross</div></div>

--001a113fc2b64345b20533cf5730--
