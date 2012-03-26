Return-Path: <raj.khem@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00BB8E011D1
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 14:44:31 -0700 (PDT)
Received: by lbom11 with SMTP id m11so5763726lbo.35
	for <poky@yoctoproject.org>; Mon, 26 Mar 2012 14:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=vdZXLQmL7XdOaG1sO9u4dGe0tHXQVy38phTKC1jO3jQ=;
	b=n1NnBo5V18qWg/X2sFB4ss+ExKz6F/du9MwVfXRZS/UCPqxHUavpV8vOBjasc9t2Gg
	RwCzWw+LoYuV3nZh5XuC2XnbOO/kmEmX9HCET2sGJQLNho/C9EDTLb49AimtVKli8604
	RsQy5FT+tbXVFpjpIELtt6dtfzXerlteOcdGsWEYtBv9l1OIrEPaBa7mi97Hd4GBW0H2
	3CHv0xtNNwc/6ipW9d1OQAbSfMa7fNN3+FD37xTHmEm8bNQfXx9ETreRM+A0AtU7n1/8
	t6RxB9Yj4p9BqSHUHYlxITqewix8SAwaRjcRrrua5rzw2SHyFBfElZofVM8WIaQsam8K
	KTlQ==
Received: by 10.112.83.105 with SMTP id p9mr8703300lby.43.1332798270634; Mon,
	26 Mar 2012 14:44:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.152.3.161 with HTTP; Mon, 26 Mar 2012 14:44:00 -0700 (PDT)
In-Reply-To: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
References: <9F69795E29C890408AC2DAF646C89BB379D69623E5@MAILBOX.arc.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 26 Mar 2012 14:44:00 -0700
Message-ID: <CAMKF1sqHunoqyc_qodHKGqV-fFyYevpOs9nHma+cfZXSZ91+Cg@mail.gmail.com>
To: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: gcc -print-file-name option without path?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 21:44:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 26, 2012 at 8:57 AM, Zoufal Andreas
<Andreas.Zoufal@ait.ac.at> wrote:
> Hello,
> We am starting to use the Yocto/Poky toolchain as replacement for ELDK5. =
Trying to compile our existing kernel fails, but it worked fine with ELDK5.=
 Doing some investigation we recognized a different behavior which I guess =
is the reason for the problem: using the cross compiler to show the path of=
 the libgcc.a with the option "-print-libgcc-file-name" doesn't show the fu=
ll path, only the filename itself! But ELDK5 does.
> I'm using poky-1.2_M3.final for arm, and the build folder is in my home d=
irectory, like:
> /home/user/path/to/project/poky/build/tmp/sysroots =C2=A0 ...and so on
> Am I doing something wrong? gcc --help says that the -print-file-name sho=
uld return the full path, which is even not true.
> Kind regards, Andi


while the problem is not passing --sysroot option I wonder why do you query=
 for
libgcc when you are building kernel ? kernel should not need libgcc as
it provides any function needed from libgcc in a library of its own.
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

