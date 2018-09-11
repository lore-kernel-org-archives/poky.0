Return-Path: <adam.oleksy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6747E0093B; Tue, 11 Sep 2018 12:42:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (adam.oleksy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.219.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
	[209.85.219.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F102E00566
	for <poky@yoctoproject.org>; Tue, 11 Sep 2018 12:42:53 -0700 (PDT)
Received: by mail-yb1-f196.google.com with SMTP id f145-v6so9806402ybg.4
	for <poky@yoctoproject.org>; Tue, 11 Sep 2018 12:42:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1Ez8kBisLjIY7ZeB6olOgsSAlP6hpoDSGkPX3KO6wZY=;
	b=NsdSnjrehx3pfCt4x1/CNx9zmDgzcQbi/SLGIZUm04NgTxoNEXK7QAbhLviEkWfof0
	juBWUWXT4kabqz83dEoRtCPsK0XBmXWxCvwWbQk8FtVgXQtxFtdDXtOlpHYZR18Q/K8c
	zbNGTtcgiBZ/G6ftG+Wd5vJRqvzWMB8C19s0jP2AwKRMKh995Wr/JF/kub2Y2/8GnMsr
	nju6dtaFSyuIFZbr1CN06BBDRnAYp7EaDQQGHJTh2Vuqh1m16jr0w86c0ggHyptkS/hm
	Cu5e2/4PdigCNyOeSwSdbkW6CbaJbyP/IeIGzVnHoG0OBdwW8Vp+Su02x1B4bWlOCzF9
	sHmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1Ez8kBisLjIY7ZeB6olOgsSAlP6hpoDSGkPX3KO6wZY=;
	b=g+DdB8wswdJqF1HVpayZ6qYm0SEiW7yw5xkAXtlfR4AjWvk2oMUpSvsFyqJEi+Kyje
	FyuWaXccvSPnqW4nIJZQatU3tZHZZJaewILgnbo6fpxI0wtSEWlN+ZcLrcJY9tZ56rD9
	reL56OPdaA26xucCt0n4UaYr3u583QVaSmKVqQHWAPtZh5tuWxIKOfgVH6iVZznA3THu
	nRHUdmK2eeY2Z70Mqvw8tuyH6RiwpGECqLlUcU08FRdh883FjhU4nJmYCXsM0LS+io65
	wzcn4mWdb/ZowInHzyNTPh9lX8LHFtzQOOiMkPPN7PHQN1p8jzgb81ul5/eoEtOVcGl7
	BvsQ==
X-Gm-Message-State: APzg51By6Cg+QKrvlrG1soEq9PxwOOHnSj4stw24KbkBdPz42BDEItor
	jBeLQ0xjZE7P/MIrK7dopK17HFuIuJQd9aUFnJLjBg==
X-Google-Smtp-Source: ANB0VdYd8HgdkeJwKh/Pguj6DAXWNVmIvj3Xa7RvbeSL0UEgPPGWbWRQNHXYfnIX6TDtkGRK3DeDNd5do3KBmfFmxmc=
X-Received: by 2002:a25:5cc4:: with SMTP id
	q187-v6mr13059174ybb.106.1536694973254; 
	Tue, 11 Sep 2018 12:42:53 -0700 (PDT)
MIME-Version: 1.0
References: <CADBxsQUBACveJTvd6vabScyJZZShS7r2PZzmRz4oiuu8OVitqw@mail.gmail.com>
	<4b3c3786ac9bd94c6ae8474ff6ebbe5f02c75b62.camel@rpsys.net>
In-Reply-To: <4b3c3786ac9bd94c6ae8474ff6ebbe5f02c75b62.camel@rpsys.net>
From: Adam Oleksy <adam.oleksy@gmail.com>
Date: Tue, 11 Sep 2018 21:42:41 +0200
Message-ID: <CADBxsQVPrAVmi8=4VusvvkhWsdReevBy-ud+8PYGfbcSLAk6kA@mail.gmail.com>
To: Richard Purdie <rpurdie@rpsys.net>
Cc: poky@yoctoproject.org
Subject: Re: Handling CC/CXX and CFLAGS/CXXFLAGS environment variable
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
X-List-Received-Date: Tue, 11 Sep 2018 19:42:55 -0000
Content-Type: multipart/alternative; boundary="00000000000002545b05759dae1d"

--00000000000002545b05759dae1d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

W dniu czw., 6.09.2018 o 16:31 Richard Purdie <rpurdie@rpsys.net>
napisa=C5=82(a):

> On Thu, 2018-09-06 at 16:06 +0200, Adam Oleksy wrote:
> > Hi,
> > I'm user of the SDK built with yocto with populate_sdk task for
> > image.
> > I've found that some of the IDEs and CMake has a problem with
> > environment setup script (e.g. environment-setup-aarch64-poky-linux),
> > which is produced by toolchain-scripts.bbclass.
> >
> > The problem is that, the CC and CXX variables contains arguments for
> > the compiler (march, mtune and sysroot). It causes problems when
> > CMake or IDE (e.g. CLion) works under such configured environment
> > (look at this bug report https://youtrack.jetbrains.com/issue/CPP-112
> > 50#focus=3DstreamItem-27-2564925-0-0 for CLion, and this merge request
> > https://gitlab.kitware.com/cmake/cmake/merge_requests/2352/diffs for
> > CMake). Authors of these tools are of the opinion that CC/CXX
> > variables should points only to the compiler program, but not contain
> > any arguments. It agrees with the definition of these variables,
> > which can be found at http://www.gnu.org/software/make/manual/make.ht
> > ml#Implicit-Variables.
> >
> > Could you consider changing the  toolchain-scripts.bbclass that any
> > argument for the compiler goes to CFLAGS/CXXFLAGS? Is there any
> > rationale to not change the current status quo?
>
> The current contents of these files matches what the wider system uses
> to build things, we use exactly these values to build everything in the
> system.
>
> Why? We've done this for a long time (since forever). There are
> codebases which ignore *FLAGS. More recently we have gone and
> identified and fixed most of those. Some applications (and the Linux
> kernel) have their own ideas about which compile optimisations to use
> so the *FLAGS are the less essential options and the ones in the tools
> are the options the tools won't work without.
>
> So we could consider it but it is likely a huge change. We could just
> hack toolchain-scripts but then we'd not match what we do everwhere
> else. I can see arguments both ways.


Understood.

CMake has merged my change to handle CC/CXX variables containing arguments
(but with complaining). CLion as well. And I'm happy.

Thank you Richard for detailed explanation.

EOT

Adam


--=20
Pozdrawiam,
Adam Oleksy

--00000000000002545b05759dae1d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div>W dniu czw., 6.09.2018 o 16:31 Richard Purdie &lt;<a href=3D"mailto:rp=
urdie@rpsys.net">rpurdie@rpsys.net</a>&gt; napisa=C5=82(a):<br></div><div><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, 2018-09-06=
 at 16:06 +0200, Adam Oleksy wrote:<br>
&gt; Hi,<br>
&gt; I&#39;m user of the SDK built with yocto with populate_sdk task for<br=
>
&gt; image.<br>
&gt; I&#39;ve found that some of the IDEs and CMake has a problem with<br>
&gt; environment setup script (e.g. environment-setup-aarch64-poky-linux), =
<br>
&gt; which is produced by toolchain-scripts.bbclass.<br>
&gt; <br>
&gt; The problem is that, the CC and CXX variables contains arguments for<b=
r>
&gt; the compiler (march, mtune and sysroot). It causes problems when<br>
&gt; CMake or IDE (e.g. CLion) works under such configured environment<br>
&gt; (look at this bug report <a rel=3D"noreferrer">https://youtrack.jetbra=
ins.com/issue/CPP-112</a><br>
&gt; 50#focus=3DstreamItem-27-2564925-0-0 for CLion, and this merge request=
 <br>
&gt; <a rel=3D"noreferrer">https://gitlab.kitware.com/cmake/cmake/merge_req=
uests/2352/diffs</a> for<br>
&gt; CMake). Authors of these tools are of the opinion that CC/CXX<br>
&gt; variables should points only to the compiler program, but not contain<=
br>
&gt; any arguments. It agrees with the definition of these variables,<br>
&gt; which can be found at <a rel=3D"noreferrer">http://www.gnu.org/softwar=
e/make/manual/make.ht</a><br>
&gt; ml#Implicit-Variables.<br>
&gt; <br>
&gt; Could you consider changing the=C2=A0 toolchain-scripts.bbclass that a=
ny<br>
&gt; argument for the compiler goes to CFLAGS/CXXFLAGS? Is there any<br>
&gt; rationale to not change the current status quo?<br>
<br>
The current contents of these files matches what the wider system uses<br>
to build things, we use exactly these values to build everything in the<br>
system.<br>
<br>
Why? We&#39;ve done this for a long time (since forever). There are<br>
codebases which ignore *FLAGS. More recently we have gone and<br>
identified and fixed most of those. Some applications (and the Linux<br>
kernel) have their own ideas about which compile optimisations to use<br>
so the *FLAGS are the less essential options and the ones in the tools<br>
are the options the tools won&#39;t work without.<br>
<br>
So we could consider it but it is likely a huge change. We could just<br>
hack toolchain-scripts but then we&#39;d not match what we do everwhere<br>
else. I can see arguments both ways.</blockquote><div dir=3D"auto"><br></di=
v><div dir=3D"auto">Understood.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">CMake has merged my change to handle CC/CXX variables containing =
arguments (but with complaining). CLion as well. And I&#39;m happy.=C2=A0</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you Richard for det=
ailed explanation.</div><div dir=3D"auto"><br></div><div dir=3D"auto">EOT</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">Adam</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto"><br></div></div></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Pozdrawiam,<=
br>Adam Oleksy</div>

--00000000000002545b05759dae1d--
