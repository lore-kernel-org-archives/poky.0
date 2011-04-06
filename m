Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B27C4C802F2
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 07:38:11 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so1933053iwr.35
	for <poky@yoctoproject.org>; Wed, 06 Apr 2011 05:38:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=F+oSXdp4evHXmL1+gy28SftcE0Ypl+ui4CcAlsz3uaY=;
	b=CYafA01bj2s5pjRB72Nf4YDZVAVAG0vWHS3QtoO8kkVi6+wklqKksMpT7dtPlGz1Ha
	2Skr8b3YyuBsrrtZeH6VQIxLTLMtoqi9yuMCvw/nHTqjfbByZKfYRP2V9V+3Y40N/yKi
	nhp8a2hr5Y7gdkccv+OGeEldzLxMd++98Gno0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=sCiFDkiNK6V6Zn7EI2Tpz4Aizg2B/DoUWgdlPg844JdNQ1FcLlOophrA3C8TdFyelZ
	IZ3F8I96yX9VfwEUqb9f7IHO3nj9dfTQa2pZWfZ5dgBI17qGU6FB1r8QiEzCBrbaNLaC
	my5b3gft6kMcDVKz3ZmOdPLCsmzMFEcQfBEik=
MIME-Version: 1.0
Received: by 10.42.149.194 with SMTP id x2mr1395662icv.388.1302093490872; Wed,
	06 Apr 2011 05:38:10 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Wed, 6 Apr 2011 05:38:10 -0700 (PDT)
In-Reply-To: <394068.13723.qm@web95713.mail.in.yahoo.com>
References: <394068.13723.qm@web95713.mail.in.yahoo.com>
Date: Wed, 6 Apr 2011 08:38:10 -0400
Message-ID: <BANLkTim_5jMeDpOyDQy-6cE3pdq3TJgEGg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Sparsh Wid hope <sparsh150847@yahoo.com>
Cc: poky <poky@yoctoproject.org>
Subject: Re: facing problem in branch validation for beagleboard
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
X-List-Received-Date: Wed, 06 Apr 2011 12:38:11 -0000
Content-Type: multipart/alternative; boundary=90e6ba2121c9fce0bb04a03f4389

--90e6ba2121c9fce0bb04a03f4389
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 6, 2011 at 6:48 AM, Sparsh Wid hope <sparsh150847@yahoo.com>wrote:

> Hi All,
>
> I'm trying to build a poky image for beagle board with linux-yocto-2.6.37
> and got following errors.
>

Hmm. This should never happen, it means that something has gone
wrong with the clone of linux-yocto-2.6.37.


>
> Unstaged changes after reset:
> M       .gitignore
> M       Documentation/hwmon/jc42
> .
> .
> .
> error: Your local changes to the following files would be overwritten by
> checkout
> .
> .
> .
> Please move or remove them before you can switch branches.
> Aborting
> error: Cannot delete the branch 'meta-temp' which you are currently on.
> error: Your local changes to the following files would be overwritten by
> checkout:
> .
> .
> .
> Please move or remove them before you can switch branches.
> Aborting
> warning: could not find ktypes/temp.scc
> ./0-meta-temp-a81c58139afe973468e690658cd5f18d.sco: line 14: temp_
>

If this happens, the system was attempting to construct an automatic
definition
and it couldn't since the tree wasn't recognizable.

Do any of the qemu targets build ? I'd like to narrow down what could be
going wrong.

Cheers,

Bruce


> 68b329da9893e34099c7d8ad5cb9c940: command not found
> ERROR. Could not locate meta series for beagleboard-standard
> ERROR: Function 'do_patch' failed (see
> /home/surya/Surya/pro/my_poky/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d_3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/temp/log.do_patch.13906
> for further information)
>
> -----------------------------------------------------------------------------------------------------------------------------------
> please help me to resolve the problem.
> Thanks in advance
> Sparsh
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee at
its end"

--90e6ba2121c9fce0bb04a03f4389
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Wed, Apr 6, 2011 at 6:48 AM, Sparsh W=
id hope <span dir=3D"ltr">&lt;<a href=3D"mailto:sparsh150847@yahoo.com">spa=
rsh150847@yahoo.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;=
">
<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td vali=
gn=3D"top" style=3D"font:inherit"><font face=3D"arial" size=3D"2">Hi All,</=
font><div style=3D"font-family:arial;font-size:10pt"><br></div><div style=
=3D"font-family:arial;font-size:10pt">
I&#39;m trying to build a poky image for beagle board with linux-yocto-2.6.=
37 and got following errors.</div></td></tr></tbody></table></blockquote><d=
iv><br></div><div>Hmm. This should never happen, it means that something ha=
s gone</div>
<div>wrong with the clone of linux-yocto-2.6.37.=A0</div><div>=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex;"><table cellspacing=3D"0" cellpadding=3D"0" bord=
er=3D"0"><tbody><tr>
<td valign=3D"top" style=3D"font:inherit"><div style=3D"font-family:arial;f=
ont-size:10pt"><br></div><div style=3D"font-family:arial;font-size:10pt"><d=
iv>Unstaged changes after reset:</div><div>M =A0 =A0 =A0 .gitignore</div><d=
iv>M =A0 =A0 =A0 Documentation/hwmon/jc42</div>
</div><div style=3D"font-family:arial;font-size:10pt">.</div><div style=3D"=
font-family:arial;font-size:10pt">.</div><div style=3D"font-family:arial;fo=
nt-size:10pt">.</div><div><font face=3D"arial" size=3D"2">error: Your local=
 changes to the following files would be overwritten by
 checkout</font></div><div><font face=3D"arial" size=3D"2">.</font></div><d=
iv><font face=3D"arial" size=3D"2">.</font></div><div><font face=3D"arial" =
size=3D"2">.</font></div><div><font face=3D"arial" size=3D"2"><div>Please m=
ove or remove them before you can switch branches.</div>
<div>Aborting</div><div>error: Cannot delete the branch &#39;meta-temp&#39;=
 which you are currently on.</div><div>error: Your local changes to the fol=
lowing files would be overwritten by checkout:</div><div>.</div><div>.</div=
>
<div>.</div><div><div>Please move or remove them before you can switch bran=
ches.</div><div>Aborting</div><div>warning: could not find ktypes/temp.scc<=
/div><div>./0-meta-temp-a81c58139afe973468e690658cd5f18d.sco: line 14: temp=
_</div>
</div></font></div></td></tr></tbody></table></blockquote><div><br></div><d=
iv>If this happens, the system was attempting to construct an automatic def=
inition=A0</div><div>and it couldn&#39;t since the tree wasn&#39;t recogniz=
able.</div>
<div><br></div><div>Do any of the qemu targets build ? I&#39;d like to narr=
ow down what could be</div><div>going wrong.</div><div><br></div><div>Cheer=
s,</div><div><br></div><div>Bruce</div><div>=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex;">
<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td vali=
gn=3D"top" style=3D"font:inherit"><div><font face=3D"arial" size=3D"2"><div=
><div>68b329da9893e34099c7d8ad5cb9c940: command not found</div><div>ERROR. =
Could not locate meta series for beagleboard-standard</div>
<div>ERROR: Function &#39;do_patch&#39;
 failed (see /home/surya/Surya/pro/my_poky/poky/build/tmp/work/beagleboard-=
poky-linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef977b=
b2dd5f6d_3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/temp/log.do_patch.1=
3906 for further information)</div>
</div><div>----------------------------------------------------------------=
-------------------------------------------------------------------</div><d=
iv>please help me to resolve the problem.</div><div>Thanks in advance</div>
<div>Sparsh</div></font></div></td></tr></tbody></table><br>_______________=
________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br>&quot;Thou shalt no=
t follow the NULL pointer, for chaos and madness await thee at its end&quot=
;<br>

--90e6ba2121c9fce0bb04a03f4389--
