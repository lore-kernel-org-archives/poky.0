Return-Path: <akshat.embedded@gmail.com>
Received: from mail-qw0-f48.google.com (mail-qw0-f48.google.com
	[209.85.216.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 876DF4C800BA
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 00:03:07 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qwj9 with SMTP id 9so7250392qwj.35
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 22:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=XtMqN7lKFRUiTpTd8I8AwIbw9JSvYVyprvxWf3yDLyY=;
	b=xw7XQ9oZaetyCWC2RiLJntiW8eaZmlTTqbK7JGOz+4uV6o505UosuISrXvUCxHe79N
	4CRENJmaZBpHJscZI33qrKayRT88M80no0nD1BWegBpWSVwkGOaG6VbR9aUiQift/2pH
	dEEsIFA1AQYk9SITIGFoUEA8nlNWhrCKZnDpA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=Uhe9TuPm3Z8Z4Cy4eIymJt3Rpzxitsyz6cd+inGn6Bfxw5u6tSG9KVmW1+P/++3Jmc
	Hasdjey62+GWfoUeifuQFdb86qBtySNckzy0vDPhPpjcsSy39ZnQTpaRUlmWSagvHyUD
	bqiGSMniBhVq3jfNrcI0ZvVd9INK7IqmsPI7I=
MIME-Version: 1.0
Received: by 10.229.44.147 with SMTP id a19mr5552728qcf.136.1300856587275;
	Tue, 22 Mar 2011 22:03:07 -0700 (PDT)
Received: by 10.229.20.205 with HTTP; Tue, 22 Mar 2011 22:03:07 -0700 (PDT)
In-Reply-To: <AANLkTi=pZtSdvx7g6fQVwthwoDR3kFWu2nWd4bTe5a6c@mail.gmail.com>
References: <AANLkTi=pZtSdvx7g6fQVwthwoDR3kFWu2nWd4bTe5a6c@mail.gmail.com>
Date: Wed, 23 Mar 2011 10:33:07 +0530
Message-ID: <AANLkTi=Yms2wBQ54jO9_d_d1Bgk4+An9KTv5e8Vyo9=e@mail.gmail.com>
From: Akshat Saha <akshat.embedded@gmail.com>
To: poky@yoctoproject.org
Subject: Re: error: unpacking of archive failed
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
X-List-Received-Date: Wed, 23 Mar 2011 05:03:07 -0000
Content-Type: multipart/alternative; boundary=0016364187bbc9cfd9049f1f46f4

--0016364187bbc9cfd9049f1f46f4
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am also facing the same problem. One thing which I have observed is that
this error is generally thrown after base files package only.
Also on searching i found this error is possibly related to rpm update or
something. Please refer https://bugzilla.redhat.com/show_bug.cgi?id=191841.

I am building for target - atom-pc on host - Ubuntu 10.10, 64-bit machine.

Any kind of help or guidance is really appreciated.

On Tue, Mar 22, 2011 at 5:12 PM, chinmaya hoshing <cahoshing@gmail.com>wrote:

> Hi ,
> This is the error which I get,i think whenever the number of packages
> increase by in pulling in bb file
> I get this error ,is it possible means this kind of error? ,if yes then
> what is the solution ????
> I am using it on Ubuntu 10.10 version and on i686 GNU/Linux machine
>
> base-files
>  ##################################################
> | error: unpacking of archive failed on file /var/cache: cpio: rename
> failed - Inappropriate ioctl for device
> | libsm6
>  ##################################################
> | util-linux-fdisk
>  ##################################################
> :
> :
> :
> :
>
> usbutils
>  ##################################################
> | krb5-dev
>  ##################################################
> | ERROR: Task failed: ('function do_rootfs failed',
> '/home/xxx/work/laverne-4.0.1/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-xxx-1.0-r0/temp/log.do_rootfs.20619')
> NOTE: package poky-image-minimal-xxx-1.0-r0: task do_rootfs: Failed
> ERROR: Task 191 (/home/xxx/work/laverne-4.0.1/meta/recipes-core/images/
> poky-image-minimal-xxx.bb, do_rootfs) failed with 1
> Waiting for 1 active tasks to finish:
> 1: poky-image-minimal-initramfs-1.0-r0 do_rootfs (pid 20623)
> NOTE: package poky-image-minimal-initramfs-1.0-r0: task do_rootfs:
> Succeeded
> ERROR: '/home/xxx/work/laverne-4.0.1/meta/recipes-core/images/
> poky-image-minimal-xxx.bb' failed
>
> With Regards
> Chinmaya
>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>


-- 
Akshat

--0016364187bbc9cfd9049f1f46f4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div><div><br></div><div>I am also facing the same problem. One th=
ing which I have observed is that this error is generally thrown after base=
 files package only.</div><div>Also on searching i found this error is poss=
ibly related to rpm update or something. Please refer <a href=3D"https://bu=
gzilla.redhat.com/show_bug.cgi?id=3D191841">https://bugzilla.redhat.com/sho=
w_bug.cgi?id=3D191841</a>.</div>
<div><br></div><div>I am building for target - atom-pc on host - Ubuntu 10.=
10, 64-bit machine.</div><div><br></div><div>Any kind of help or guidance i=
s really appreciated.</div><br><div class=3D"gmail_quote">On Tue, Mar 22, 2=
011 at 5:12 PM, chinmaya hoshing <span dir=3D"ltr">&lt;<a href=3D"mailto:ca=
hoshing@gmail.com">cahoshing@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div dir=3D"ltr"><div>Hi ,</div><div>This i=
s the error which I get,i think whenever the number of packages increase by=
 in pulling in bb file</div>
<div>I get this error ,is it possible means this kind of error? ,if yes the=
n what is the solution ????</div>
<div>I am using it on Ubuntu 10.10 version and on i686 GNU/Linux machine=A0=
</div><div><br></div><div>base-files =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0###=
###############################################</div><div>| error: unpackin=
g of archive failed on file /var/cache: cpio: rename failed - Inappropriate=
 ioctl for device</div>

<div>| libsm6 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0##################=
################################</div><div>| util-linux-fdisk =A0 =A0 =A0 =
=A0 =A0 =A0##################################################</div><div>:</=
div><div>:</div><div>:</div><div>

:</div><div><br></div><div><div>usbutils =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0##################################################</div><div>| krb5-=
dev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0################################=
##################</div><div>| ERROR: Task failed: (&#39;function do_rootfs=
 failed&#39;, &#39;/home/xxx/work/laverne-4.0.1/build/tmp/work/atom-pc-poky=
-linux/poky-image-minimal-xxx-1.0-r0/temp/log.do_rootfs.20619&#39;)</div>

<div>NOTE: package poky-image-minimal-xxx-1.0-r0: task do_rootfs: Failed</d=
iv><div>ERROR: Task 191 (/home/xxx/work/laverne-4.0.1/meta/recipes-core/ima=
ges/<a href=3D"http://poky-image-minimal-xxx.bb" target=3D"_blank">poky-ima=
ge-minimal-xxx.bb</a>, do_rootfs) failed with 1</div>

<div>Waiting for 1 active tasks to finish:</div><div>1: poky-image-minimal-=
initramfs-1.0-r0 do_rootfs (pid 20623)</div><div>NOTE: package poky-image-m=
inimal-initramfs-1.0-r0: task do_rootfs: Succeeded</div><div>ERROR: &#39;/h=
ome/xxx/work/laverne-4.0.1/meta/recipes-core/images/<a href=3D"http://poky-=
image-minimal-xxx.bb" target=3D"_blank">poky-image-minimal-xxx.bb</a>&#39; =
failed</div>

</div><div><br></div><div>With Regards</div><div>Chinmaya</div><div><br></d=
iv><div><br></div><div><br></div></div>
<br>_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div><span class=3D=
"Apple-style-span" style=3D"color: rgb(51, 51, 51); font-family: georgia, s=
erif; ">Akshat=A0</span></div><div><br></div><br>

--0016364187bbc9cfd9049f1f46f4--
