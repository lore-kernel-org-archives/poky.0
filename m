Return-Path: <cahoshing@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2CB074C80861
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 23:39:36 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pvg6 with SMTP id 6so354270pvg.35
	for <poky@yoctoproject.org>; Thu, 03 Mar 2011 21:39:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=68qDz7u5jkqpLv4ZO3U2DTIz29RRgTJz0FYpoh2yXb0=;
	b=NJCp6Uy97hoi7K29K7kZ+UG4vT5vBPowsaJfWyQ4vmhCwjI32EgF+csb/2QjVh1g4S
	ma3+2X3jmPjiqisdgmXPZOI9fTGq92yxOeOS1y5MGx6zxL/O3JZBhDGwDcPmXVFr/PBG
	Redsm/h9P2PI3HhbWEu8fVmqMnViQwCIisHcA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=lB5IuaOz3yAoBwmCUM78GO0vnTORvfWHFgd4rESvS3sE36fK6E2k6pqIXnRnb0XVSu
	xHhMk4ccLdqCz0Cka6FrWWY5TcGY7Fv3n7fCy3iMju30xGMPgBkJX3VrNv+Il5I4NfAM
	YDcet22aUnmtzmS2BdcGfWbvD0Bfi1daoZlZY=
MIME-Version: 1.0
Received: by 10.142.7.4 with SMTP id 4mr190124wfg.386.1299216574865; Thu, 03
	Mar 2011 21:29:34 -0800 (PST)
Received: by 10.142.106.2 with HTTP; Thu, 3 Mar 2011 21:29:34 -0800 (PST)
In-Reply-To: <AANLkTiknUiwRv58XJBQZPFnXgKeybyseBEGycDOTHsjT@mail.gmail.com>
References: <AANLkTim7ObgjarV3z+nOuT3=0jk=u64Lkv3BVLBC-zSk@mail.gmail.com>
	<4D6FC7BD.2070806@windriver.com>
	<AANLkTiknUiwRv58XJBQZPFnXgKeybyseBEGycDOTHsjT@mail.gmail.com>
Date: Fri, 4 Mar 2011 10:59:34 +0530
Message-ID: <AANLkTinRvFiPXrc+qw9=NDc+DHq2K8fV9zWU2qL+vSFd@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: mark.hatle@windriver.com, poky@yoctoproject.org
Subject: Re: Error when polkit library is pulled
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
X-List-Received-Date: Fri, 04 Mar 2011 05:39:36 -0000
Content-Type: multipart/alternative; boundary=00504502b08e6e603b049da16e47

--00504502b08e6e603b049da16e47
Content-Type: text/plain; charset=ISO-8859-1

Hi,

(regarding the polkit library which when pulled gives error)

 I am using ubuntu 10.10 on 64 bit machine and having ext3/ext4 filesystem

-Chinmaya

On Fri, Mar 4, 2011 at 10:48 AM, v sailaja <vsailub4u@gmail.com> wrote:

>
>
> ---------- Forwarded message ----------
> From: Mark Hatle <mark.hatle@windriver.com>
> Date: Thu, Mar 3, 2011 at 10:24 PM
> Subject: Re: [poky] Error when polkit library is pulled
> To: poky@yoctoproject.org
>
>
>
> On 3/3/11 3:46 AM, chinmaya hoshing wrote:
> > Hi,
> > When polkit library is pulled ,this is the following error :-
> >
> >
> > NOTE: package poky-image-minimal-initramfs-1.0-r0: task do_rootfs:
> Succeeded
> > ERROR: Task failed: ('function do_rootfs failed',
> >
> '/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457')
> > ERROR: Logfile of failure stored in:
> >
> /home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457
> > :
> > :
> > :
> > :
> > : base-files
>  ##################################################
> > | error: unpacking of archive failed on file /var/cache: cpio: rename
> failed -
> > Inappropriate ioctl for device
>
> The above is the cause of the failed install.  What filesystem are you on?
>  The
> failure is severe, it created a directory, tried to rename the directory
> and got
> an "Inappropriate ioctl for device".. in otherwords the device prevented
> the
> rename for some reason.
>
> Is your build being done on either an NFS, Clearcase, or other non-local
> filesystem?  Or do you have selinux or something like that enabled that saw
> "/var/cache", and prevented the renaming thinking it was a hacking attempt?
>
> (FYI, the rename happens so that the creation of files/directories happens
> atomically.  create /var/cache.XXXXXX then mv /var/cache.XXXXX /var/cache
> is
> being done... ensuring the old item only goes away when the new item is
> fully
> created.)
>
> --Mark
>
>
> > | udev-extraconf
>  ##################################################
> > | udev
>  ##################################################
> > | zypper
>  ##################################################
> > | avahi-daemon
>  ##################################################
> > | hal-info
>  ##################################################
> > | ERROR: Task failed: ('function do_rootfs failed',
> >
> '/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457')
> > NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed
> > ERROR: Task 191
> > (/home/sct/poky-chrome/meta/recipes-core/images/
> poky-image-minimal-akshat.bb
> > <http://poky-image-minimal-akshat.bb>, do_rootfs) failed with 1
>
> > ERROR:
> > '/home/sct/poky-chrome/meta/recipes-core/images/
> poky-image-minimal-akshat.bb
> > <http://poky-image-minimal-akshat.bb>' failed
> >
> >
> > With Regards
> > Chinmaya
> >
> >
> >
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

--00504502b08e6e603b049da16e47
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br><div>(regarding the polkit library which when =
pulled gives error)</div><div><br><div>=A0<span dir=3D"ltr" id=3D":bh">I am=
 using ubuntu 10.10 on 64 bit machine and having ext3/ext4 filesystem</span=
><br>
<br></div><div>-Chinmaya</div><div><br><div class=3D"gmail_quote">On Fri, M=
ar 4, 2011 at 10:48 AM, v sailaja <span dir=3D"ltr">&lt;<a href=3D"mailto:v=
sailub4u@gmail.com">vsailub4u@gmail.com</a>&gt;</span> wrote:<br><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex;">
<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Mark Hatle</b> <span dir=3D"ltr">&lt=
;<a href=3D"mailto:mark.hatle@windriver.com" target=3D"_blank">mark.hatle@w=
indriver.com</a>&gt;</span><br>

Date: Thu, Mar 3, 2011 at 10:24 PM<br>Subject: Re: [poky] Error when polkit=
 library is pulled<br>To: <a href=3D"mailto:poky@yoctoproject.org" target=
=3D"_blank">poky@yoctoproject.org</a><div class=3D"im"><br><br><br><div>On =
3/3/11 3:46 AM, chinmaya hoshing wrote:<br>


&gt; Hi,<br>
&gt; When polkit library is pulled ,this is the following error :-<br>
&gt;<br>
&gt;<br>
&gt; NOTE: package poky-image-minimal-initramfs-1.0-r0: task do_rootfs: Suc=
ceeded<br>
&gt; ERROR: Task failed: (&#39;function do_rootfs failed&#39;,<br>
&gt; &#39;/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-imag=
e-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457&#39;)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-image-min=
imal-akshat-1.0-r0/temp/log.do_rootfs.21457<br>
&gt; :<br>
&gt; :<br>
&gt; :<br>
&gt; :<br>
&gt; : base-files =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0######################=
############################<br>
&gt; | error: unpacking of archive failed on file /var/cache: cpio: rename =
failed -<br>
&gt; Inappropriate ioctl for device<br>
<br>
</div></div>The above is the cause of the failed install. =A0What filesyste=
m are you on? =A0The<br>
failure is severe, it created a directory, tried to rename the directory an=
d got<br>
an &quot;Inappropriate ioctl for device&quot;.. in otherwords the device pr=
evented the<br>
rename for some reason.<br>
<br>
Is your build being done on either an NFS, Clearcase, or other non-local<br=
>
filesystem? =A0Or do you have selinux or something like that enabled that s=
aw<br>
&quot;/var/cache&quot;, and prevented the renaming thinking it was a hackin=
g attempt?<br>
<br>
(FYI, the rename happens so that the creation of files/directories happens<=
br>
atomically. =A0create /var/cache.XXXXXX then mv /var/cache.XXXXX /var/cache=
 is<br>
being done... ensuring the old item only goes away when the new item is ful=
ly<br>
created.)<br>
<br>
--Mark<div class=3D"im"><br>
<div><br>
&gt; | udev-extraconf =A0 =A0 =A0 =A0 =A0 =A0 =A0##########################=
########################<br>
&gt; | udev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0################=
##################################<br>
&gt; | zypper =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0##################=
################################<br>
&gt; | avahi-daemon =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0########################=
##########################<br>
&gt; | hal-info =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0####################=
##############################<br>
&gt; | ERROR: Task failed: (&#39;function do_rootfs failed&#39;,<br>
&gt; &#39;/home/sct/poky-chrome/build/tmp/work/atom-pc-poky-linux/poky-imag=
e-minimal-akshat-1.0-r0/temp/log.do_rootfs.21457&#39;)<br>
&gt; NOTE: package poky-image-minimal-akshat-1.0-r0: task do_rootfs: Failed=
<br>
&gt; ERROR: Task 191<br>
&gt; (/home/sct/poky-chrome/meta/recipes-core/images/<a href=3D"http://poky=
-image-minimal-akshat.bb" target=3D"_blank">poky-image-minimal-akshat.bb</a=
><br>
</div></div>&gt; &lt;<a href=3D"http://poky-image-minimal-akshat.bb" target=
=3D"_blank">http://poky-image-minimal-akshat.bb</a>&gt;, do_rootfs) failed =
with 1<div class=3D"im"><br>
<div>&gt; ERROR:<br>
&gt; &#39;/home/sct/poky-chrome/meta/recipes-core/images/<a href=3D"http://=
poky-image-minimal-akshat.bb" target=3D"_blank">poky-image-minimal-akshat.b=
b</a><br>
</div></div>&gt; &lt;<a href=3D"http://poky-image-minimal-akshat.bb" target=
=3D"_blank">http://poky-image-minimal-akshat.bb</a>&gt;&#39; failed<br>
&gt;<br>
&gt;<br>
&gt; With Regards<br>
&gt; Chinmaya<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_bl=
ank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
</div><br>
</blockquote></div><br></div></div></div></div>

--00504502b08e6e603b049da16e47--
