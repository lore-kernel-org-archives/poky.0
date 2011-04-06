Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55D7B4C80044
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 13:19:11 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iym1 with SMTP id 1so2362949iym.35
	for <poky@yoctoproject.org>; Wed, 06 Apr 2011 11:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=wY0e3ZaSeMX0+ziy1i+jrcC3wnAtiZqFVCX9bx+wC1Q=;
	b=HH3Ry0upe6spuPK/UtV3v4U6CcX/5IJfWvh7zVArukNG8u8gEbqh1UNe4V9AFEBpLV
	OF0qT1P7G/SWlqFgxn2dNiq2vFoZU//AfNj8Wq+LJqMsWiau7kQVFb4+zBjt3C9Tpr5V
	yi3a86a8rtJg4VF6jqbsmli2d0hplv4JJXHWs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=ItIyJMJNIdKJLelesCCP3zqbES37AZ0vdrK4DhQa/bketv67D0o/S60A1mKyeWVf+W
	p4mKkRIFdcd+4ejiAx2iItzWLc9rhmM2RlQHRQt0mS3tuivHIj1i3ZRatRybglaAeZBn
	+3F8KeEkLfc9wpKaCSV0dW+XYCkEhWqiGYxtU=
MIME-Version: 1.0
Received: by 10.231.186.85 with SMTP id cr21mr1254823ibb.164.1302113950440;
	Wed, 06 Apr 2011 11:19:10 -0700 (PDT)
Received: by 10.231.155.138 with HTTP; Wed, 6 Apr 2011 11:19:10 -0700 (PDT)
In-Reply-To: <670496.25176.qm@web95704.mail.in.yahoo.com>
References: <670496.25176.qm@web95704.mail.in.yahoo.com>
Date: Wed, 6 Apr 2011 14:19:10 -0400
Message-ID: <BANLkTimbfXrXrEujvgNRdakcuynmgUNcAw@mail.gmail.com>
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
X-List-Received-Date: Wed, 06 Apr 2011 18:19:11 -0000
Content-Type: multipart/alternative; boundary=0016369fa3c8791edb04a04407b3

--0016369fa3c8791edb04a04407b3
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 6, 2011 at 9:25 AM, Sparsh Wid hope <sparsh150847@yahoo.com>wrote:

>  Thanks for your response but I don't think any package is going to build.
> I'm sending you whole message on my console after bitbake. Please check it
> and guide me to solve the problem.
> Thanks
>

Are you referring to this warning ?:

WARNING: No bb files matched BBFILE_PATTERN_yocto
'^/home/surya/Surya/pro/my_poky/poky/meta-yocto/'#######| ETA:  00:00:00

I see it here as well, but it won't impact the board. My beagleboard build
then
continues and works fine.

What are the top commits in your linux-yocto-2.6.37 repository on the
beagleboard
BSP branch ? (find it in build/downloads/git2/).

Bruce


>
> --- On *Wed, 6/4/11, Bruce Ashfield <bruce.ashfield@gmail.com>* wrote:
>
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
> Subject: Re: [poky] facing problem in branch validation for beagleboard
> To: "Sparsh Wid hope" <sparsh150847@yahoo.com>
> Cc: "poky" <poky@yoctoproject.org>
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


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee at
its end"

--0016369fa3c8791edb04a04407b3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Wed, Apr 6, 2011 at 9:25 AM, Sparsh Wid hope =
<span dir=3D"ltr">&lt;<a href=3D"mailto:sparsh150847@yahoo.com" target=3D"_=
blank">sparsh150847@yahoo.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">

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
div>Bruce</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><table cellspac=
ing=3D"0" cellpadding=3D"0" border=3D"0">
<tbody><tr><td valign=3D"top" style=3D"font:inherit">
<div><table cellspacing=3D"0" cellpadding=3D"0" border=3D"0"><tbody><tr><td=
 style=3D"font:inherit;font-family:arial;font-size:10pt"><div><br>--- On <b=
>Wed, 6/4/11, Bruce Ashfield <i>&lt;<a href=3D"mailto:bruce.ashfield@gmail.=
com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;</i></b> wrote:<br>

<blockquote style=3D"border-left:2px solid rgb(16, 16, 255);margin-left:5px=
;padding-left:5px"><br>From: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ash=
field@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;<br>Subj=
ect: Re: [poky] facing problem in branch validation for beagleboard<br>

To: &quot;Sparsh Wid hope&quot; &lt;<a href=3D"mailto:sparsh150847@yahoo.co=
m" target=3D"_blank">sparsh150847@yahoo.com</a>&gt;<br>Cc: &quot;poky&quot;=
 &lt;<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a>&gt;<br>

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



--0016369fa3c8791edb04a04407b3--
