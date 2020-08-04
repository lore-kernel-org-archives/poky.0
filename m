Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web10.4245.1596544402824097959
 for <poky@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 05:33:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ftml.net header.s=fm1 header.b=Mj0azJtl;
 spf=pass (domain: ftml.net, ip: 64.147.123.20, mailfrom: fdk17@ftml.net)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 3713E12BE
	for <poky@lists.yoctoproject.org>; Tue,  4 Aug 2020 08:33:21 -0400 (EDT)
Received: from imap7 ([10.202.2.57])
  by compute3.internal (MEProxy); Tue, 04 Aug 2020 08:33:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ftml.net; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm1; bh=HoOH2K/sihJwbrR3vsxOpUA5PXcAJNd
	uuqrHKDNZ+uI=; b=Mj0azJtltWt6t8CttGMRgsHlD9naMMKI++LN/JY/XX0uQ6C
	TBC4yfSWP9yys5M1vnOq1nI8S2r3kBrGLfSvXAROxr9H9OYo0hKwSt8gkIU8Y9ew
	/IS9DG+a1BpgGnSI3fCLUfvDUa5d29gyMVLvCmKW9SFyhJ7sp2teH++u9FPStb5g
	qGe68nyhr19Vp+3lMd/Qrs8q130kQE8iuTFYS5NcgP0FC+dMBHnATz/kATR2tHlk
	F2bwmosciBB/BC7m+ryAFr9AI1Vg/nJR1lF7x9/3oMmSbcpRVj+K3/abX638bb3r
	vVhOZhtr9tQqEg8xNfzABKA46T5ep1G2LIgHVVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=HoOH2K
	/sihJwbrR3vsxOpUA5PXcAJNduuqrHKDNZ+uI=; b=WyjhUdkdkwr7wZjUbl7M22
	z0f9obe/A6jloV6LuETr+caoX0CaPXmSRIbbh67dCsnHVcwcLoyQhr8ldmGvsSVt
	Xg/Ul0Kj0ls6LEdnKB9qiFL3TUjyPd4cmWLQK3a4JnZzGaXhuL/MUJgmIXYukZJd
	4RezrM11ruOWJGzzyXyQpsb32gtcCZaYWmCgNYP0p9lwNZ+eb+BsZJiv8NhhbCWf
	6qz1ki9hQUHU+vWHLVvtR4R/DGNECvkIc6Ml6OPCege9ZKD57AtyCt3SUvgQ2QIw
	1g27Jhhx6JLXzHSnr2V6xunP1MtJCvCPrihHDTNyvP6IasTL35Q19dOUcjIZJb6Q
	==
X-ME-Sender: <xms:kFUpX5jX2qRqasJVxbEr03FLtdF5bpHD5Za5fDlHfgH9S9kGpfOLuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrjeeigdehgecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesrgdtre
    erreertdenucfhrhhomhepfdfhrhgvugcuuegrkhhsihhkfdcuoehfughkudejsehfthhm
    lhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfektdejjeelheevtddvhfeivddvtdfgje
    evfeelueekveeuvdfgjeejgfeuhefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghr
    rghmpehmrghilhhfrhhomhepfhgukhdujeesfhhtmhhlrdhnvght
X-ME-Proxy: <xmx:kFUpX-B39qZ4TD5qwHndI7cZHLgDwhsT873pmq855a1olUhnk_zgoA>
    <xmx:kFUpX5GihECU8aAwfNeJaz8Py8TX7929b__A5NEUqxS-gVQDBF1BQg>
    <xmx:kFUpX-TpFoN9cSdBHy5pOtItIq0J0dmV_mRsoWSaCKbdGc3A9uaQ6A>
    <xmx:kFUpX-jOrW93uqaOua-GgWobYmk8cuqi4DgdFPKjGVoICCPwby-RNA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 8337B1804C6; Tue,  4 Aug 2020 08:33:20 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-136-gc39b634-fm-20200803.001-gc39b6340
Mime-Version: 1.0
Message-Id: <7ed04253-4026-4600-8541-bdde08495fa3@www.fastmail.com>
In-Reply-To: <E02h.1596524350140620056.DK0t@lists.yoctoproject.org>
References: <E02h.1596524350140620056.DK0t@lists.yoctoproject.org>
Date: Tue, 04 Aug 2020 08:33:00 -0400
From: "Fred Baksik" <fdk17@ftml.net>
To: poky@lists.yoctoproject.org
Subject: Re: [poky] ERROR: Kernel configuration is invalid
Content-Type: multipart/alternative;
 boundary=ca7225c8852742439783eeb7064a1d05

--ca7225c8852742439783eeb7064a1d05
Content-Type: text/plain


On Tue, Aug 4, 2020, at 2:59 AM, Ashish wrote:
>         2) $ bitbake -c devshell virtual/kernel
>             $ make M=<Location of module created in step 1 above>  modules
>  
> Compilation of kernel-modules with this setup shows below error:
> 
> */home/ashish/yocto-default/build-xenimage/tmp/work-shared/raspberrypi4-64/kernel-source/Makefile:609: include/config/auto.conf: No such file or directory*
>  
> *  ERROR: Kernel configuration is invalid.*
> *         include/generated/autoconf.h or include/config/auto.conf are missing.*
> *         Run 'make oldconfig && make prepare' on kernel src to fix it.
*
> But , the config is preset at below location & i can do $ bitbake -c menuconfig virtual/kernel
> 
> home/ashish/yocto-default/build-xenimage/tmp/work/raspberrypi4_64-poky-linux/linux-raspberrypi/1_5.4.51+gitAUTOINC+aafb8f095e_machine-r0/linux-raspberrypi4_64-standard-build/.config
> 

I've seen the same error before performing similar steps. Try running the following command.  Then when building the kernel module the make-mod-scripts will run again and building external kernel modules should start working again.

$ bitbake make-mod-scripts -c clean

--
Fred

--ca7225c8852742439783eeb7064a1d05
Content-Type: text/html
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html><html><head><title></title><style type=3D"text/css">p.Mso=
Normal,p.MsoNoSpacing{margin:0}</style></head><body><div><br></div><div>=
On Tue, Aug 4, 2020, at 2:59 AM, Ashish wrote:<br></div><blockquote type=
=3D"cite" id=3D"qt" style=3D""><div>&nbsp; &nbsp; &nbsp; &nbsp; 2) $ bit=
bake -c devshell virtual/kernel<br></div><div style=3D"line-height:1.428=
57;"><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; $ make M=3D&lt;Locat=
ion of module created in step 1 above&gt;&nbsp; modules<br></div></div><=
div>&nbsp;<br></div><div>Compilation of kernel-modules with this setup s=
hows below error:<br></div><div> <br></div><div><span style=3D""><b>/hom=
e/ashish/yocto-default/build-xenimage/tmp/work-shared/raspberrypi4-64/ke=
rnel-source/Makefile:609: include/config/auto.conf: No such file or dire=
ctory</b></span><br></div><div>&nbsp;<br></div><div><span style=3D""><b>=
&nbsp; ERROR: Kernel configuration is invalid.</b></span><br></div><div>=
<span style=3D""><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;include/generated/=
autoconf.h or include/config/auto.conf are missing.</b></span><br></div>=
<div><div><span style=3D""><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Run 'mak=
e oldconfig &amp;&amp; make prepare' on kernel src to fix it.<br></b></s=
pan></div><div>But , the config is preset at below location &amp; i can =
do $ bitbake -c menuconfig virtual/kernel<br></div><div> <br></div><div>=
home/ashish/yocto-default/build-xenimage/tmp/work/raspberrypi4_64-poky-l=
inux/linux-raspberrypi/1_5.4.51+gitAUTOINC+aafb8f095e_machine-r0/linux-r=
aspberrypi4_64-standard-build/.config<br></div><div><div><br></div></div=
></div></blockquote><div><br></div><div>I've seen the same error before =
performing similar steps. Try running the following command.&nbsp; Then =
when building the kernel module the make-mod-scripts will run again and =
building external kernel modules should start working again.<br></div><d=
iv><br></div><div>$ bitbake make-mod-scripts -c clean<br></div><div><br>=
</div><div>--<br></div><div>Fred<br></div></body></html>

--ca7225c8852742439783eeb7064a1d05--
