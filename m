Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9BB3E017AB
	for <poky@yoctoproject.org>; Mon,  4 Nov 2013 05:16:54 -0800 (PST)
Received: by mail-lb0-f174.google.com with SMTP id q8so5400997lbi.33
	for <poky@yoctoproject.org>; Mon, 04 Nov 2013 05:16:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=+De5h2BPRFBE8aw379kND1n+vrppRL4hdanjq9i5wNg=;
	b=RtvBGGjo4ktDgMJe91SCnXudetKndhBLbBrBUCjfnlGo5YA19Yyt2z1eT81gdY2kEu
	qIF4JuslxOGEEIAP0PA2eqIxeaR8Gt66uOEZ7NFQRBZgDABJ4lrNvM89e3f05LGKcNIZ
	HK8DZ13XyQlzbgaVW+zGWtTD+ZiZof1OKmTXM6NMnzSXI5z2WRZxTVW74vNZ8nRNoPk3
	CcBkjOCKhMuhejFCCxUJp+O/IL10SKHMNYWPwP3FbsssxKFFJrQhzkeEJVoLWxG3aOz/
	k3orStddVCSoF6ZRLbflyPqIw9T345gFT9mkm13D8Hv4BZ3fJ+IV4qHTt/sO9Elr1k70
	wbDA==
MIME-Version: 1.0
X-Received: by 10.112.29.17 with SMTP id f17mr1036130lbh.45.1383571012838;
	Mon, 04 Nov 2013 05:16:52 -0800 (PST)
Received: by 10.112.14.200 with HTTP; Mon, 4 Nov 2013 05:16:52 -0800 (PST)
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD09C38EAD@AMDTCEX12.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD09C38EAD@AMDTCEX12.actuant.pri>
Date: Mon, 4 Nov 2013 08:16:52 -0500
Message-ID: <CADkTA4P48xR1T82tnePHH4dQ9ZK-=XFpwkY=gvpMRdU-ozwb+A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@maximatecc.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: RT-patch for Yocto-kernel
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
X-List-Received-Date: Mon, 04 Nov 2013 13:16:55 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 4, 2013 at 2:31 AM, Keskinarkaus, Teemu
<Teemu.Keskinarkaus@maximatecc.com> wrote:
> Hi,
>
>
>
> In our system we want to use Full RT =96 kernel configuration. I learned =
that
> Yocto/Poky Preempt =96 rt is actually just low latency configuration and =
not
> the real Full RT as the name falsely suggests. Anyway, that=92s not the
> problem after I found it.
>

Hmm. No. The standard/preempt-rt/* branches in the Yocto kernel are the
full -rt patch.

>
>
> There is a patch in the kernel.org that adds the Full RT support for the
> kernel. Unfortunately it doesn=92t work right away in Yocto kernel. We us=
e
> emenlow variant of the kernel.
>
>
>
> So I compiled the system and then fixed the patch by applying it to kerne=
l
> sources in build-directory. Then added the  patch to kernel .bbappend fil=
e
> so that it would be applied during compilation time.  Or so I thought.
>
>
>
> Now when I try to compile the system do_patch =96 state for linux-yocto-r=
t =96
> fails.
>
>
>
> Log data follows:
>
> | DEBUG: Executing shell function do_patch
>
> | Deleted branch meta-temp (was 37fdb0c).
>
> | [INFO] validating against known patches  (emenlow-preempt-rt-meta)
>
> Context reduced to (2/2) to apply fragment at 385    ] (\)(88 %))
>
> error: patch failed: drivers/net/ethernet/ti/cpsw.c:374(/)(92 %)%)
>
> | error: drivers/net/ethernet/ti/cpsw.c: patch does not apply
>
> | Context reduced to (1/1) to apply fragment at 1050
>
> | error: patch failed: include/linux/preempt.h:107
>
> | error: include/linux/preempt.h: patch does not apply
>
> | error: patch failed: kernel/sched/core.c:1477
>
> | error: kernel/sched/core.c: patch does not apply
>
> | ERROR. could not update git tree
>
> | ERROR. Could not apply patches for emenlow.
>
> |        Patch failures can be resolved in the devshell (bitbake -c devsh=
ell
> linux-yocto-rt)
>
>
>
> If I=92m understanding that right it actually applied my patch before the
> emenlow-patch and that=92s why it fails.
>
>
>
> What=92s the proper way to make kernel patch that big or is there already=
 Full
> RT =96 patch for emenlow kernel for yocto? We have smaller patches that d=
on=92t
> collide with emmenlow patches and they work just fine.

You simply need to make the emenlow BSP compatible with linux-yocto-rt
and use KBRANCH=3D"standard/preempt-rt/base"

And you have the full -rt patch available.

Cheers,

Bruce

>
>
>
> Teemu Keskinarkaus
>
>
>
>
> ________________________________
>
> Actuant Corporation Email Notice
>
> This message is intended only for the use of the Addressee and may contai=
n
> information that is PRIVILEGED and/or CONFIDENTIAL.
> This email is intended only for the personal and confidential use of the
> recipient(s) named above. If the reader of this email is not an intended
> recipient, you have received this email in error and any review,
> dissemination, distribution or copying is strictly prohibited.
> If you have received this email in error, please notify the sender
> immediately by return mail and permanently delete the copy you received.
>
> Thank you.
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

