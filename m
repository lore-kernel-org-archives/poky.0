Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42A32E00BE2; Fri, 15 Jan 2016 05:34:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srifenbark[at]gmail.com)
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
	*      [209.85.218.65 listed in list.dnswl.org]
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0288E009C5
	for <poky@yoctoproject.org>; Fri, 15 Jan 2016 05:33:59 -0800 (PST)
Received: by mail-oi0-f65.google.com with SMTP id x140so8989269oif.1
	for <poky@yoctoproject.org>; Fri, 15 Jan 2016 05:33:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=maiVB2Bc+Vs/r2CtL3UYNji9smPFVHgraP6iYGIY+l4=;
	b=BZUPi/epMceyZ4S7XKUdytQ9Z6OL019zaLfH6MszZTE3BL1Qk4APdnr9SrDT4TqCz6
	VdvZususmykINjgEIS9VEUuuQhDfmSrD70X4w7UAE7gW+tH5IXa7crWtxyPMz3k+cZC3
	vhYCNp83j/60rqv4up7mlmiyiDieogHC/0inMjn/C+6UZqM5DXc1bjPyjTtaE043xTT7
	/AWqXQMBQe5RQqcRM5/p/ocTpOGa67pb0Ll1esSI1qzPZUNebYEfHOBRlLLDxgEbp0H1
	p3RisuaWgd/kewFA8ytMjbnsS3GO4ljCCtpKf3rB4iF7ofJpETvKO7nGExpeyKWcwAqw
	Yz0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=maiVB2Bc+Vs/r2CtL3UYNji9smPFVHgraP6iYGIY+l4=;
	b=mZDqnTwOnh8Inj92HMMaQDmOyjO2KhhD2qKrDkdVrYELDuUn17UI399GFWxiqi8a1E
	hQBMrfMiiLoltmhWB8Ge/xWWw5j5fK15QN5NNLGc/Wbbo5upZkfRexr3rj44KIXAqR6R
	KAGIJ9QfE5wC7Tm2n/87RaaQ3RxxA4T2kSfMGDWjPAHOb902QT2M1cDGsYrXKa7RM6HJ
	HoTKuKH/JXDWeqQhkrrtYlPsojL8Znxv/KPnHT+QeLEyAkV3Pfwmr+hYi3tUlRgyZX8H
	pVKOon1/W+bRHOiHB872aVEZ8z8GgzZx8PsroPKtZkn6BWkjw2bnb6IZ0gOLDk/uMuWA
	kcAA==
X-Gm-Message-State: ALoCoQmfOhMYBPFaY0Ka918sMpjdjPm4PR1N0wFvBw50yqGEo08z1EHVkJvJyCGcts/61Z5XqKcz1eL1i8uTsl1TzVYWhyjPiQ==
MIME-Version: 1.0
X-Received: by 10.202.239.212 with SMTP id n203mr7962175oih.77.1452864838899; 
	Fri, 15 Jan 2016 05:33:58 -0800 (PST)
Received: by 10.182.251.133 with HTTP; Fri, 15 Jan 2016 05:33:58 -0800 (PST)
In-Reply-To: <bae3519051fc355e6fdd7dc49eb80a100b56e1d2.1452808373.git.anibal.limon@linux.intel.com>
References: <cover.1452808370.git.anibal.limon@linux.intel.com>
	<bae3519051fc355e6fdd7dc49eb80a100b56e1d2.1452808373.git.anibal.limon@linux.intel.com>
Date: Fri, 15 Jan 2016 05:33:58 -0800
Message-ID: <CAFNP8Ou+U17ML_J_8_ZH0ZHk33RuSmVObxjNksDxaLA0xfDbPw@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	georgex.l.musat@intel.com, tudor.florea@enea.com,
	poky@yoctoproject.org, "Esquivel, Benjamin" <benjamin.esquivel@intel.com>
Subject: Re: [PATCH 3/3] Update dev-manual to point to the new ptest-runner2.
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
X-List-Received-Date: Fri, 15 Jan 2016 13:34:03 -0000
Content-Type: multipart/alternative; boundary=94eb2c09564ea11d6b05295f7407

--94eb2c09564ea11d6b05295f7407
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Anibal,

Patch applied and committed to yocto-docs repo master.  See
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?id=3D221d7c612=
5f5fc02b9ce7bcf177fb382f421ff9f
for the commit and
http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#running-pte=
st
for the published 2.1 section.

Thanks,
Scott

On Thu, Jan 14, 2016 at 2:27 PM, An=C3=ADbal Lim=C3=B3n <anibal.limon@linux=
.intel.com>
wrote:

> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>  documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> b/documentation/dev-manual/dev-manual-common-tasks.xml
> index dbf493a..767f51c 100644
> --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> @@ -7488,8 +7488,8 @@
>                  <title>Running ptest</title>
>
>                  <para>
> -                    The <filename>ptest-runner</filename> package
> installs a
> -                    shell script that loops through all installed ptest
> test
> +                    The <filename>ptest-runner2</filename> package
> installs a
> +                    program that loops through all installed ptest test
>                      suites and runs them in sequence.
>                      Consequently, you might want to add this package to
>                      your image.
> --
> 2.1.4
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--94eb2c09564ea11d6b05295f7407
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Anibal, <br><br></div>Patch applied and com=
mitted to yocto-docs repo master.=C2=A0 See <a href=3D"http://git.yoctoproj=
ect.org/cgit/cgit.cgi/yocto-docs/commit/?id=3D221d7c6125f5fc02b9ce7bcf177fb=
382f421ff9f">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/commit/?i=
d=3D221d7c6125f5fc02b9ce7bcf177fb382f421ff9f</a> for the commit and <a href=
=3D"http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#running=
-ptest">http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#run=
ning-ptest</a> for the published 2.1 section. <br><br></div>Thanks, <br></d=
iv>Scott<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"=
>On Thu, Jan 14, 2016 at 2:27 PM, An=C3=ADbal Lim=C3=B3n <span dir=3D"ltr">=
&lt;<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_blank">aniba=
l.limon@linux.intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.lim=
on@linux.intel.com">anibal.limon@linux.intel.com</a>&gt;<br>
---<br>
=C2=A0documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documen=
tation/dev-manual/dev-manual-common-tasks.xml<br>
index dbf493a..767f51c 100644<br>
--- a/documentation/dev-manual/dev-manual-common-tasks.xml<br>
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml<br>
@@ -7488,8 +7488,8 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;title&gt;=
Running ptest&lt;/title&gt;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;para&gt;<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The =
&lt;filename&gt;ptest-runner&lt;/filename&gt; package installs a<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 shel=
l script that loops through all installed ptest test<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 The =
&lt;filename&gt;ptest-runner2&lt;/filename&gt; package installs a<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 prog=
ram that loops through all installed ptest test<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0suites and runs them in sequence.<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Consequently, you might want to add this package to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0your image.<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.1.4<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</font></span></blockquote></div><br></div>

--94eb2c09564ea11d6b05295f7407--
