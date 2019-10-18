Return-Path: <ashish.emailaddress@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94B0CE00DA9; Fri, 18 Oct 2019 00:06:01 -0700 (PDT)
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
	*      [209.85.166.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com
	[209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3AB5E00DA4
	for <poky@yoctoproject.org>; Fri, 18 Oct 2019 00:06:00 -0700 (PDT)
Received: by mail-io1-f41.google.com with SMTP id t18so2092738iog.2
	for <poky@yoctoproject.org>; Fri, 18 Oct 2019 00:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=s+NbzBq8ojN+0v0XGVSSvN4I4FcVdNZC1YY/o/MdTgc=;
	b=lgSuilKE0cZtAtU26R57pDMB/LgmEDFYSJoq3woxRT0kyvqG58KnuEXYTgfPJ9HkNS
	TlIwpdOqjOxc9zEUaDV5+7l6SHuatmatQ0Is0NO9aRPeiFYla08HR5gEehQKVQP9jJ0/
	pemgd+dh5RsRekNq10Hmy4fPyVx+j5X/ODfEM91XNOHCrzoIc2u4RCI72Gy96/tdQhtI
	KY0UAARxJReXeL1ojUfl/4mOw0f/8sAweLZ35mce/S7hRNYfajVyUMxxxB0Nj9LhehWh
	u/rGyhtlyvpLCBHKblixbys/3IsgP2gtk/AEjPcDghCMKnNlYPFm3xt0YOotBMfW7o/u
	kskw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=s+NbzBq8ojN+0v0XGVSSvN4I4FcVdNZC1YY/o/MdTgc=;
	b=F0lnIciqeg0l+I/SoLPfz9kJKok7NSePdtyhIrIYCLtlTw9rxcvDz4A3aELgi8fRSL
	tKAsZYX7R4TYwezW+cVMHmHBXnqbIjXADIwg9AOQ5/uBXhPnsRdhfBmCxOLUtXGRfvJk
	JtyeDpIj88X03gKwJteEXWbQgE6UIoCaeNUsDOPpnu6kybX/5N7CNZ8QPfr2Koav5xro
	LN6Wfq49dnPLe+y6MuSeGTg7V0g9/Sj/yzQBFh56sp/AynuXyD3v/FIlGBjKommelccp
	9exvxoufr+stXUfAtQLrRSUYFSvFdBs9l0CJ2lVT7B50GLEB11fMNJHn3ZNVPtFEhRYh
	v5QQ==
X-Gm-Message-State: APjAAAW+w2BpO0jzpiy2zUM3XEy0NAT+IzXOPNVqWsnuKZzVmpZxXFmJ
	z4WgLDGx4kZoyS8YSfZRif2wv+Qs2yuXNDB+wBo=
X-Google-Smtp-Source: APXvYqyIO8xY40Iyad+u/3LW9ZPmDaLzEAk6rRMzplm6xSXWOU+Wu0Q3vRRJDXua1q8DWvIuIdv2fOC1QnRmCHq5S7k=
X-Received: by 2002:a5d:8242:: with SMTP id n2mr7440952ioo.139.1571382360116; 
	Fri, 18 Oct 2019 00:06:00 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAWbAE3sO=mNCsELBcBf7PKi8YAZfAtKbuX2JAD_KSO3Sg@mail.gmail.com>
	<CADkTA4MF_Gf2hXL2nxj5z2UEudoJi+Pcwa0TEC1ziTXpY4LiKA@mail.gmail.com>
In-Reply-To: <CADkTA4MF_Gf2hXL2nxj5z2UEudoJi+Pcwa0TEC1ziTXpY4LiKA@mail.gmail.com>
From: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Date: Fri, 18 Oct 2019 12:35:48 +0530
Message-ID: <CAOe0dAXr187LUXECZZYANtex2d=ecAa1uBTLZ33gSTHZxwOy4A@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [ Error ] Could not locate BSP definition witch custom machine.conf
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
X-List-Received-Date: Fri, 18 Oct 2019 07:06:01 -0000
Content-Type: multipart/alternative; boundary="0000000000006192eb059529f712"

--0000000000006192eb059529f712
Content-Type: text/plain; charset="UTF-8"

Hi Bruce ,

Can you please let me know which all file's you meant by  " BSP definition
file"
I think i am missing some standard aspect here.
I was considering  machine.conf file as BSP definition file .

Going through the thread you asked , seems like i have to read a few times
to get clear understanding of discussion there due my limited knowledge as
of now.

Thanks a lot for your valuable input , error seems to be resolved .

Thanks
Ashish






On Fri, Oct 18, 2019 at 1:58 AM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Thu, Oct 17, 2019 at 1:00 PM AshishKumar Mishra
> <ashish.emailaddress@gmail.com> wrote:
> >
> > Hi Team ,
> >
> > (1) I am trying to understand yocto BSP creation for which i create an
> >      machine.conf ( used qemux86.conf )
> > PROMPT : ls conf/machine/armour-whiplash.conf
> > conf/machine/armour-whiplash.conf
> >
> > (2) I made the changes in linux recipe file on lines of qemux86
> > PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep armour*
> > KBRANCH_armour-whiplash  ?= "v5.0/standard/base"
> > SRCREV_machine_armour-whiplash ?=
> "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
> > COMPATIBLE_MACHINE =
> "qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
> > KERNEL_FEATURES_append_armour-whiplash=" cfg/sound.scc
> cfg/paravirt_kvm.scc"
> >
> > PROMPT : cat recipes-kernel/linux/linux-yocto_5.0.bb | grep qemux86
> > KBRANCH_qemux86  ?= "v5.0/standard/base"
> > SRCREV_machine_qemux86 ?= "14b6c1fc020fa357245e9ac9c6c69d253bc7ce30"
> > COMPATIBLE_MACHINE =
> "qemuarm|qemuarmv5|qemuarm64|qemux86|qemuppc|qemumips|qemumips64|qemux86-64|armour-whiplash"
> > KERNEL_FEATURES_append_qemux86=" cfg/sound.scc cfg/paravirt_kvm.scc"
> >
> >
> > (3) When i compile the core-image i am getting below mentioned error
> > ERROR: linux-yocto-5.0.7+gitAUTOINC+2d838e11b0_14b6c1fc02-r0
> do_kernel_metadata: Could not locate BSP definition for
> armour-whiplash/standard and no defconfig was provided
> >
>
> You need to have a BSP definition file, which tells the kernel meta
> data and configuration phases how to actually configure the board from
> the collection of fragments.
>
> That error is telling you that you don't have a BSP definition file
> that can be located by the tools.
>
> If you want to have your own machine name, but otherwise re-use the
> qemux86 configuration, you can put: KMACHINE_armour-whiplash =
> "qemux86", and the tools will use that as the starting point for
> configuration.
>
> If you need to define your own BSP definition file, search for the
> recent thread with this subject: "[yocto] Kernel patches pulled from
> BSP definition file are not applied", and you'll see an example of how
> to define one in your own layer.
>
> Bruce
>
> > Can team please provide any pointers on same as i checked that my layer
> has machine.conf (armour-whiplash.conf)
> > but not sure why yocto gives error of no BSP
> >
> > Thanks
> > Ashish
> >
> > --
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

--0000000000006192eb059529f712
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Bruce , <br></div><div><br></div><div>Can you plea=
se let me know which all file&#39;s you meant by=C2=A0 &quot; BSP definitio=
n file&quot;</div><div>I think i am missing some standard aspect here.</div=
><div>I was considering=C2=A0 machine.conf file as BSP definition file . <b=
r></div><div><br></div><div>Going through the thread you asked , seems like=
 i have to read a few times <br></div><div>to get clear understanding of di=
scussion there due my limited knowledge as of now.</div><div><br></div><div=
>Thanks a lot for your valuable input , error seems to be resolved . <br></=
div><div><br></div><div>Thanks <br></div><div>Ashish <br></div><div><br></d=
iv><div><br></div><div><br></div><div><br></div><div> <br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct=
 18, 2019 at 1:58 AM Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gm=
ail.com">bruce.ashfield@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Thu, Oct 17, 2019 at 1:00 PM AshishKuma=
r Mishra<br>
&lt;<a href=3D"mailto:ashish.emailaddress@gmail.com" target=3D"_blank">ashi=
sh.emailaddress@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Team ,<br>
&gt;<br>
&gt; (1) I am trying to understand yocto BSP creation for which i create an=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 machine.conf ( used qemux86.conf )<br>
&gt; PROMPT : ls conf/machine/armour-whiplash.conf<br>
&gt; conf/machine/armour-whiplash.conf<br>
&gt;<br>
&gt; (2) I made the changes in linux recipe file on lines of qemux86<br>
&gt; PROMPT : cat recipes-kernel/linux/<a href=3D"http://linux-yocto_5.0.bb=
" rel=3D"noreferrer" target=3D"_blank">linux-yocto_5.0.bb</a> | grep armour=
*<br>
&gt; KBRANCH_armour-whiplash=C2=A0 ?=3D &quot;v5.0/standard/base&quot;<br>
&gt; SRCREV_machine_armour-whiplash ?=3D &quot;14b6c1fc020fa357245e9ac9c6c6=
9d253bc7ce30&quot;<br>
&gt; COMPATIBLE_MACHINE =3D &quot;qemuarm|qemuarmv5|qemuarm64|qemux86|qemup=
pc|qemumips|qemumips64|qemux86-64|armour-whiplash&quot;<br>
&gt; KERNEL_FEATURES_append_armour-whiplash=3D&quot; cfg/sound.scc cfg/para=
virt_kvm.scc&quot;<br>
&gt;<br>
&gt; PROMPT : cat recipes-kernel/linux/<a href=3D"http://linux-yocto_5.0.bb=
" rel=3D"noreferrer" target=3D"_blank">linux-yocto_5.0.bb</a> | grep qemux8=
6<br>
&gt; KBRANCH_qemux86=C2=A0 ?=3D &quot;v5.0/standard/base&quot;<br>
&gt; SRCREV_machine_qemux86 ?=3D &quot;14b6c1fc020fa357245e9ac9c6c69d253bc7=
ce30&quot;<br>
&gt; COMPATIBLE_MACHINE =3D &quot;qemuarm|qemuarmv5|qemuarm64|qemux86|qemup=
pc|qemumips|qemumips64|qemux86-64|armour-whiplash&quot;<br>
&gt; KERNEL_FEATURES_append_qemux86=3D&quot; cfg/sound.scc cfg/paravirt_kvm=
.scc&quot;<br>
&gt;<br>
&gt;<br>
&gt; (3) When i compile the core-image i am getting below mentioned error<b=
r>
&gt; ERROR: linux-yocto-5.0.7+gitAUTOINC+2d838e11b0_14b6c1fc02-r0 do_kernel=
_metadata: Could not locate BSP definition for armour-whiplash/standard and=
 no defconfig was provided<br>
&gt;<br>
<br>
You need to have a BSP definition file, which tells the kernel meta<br>
data and configuration phases how to actually configure the board from<br>
the collection of fragments.<br>
<br>
That error is telling you that you don&#39;t have a BSP definition file<br>
that can be located by the tools.<br>
<br>
If you want to have your own machine name, but otherwise re-use the<br>
qemux86 configuration, you can put: KMACHINE_armour-whiplash =3D<br>
&quot;qemux86&quot;, and the tools will use that as the starting point for<=
br>
configuration.<br>
<br>
If you need to define your own BSP definition file, search for the<br>
recent thread with this subject: &quot;[yocto] Kernel patches pulled from<b=
r>
BSP definition file are not applied&quot;, and you&#39;ll see an example of=
 how<br>
to define one in your own layer.<br>
<br>
Bruce<br>
<br>
&gt; Can team please provide any pointers on same as i checked that my laye=
r has machine.conf (armour-whiplash.conf)<br>
&gt; but not sure why yocto gives error of no BSP<br>
&gt;<br>
&gt; Thanks<br>
&gt; Ashish<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"norefe=
rrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br=
>
<br>
<br>
<br>
--<br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div>

--0000000000006192eb059529f712--
