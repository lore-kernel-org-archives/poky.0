Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 478CF4C802F2
	for <poky@yoctoproject.org>; Thu,  7 Apr 2011 09:03:38 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwr19 with SMTP id 19so3559142iwr.35
	for <poky@yoctoproject.org>; Thu, 07 Apr 2011 07:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=L02zoQOfNxiLOFv2A7/ybqTrtdVcHo4KjT/tXstZFws=;
	b=YKwI8MOnLVIxmdmjZS/DkjSt95k/gvbFB0P0ry0nJeRIF6+W3VdgzJmzig0S9sRd6v
	95u3i9ErVfXx7J5Eu5pjmIzSvQ1U2ds287IDvSqYcEUiojObCVNmBA7CEhbN4UIhSx37
	rhv4rQKNtvbj24YQjfuyiwAZEU/HdoZ5zGb4E=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=BsfD8jswCPCu0CGtTulwwWSmgLHrW97N1rVOUlJt9z12CxpwKGANwFwTPjt7n6KxaE
	9RDGt4JKzAD7Wt4eLjbYcrmzPpwkYkq2WTKRTtbCbKcwyAOwuT27UFGApWes1ODrtgjH
	UG2Onno//c8FbEKqB6mQRwApm4FUgeGxzlvP0=
MIME-Version: 1.0
Received: by 10.43.59.12 with SMTP id wm12mr1500484icb.321.1302185017123; Thu,
	07 Apr 2011 07:03:37 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Thu, 7 Apr 2011 07:03:37 -0700 (PDT)
In-Reply-To: <496032.60407.qm@web95705.mail.in.yahoo.com>
References: <BANLkTimbfXrXrEujvgNRdakcuynmgUNcAw@mail.gmail.com>
	<496032.60407.qm@web95705.mail.in.yahoo.com>
Date: Thu, 7 Apr 2011 10:03:37 -0400
Message-ID: <BANLkTikP076LqCczqFcPRiWuvEajB3dnvA@mail.gmail.com>
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
X-List-Received-Date: Thu, 07 Apr 2011 14:03:38 -0000
Content-Type: multipart/alternative; boundary=bcaec51961a560a43704a05493b2

--bcaec51961a560a43704a05493b2
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Apr 7, 2011 at 1:48 AM, Sparsh Wid hope <sparsh150847@yahoo.com>wrote:

> Hi All,
>
> Hey Bruce thanks for your kind guidance, it helps me to explore the things.
> I tried to get commit as you suggested:
> surya@spectracore-Vostro-220s-Series:~/Surya/pro/my_poky/poky/build/downloads/git2/git.pokylinux.org.linux-yocto-2.6.37$
> git checkout -b beagle remotes/origin/yocto/standard/beagleboard
>
> fatal: This operation must be run in a work tree
>

Ah yes, sorry about that. I was thinking of just getting the output
via: git whatchanged yocto/standard/beagleboard and git whatchanged meta
in that same tree. It really sounds like the kernel you are being sent via
the fetch phase is different from what you should be getting.


>
> then I tried by removing my kernel:
> rm -r
> home/Surya/pro/my_poky/poky/build/tmp/work/beagleboard-poky-linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef977bb2dd5f6d_6+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/
> linux
> as I notice some untracked files in git status, but it didn't work.
> The commit of my linux-yocto-2.6.37 is:
>
> commit 3c0eee3fe6a3a1c745379547c7e7c904aa64f6d5
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Tue Jan 4 16:50:19 2011 -0800
>
>     Linux 2.6.37
>
> ------------------------------------------------------------------------------------------------------------------------------------
> I hope this information will help you to understand my problem.
>

We are getting there. I'm still not able to see what is the difference
though. Can you retry with the commands I have above ?

Bruce


> Thanks
> --- On *Wed, 6/4/11, Bruce Ashfield <bruce.ashfield@gmail.com>* wrote:
>
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
> Subject: Re: [poky] facing problem in branch validation for beagleboard
> To: "Sparsh Wid hope" <sparsh150847@yahoo.com>
> Cc: "poky" <poky@yoctoproject.org>
> Date: Wednesday, 6 April, 2011, 6:19 PM
>
>
> On Wed, Apr 6, 2011 at 9:25 AM, Sparsh Wid hope <sparsh150847@yahoo.com<http://mc/compose?to=sparsh150847@yahoo.com>
> > wrote:
>
>  Thanks for your response but I don't think any package is going to build.
> I'm sending you whole message on my console after bitbake. Please check it
> and guide me to solve the problem.
> Thanks
>
>
> Are you referring to this warning ?:
>
> WARNING: No bb files matched BBFILE_PATTERN_yocto
> '^/home/surya/Surya/pro/my_poky/poky/meta-yocto/'#######| ETA:  00:00:00
>
> I see it here as well, but it won't impact the board. My beagleboard build
> then
> continues and works fine.
>
> What are the top commits in your linux-yocto-2.6.37 repository on the
> beagleboard
> BSP branch ? (find it in build/downloads/git2/).
>
> Bruce
>
>
>
> --- On *Wed, 6/4/11, Bruce Ashfield <bruce.ashfield@gmail.com<http://mc/compose?to=bruce.ashfield@gmail.com>
> >* wrote:
>
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com<http://mc/compose?to=bruce.ashfield@gmail.com>
> >
> Subject: Re: [poky] facing problem in branch validation for beagleboard
> To: "Sparsh Wid hope" <sparsh150847@yahoo.com<http://mc/compose?to=sparsh150847@yahoo.com>
> >
> Cc: "poky" <poky@yoctoproject.org<http://mc/compose?to=poky@yoctoproject.org>
> >
> Date: Wednesday, 6 April, 2011, 12:38 PM
>
>
>
>
> On Wed, Apr 6, 2011 at 6:48 AM, Sparsh Wid hope <sparsh150847@yahoo.com>wrote:
>
> Hi All,
>
> I'm trying to build a poky image for beagle board with linux-yocto-2.6.37
> and got following errors.
>
>
> Hmm. This should never happen, it means that something has gone
> wrong with the clone of linux-yocto-2.6.37.
>
>
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
>
> If this happens, the system was attempting to construct an automatic
> definition
> and it couldn't since the tree wasn't recognizable.
>
> Do any of the qemu targets build ? I'd like to narrow down what could be
> going wrong.
>
> Cheers,
>
> Bruce
>
>
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
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"
>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
> at its end"
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee at
its end"

--bcaec51961a560a43704a05493b2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Apr 7, 2011 at 1:48 AM, Sparsh W=
id hope <span dir=3D"ltr">&lt;<a href=3D"mailto:sparsh150847@yahoo.com">spa=
rsh150847@yahoo.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quo=
te" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;=
">
<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td vali=
gn=3D"top" style=3D"font:inherit"><font face=3D"arial" size=3D"2">Hi All,</=
font><div style=3D"font-family:arial;font-size:10pt"><br></div><div style=
=3D"font-family:arial;font-size:10pt">
Hey Bruce thanks for your kind guidance, it helps me to explore the things.=
 I tried to get commit as you suggested:</div><div style=3D"font-family:ari=
al;font-size:10pt"><div>surya@spectracore-Vostro-220s-Series:~/Surya/pro/my=
_poky/poky/build/downloads/git2/git.pokylinux.org.linux-yocto-2.6.37$ git c=
heckout -b beagle remotes/origin/yocto/standard/beagleboard</div>
<div><br></div><div><span style=3D"background-color:rgb(128, 255, 0)">fatal=
: This operation must be run in a work tree</span></div></div></td></tr></t=
body></table></blockquote><div><br></div><div>Ah yes, sorry about that. I w=
as thinking of just getting the output</div>
<div>via: git whatchanged yocto/standard/beagleboard and=A0git whatchanged =
meta=A0</div><div>in that same tree. It really sounds like the kernel you a=
re being sent via</div><div>the fetch phase is different from what you shou=
ld be getting.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex;"><table cellspacing=3D"0" cell=
padding=3D"0" border=3D"0"><tbody><tr><td valign=3D"top" style=3D"font:inhe=
rit"><div style=3D"font-family:arial;font-size:10pt">
<div><span style=3D"background-color:rgb(128, 255, 0)"><br></span></div><di=
v><span style=3D"background-color:rgb(255, 255, 255)">then I tried by remov=
ing my kernel:</span></div><div><span style=3D"background-color:rgb(255, 25=
5, 255)">rm -r home/Surya/pro/my_poky/poky/build/tmp/work/beagleboard-poky-=
linux-gnueabi/linux-yocto-2.6.37+git3+17e49db8624324d090dd5aaa18ef977bb2dd5=
f6d_6+17e49db8624324d090dd5aaa18ef977bb2dd5f6d-r16/ linux</span></div>
as I notice some untracked files in git status, but it didn&#39;t work.</di=
v><div style=3D"font-family:arial;font-size:10pt">The commit of my linux-yo=
cto-2.6.37 is:</div><div><div><font face=3D"arial" size=3D"2"><br></font></=
div>
<div><font face=3D"arial" size=3D"2" style=3D"background-color:rgb(128, 255=
, 0)">commit 3c0eee3fe6a3a1c745379547c7e7c904aa64f6d5</font></div><div><fon=
t face=3D"arial" size=3D"2">Author: Linus Torvalds &lt;<a href=3D"mailto:to=
rvalds@linux-foundation.org" target=3D"_blank">torvalds@linux-foundation.or=
g</a>&gt;</font></div>
<div><font face=3D"arial" size=3D"2">Date: =A0
 Tue Jan 4 16:50:19 2011 -0800</font></div><div><font face=3D"arial" size=
=3D"2"><br></font></div><div><font face=3D"arial" size=3D"2">=A0=A0 =A0Linu=
x 2.6.37</font></div><div style=3D"font-family:arial;font-size:10pt">------=
---------------------------------------------------------------------------=
---------------------------------------------------</div>
</div><div style=3D"font-family:arial;font-size:10pt">I hope this informati=
on will help you to understand my problem.</div></td></tr></tbody></table><=
/blockquote><div><br></div><div>We are getting there. I&#39;m still not abl=
e to see what is the difference=A0</div>
<div>though. Can you retry with the commands I have above ?</div><div><br><=
/div><div>Bruce</div><div>=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;"><table =
cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
<tbody><tr><td valign=3D"top" style=3D"font:inherit"><div style=3D"font-fam=
ily:arial;font-size:10pt">Thanks=A0</div><div style=3D"font-family:arial;fo=
nt-size:10pt"><div class=3D"im">--- On <b>Wed, 6/4/11, Bruce Ashfield <i>&l=
t;<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfi=
eld@gmail.com</a>&gt;</i></b> wrote:<br>
</div><blockquote style=3D"border-left:2px solid rgb(16, 16, 255);margin-le=
ft:5px;padding-left:5px"><div class=3D"im"><br>From: Bruce Ashfield &lt;<a =
href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@g=
mail.com</a>&gt;<br>
Subject: Re: [poky] facing problem in branch validation for
 beagleboard<br>To: &quot;Sparsh Wid hope&quot; &lt;<a href=3D"mailto:spars=
h150847@yahoo.com" target=3D"_blank">sparsh150847@yahoo.com</a>&gt;<br>Cc: =
&quot;poky&quot; &lt;<a href=3D"mailto:poky@yoctoproject.org" target=3D"_bl=
ank">poky@yoctoproject.org</a>&gt;<br>
</div>Date: Wednesday, 6 April, 2011, 6:19 PM<div><div></div><div class=3D"=
h5"><br><br><div><div>On Wed, Apr 6, 2011 at 9:25 AM, Sparsh Wid hope <span=
 dir=3D"ltr">&lt;<a rel=3D"nofollow" href=3D"http://mc/compose?to=3Dsparsh1=
50847@yahoo.com" target=3D"_blank">sparsh150847@yahoo.com</a>&gt;</span> wr=
ote:<br>
<blockquote style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">

<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td vali=
gn=3D"top" style=3D"font:inherit"><div><table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0"><tbody><tr><td style=3D"font:inherit;font-family:arial;=
font-size:10pt">


Thanks for your response but I don&#39;t think any package is going to buil=
d. I&#39;m sending you whole message on my console after bitbake. Please ch=
eck it and guide me to solve the problem.<div>Thanks<br></div></td></tr>


</tbody></table></div></td></tr></tbody></table></blockquote><div><br></div=
><div>Are you referring to this warning ?:</div><div><br></div><div><div>WA=
RNING: No bb files matched BBFILE_PATTERN_yocto &#39;^/home/surya/Surya/pro=
/my_poky/poky/meta-yocto/&#39;#######| ETA: =A000:00:00</div>


</div><div><br></div><div>I see it here as well, but it won&#39;t impact th=
e board. My beagleboard build then</div><div>continues and works fine.=A0</=
div><div><br></div><div>What are the top commits in your linux-yocto-2.6.37=
 repository on the beagleboard</div>

<div>BSP branch ? (find it in build/downloads/git2/).</div><div><br></div><=
div>Bruce</div><div>=A0</div><blockquote style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><table cellspacing=3D"0" cellpadding=
=3D"0" border=3D"0">

<tbody><tr><td valign=3D"top" style=3D"font:inherit">
<div><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td=
 style=3D"font:inherit;font-family:arial;font-size:10pt"><div><br>--- On <b=
>Wed, 6/4/11, Bruce Ashfield <i>&lt;<a rel=3D"nofollow" href=3D"http://mc/c=
ompose?to=3Dbruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmai=
l.com</a>&gt;</i></b> wrote:<br>


<blockquote style=3D"border-left:2px solid rgb(16, 16, 255);margin-left:5px=
;padding-left:5px"><br>From: Bruce Ashfield &lt;<a rel=3D"nofollow" href=3D=
"http://mc/compose?to=3Dbruce.ashfield@gmail.com" target=3D"_blank">bruce.a=
shfield@gmail.com</a>&gt;<br>
Subject: Re: [poky] facing problem in branch validation for beagleboard<br>

To: &quot;Sparsh Wid hope&quot; &lt;<a rel=3D"nofollow" href=3D"http://mc/c=
ompose?to=3Dsparsh150847@yahoo.com" target=3D"_blank">sparsh150847@yahoo.co=
m</a>&gt;<br>Cc: &quot;poky&quot; &lt;<a rel=3D"nofollow" href=3D"http://mc=
/compose?to=3Dpoky@yoctoproject.org" target=3D"_blank">poky@yoctoproject.or=
g</a>&gt;<br>


Date: Wednesday, 6 April,
 2011, 12:38 PM<div><div></div><div><br><br><div><br><br><div>On Wed, Apr 6=
, 2011 at 6:48 AM, Sparsh Wid hope <span dir=3D"ltr">&lt;<a rel=3D"nofollow=
">sparsh150847@yahoo.com</a>&gt;</span> wrote:<br><blockquote style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



<table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td vali=
gn=3D"top" style=3D"font:inherit"><font face=3D"arial" size=3D"2">Hi All,</=
font><div style=3D"font-family:arial;font-size:10pt"><br></div><div style=
=3D"font-family:arial;font-size:10pt">



I&#39;m trying to build a poky image for beagle board with linux-yocto-2.6.=
37 and got following errors.</div></td></tr></tbody></table></blockquote><d=
iv><br></div><div>Hmm. This should never happen, it means that something ha=
s gone</div>



<div>wrong with the clone of linux-yocto-2.6.37.=A0</div><div>=A0</div><blo=
ckquote style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr>
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
s,</div><div><br></div><div>Bruce</div><div>=A0</div><blockquote style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">



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
<a rel=3D"nofollow">poky@yoctoproject.org</a><br>
<a rel=3D"nofollow" href=3D"https://lists.yoctoproject.org/listinfo/poky" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br>&quot;Thou shalt no=
t follow the NULL pointer, for chaos and madness await thee at its end&quot=
;<br>
</div></div></div></blockquote></div></td></tr></tbody></table></div></td><=
/tr></tbody></table></blockquote></div><br><br clear=3D"all"><br>-- <br>&qu=
ot;Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at its end&quot;<br>



</div></div></div></blockquote></div></td></tr></tbody></table></blockquote=
></div><br><br clear=3D"all"><br>-- <br>&quot;Thou shalt not follow the NUL=
L pointer, for chaos and madness await thee at its end&quot;<br>

--bcaec51961a560a43704a05493b2--
