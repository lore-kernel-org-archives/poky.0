Return-Path: <vaduva.jan.alexandru@gmail.com>
Received: from mail-pd0-f176.google.com (mail-pd0-f176.google.com
	[209.85.192.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC16EE00C84
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 14:30:31 -0700 (PDT)
Received: by mail-pd0-f176.google.com with SMTP id r10so4372199pdi.21
	for <poky@yoctoproject.org>; Thu, 10 Apr 2014 14:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=CqCf1aULHEW161yvhblAZRCSz5qTZ6Mng3VttnvtlDc=;
	b=HkhM5YigKqbTHOV7QzB6+kXidjR/jSESxgZqRWBvVnzM5nlzc5Lbgz0LdD6rm3Vfl7
	fwPTp+MtsL5W3Q0KWDdbHF6AP1057VuJckb+WVv/7YFcWqSzzqEo6NY/0wn6oBt3Ah5D
	NpTTpx1Qvs2dUQ8EvxkeT7hkopqf5VfSaB5S9aJo/Mmw+xtnpXb5pNk4KcSnG8s8ls0k
	fN3YejDY8LF/2UzWdIK24iZpKEq8byhnHp5/3hL6yGw1CcNxa2xkUB+Ph5GBOcN66Kpa
	5HU5ZRwEgDFJ1SlEIbMfZ/z8Ff0q3/m2HCjOcwKzQJk0GkSYtdUTucBPgo8aRE+ydbqq
	+gWA==
MIME-Version: 1.0
X-Received: by 10.66.122.101 with SMTP id lr5mr22531048pab.130.1397165431491; 
	Thu, 10 Apr 2014 14:30:31 -0700 (PDT)
Received: by 10.70.23.164 with HTTP; Thu, 10 Apr 2014 14:30:31 -0700 (PDT)
In-Reply-To: <72fd694877e24e5a95574a18a2e31d09@BLUPR05MB037.namprd05.prod.outlook.com>
References: <72fd694877e24e5a95574a18a2e31d09@BLUPR05MB037.namprd05.prod.outlook.com>
Date: Fri, 11 Apr 2014 00:30:31 +0300
Message-ID: <CABwVrCq7Z_0NgYv2H7JfW1O+w+Ld5pGy3OsBC6L9wmeOwOKgsg@mail.gmail.com>
From: Alexandru Vaduva <vaduva.jan.alexandru@gmail.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: openssl: Need PRINC+1 in recipe?
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
X-List-Received-Date: Thu, 10 Apr 2014 21:30:35 -0000
Content-Type: multipart/alternative; boundary=047d7b2e0ddf3c929304f6b6ed66

--047d7b2e0ddf3c929304f6b6ed66
Content-Type: text/plain; charset=ISO-8859-1

Sorry to hijack this conversation but I believe in the next version of poky
the package openssl should be updated and and for the rest of the version a
patch should be applied to solve the newly appeared exploit.
More info here:
http://thehackernews.com/2014/04/heartbleed-openssl-zero-day-bug-leaves.html
https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2014-0160

Alex


On Thu, Apr 10, 2014 at 11:20 PM, Bryan Evenson <bevenson@melinkcorp.com>wrote:

> All,
>
> I was previously on dylan-1.4.1 and today I upgraded to poky/dylan HEAD to
> take in the openssl security patches.  Things are rebuilding, but I noticed
> that the built package version is openssl-1.0.1e-r15.0, which is the same
> version currently installed on my system.  Shouldn't the PR line change to:
>
> PR = "${INC_PR+1}.0"
>
> For the packaging systems to take in the update?
>
> Thanks,
> Bryan
>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--047d7b2e0ddf3c929304f6b6ed66
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Sorry to hijack this conversation but I believe =
in the next version of poky the package openssl should be updated and and f=
or the rest of the version a patch should be applied to solve the newly app=
eared exploit. <br>
</div>More info here: <br><a href=3D"http://thehackernews.com/2014/04/heart=
bleed-openssl-zero-day-bug-leaves.html">http://thehackernews.com/2014/04/he=
artbleed-openssl-zero-day-bug-leaves.html</a><br><a href=3D"https://cve.mit=
re.org/cgi-bin/cvename.cgi?name=3DCVE-2014-0160">https://cve.mitre.org/cgi-=
bin/cvename.cgi?name=3DCVE-2014-0160</a><br>
<br></div>Alex <br></div><div class=3D"gmail_extra"><br><br><div class=3D"g=
mail_quote">On Thu, Apr 10, 2014 at 11:20 PM, Bryan Evenson <span dir=3D"lt=
r">&lt;<a href=3D"mailto:bevenson@melinkcorp.com" target=3D"_blank">bevenso=
n@melinkcorp.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">All,<br>
<br>
I was previously on dylan-1.4.1 and today I upgraded to poky/dylan HEAD to =
take in the openssl security patches. =A0Things are rebuilding, but I notic=
ed that the built package version is openssl-1.0.1e-r15.0, which is the sam=
e version currently installed on my system. =A0Shouldn&#39;t the PR line ch=
ange to:<br>

<br>
PR =3D &quot;${INC_PR+1}.0&quot;<br>
<br>
For the packaging systems to take in the update?<br>
<br>
Thanks,<br>
Bryan<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--047d7b2e0ddf3c929304f6b6ed66--
