Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A4A7E00BBC; Sun, 20 Dec 2015 11:22:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32063E0078A
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 11:22:50 -0800 (PST)
Received: by mail-ig0-f175.google.com with SMTP id to18so23452742igc.0
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 11:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Oi9H8nDmc6T/mSlad/sySvrEABS0GSxe1+Isic8a7xw=;
	b=cyJrtF2c8tvQu5DvmHnv0bN6P9qjHB3tF0VSpk7IDs0YpbNOFcyJ4vklLwTxJyVhRF
	5NoG7Lw2DAgM6gR0G6MtAGZhAqkM6hq/L8ptNUWDA1y6wIV9YyPen2pjke1tq11Dr4Sb
	VhDOsTy3feLqINo5y0eGQp93NvNs/Sk9Rt39Zy9uj1/EtwOyxilFKEBBMVfh13z0pwvz
	ENNM1C3nI+SCxkj4z1KH+2T7QZp93rQpd6mkiKThHZwz6CqW1XXHcpXJZOP+DzaC0b0a
	7PuTlZrBjvaz3Vyd7MM4dxJICUp2IAXCsZlNTmgryJv0s7U9z4StKOZzSJgjO6yGybzn
	M+TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Oi9H8nDmc6T/mSlad/sySvrEABS0GSxe1+Isic8a7xw=;
	b=CMhNs+nDEgLyE/ka8nwC3rMb3xLkMB/pFz1y1lIrhU2Wbspz9ZQUMOK8cBRbdQXax4
	2q/ON2wbeu8D4LeqgYoNqc8Hs95xuEHQKJ0mg0EQ1Xov8iezFHU1EcSVBNIaDJHTYFyH
	g/KYC81vu4ouBGZMbuaMVn2fKXp0AiuupGiXtgxqnHWkRNTq3DI1osNIkoXKuiBf5w1g
	B1Ga7tebdSJwJegqpZTYYE8vap71oJ8mLG5BzfnQ0fuN4a52Ap9d3ibv1cVbhtAtcyRo
	DXDsqyuyWb+vuO+lvRVijACaIwGeWQxMn23LejmeTYxsi+rLzziK+fyEqnx/k5I2YvDF
	DNPw==
X-Gm-Message-State: ALoCoQk0KUenLHWNXviE4P2ldzDPhwZZjKP30R2RBo+7mnyjA1VOyP5x5OpJmbFDhBjMjoCjYOxd4Bg+XfRvz9N76HjDUipvEi0JogyE4PjKTZqDDbdZdRY=
X-Received: by 10.50.22.33 with SMTP id a1mr13723947igf.52.1450639370187; Sun,
	20 Dec 2015 11:22:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Sun, 20 Dec 2015 11:22:30 -0800 (PST)
In-Reply-To: <CAA2DH4t7mWaM71LZGUqQ2xrqqdFEoKmVv3L+5FAQKBuF1DtdzQ@mail.gmail.com>
References: <CAA2DH4t7mWaM71LZGUqQ2xrqqdFEoKmVv3L+5FAQKBuF1DtdzQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sun, 20 Dec 2015 19:22:30 +0000
Message-ID: <CAJTo0LbUDLJurQWx2bmhUHLyqbJ0NOMNKVZRnKr6dkqNvDhUHg@mail.gmail.com>
To: Prasant J <pj0585@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Bitbake recipe for prebuilt binaries
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
X-List-Received-Date: Sun, 20 Dec 2015 19:22:53 -0000
Content-Type: multipart/alternative; boundary=047d7b10ca195b97ee0527594cee

--047d7b10ca195b97ee0527594cee
Content-Type: text/plain; charset=UTF-8

On 20 December 2015 at 15:53, Prasant J <pj0585@gmail.com> wrote:

> I'm building a custom layer for my board and I would like to include some
> pre-built binaries in my final image.
>
> The package is built outside the yocto build and is available as a binary
> tarball from an http/ftp location.
>
>
> Can someone please point to me a bit-bake recipe that handles such a case?
>

This is basically a matter of downloading the tarballs by setting SRC_URI,
unpacking them, and putting the files in the right places.
 bin_package.bbclass will help with this.

Ross

--047d7b10ca195b97ee0527594cee
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 December 2015 at 15:53, Prasant J <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:pj0585@gmail.com" target=3D"_blank">pj0585@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div>I&#39;m building a custom layer=
 for my board and I would like to include some pre-built binaries in my fin=
al image.<br><br></div><div>The package is built outside the yocto build an=
d is available as a binary tarball from an http/ftp location.<br></div><div=
><br><br></div>Can someone please point to me a bit-bake recipe that handle=
s such a case? <br></blockquote></div><br>This is basically a matter of dow=
nloading the tarballs by setting SRC_URI, unpacking them, and putting the f=
iles in the right places. =C2=A0bin_package.bbclass will help with this.</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</di=
v></div>

--047d7b10ca195b97ee0527594cee--
