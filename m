Return-Path: <cahoshing@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id BD7184C8026D
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 06:26:06 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so3278768pwi.35
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 04:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=V4b2YEfy6ej6dDpBFaGU1auStEReoJfuiZGn8MTB/eA=;
	b=KsHhuOfV9CbhKltRjHmfUcIWmnzHiYVggrCwaWEFHRXedLvQS/onp8knRVqkjPco+g
	UlQWVZycnRxl6qMy0Lc7jv76afqzjbgY8jU2x5K2zQCXvyptL/mcyTIcTsff0m60UhgB
	8MvNqsay1WCTCoXi079vlAWX+YdFkVDpx1nwk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=FriYOQPkEp2Zwe542epiPaxxGTGUQXbO0IuWRlSZnQDwvlJyFZI4LCLl7o7S/289AQ
	q6sX3X6R4Ns3YgLp3KvB55WpPqLrdVK4qsfsHpcjPu+HHiKCjgedXd94876nc0b4KJGS
	APjNsTtNu/XJ8siXCpWuGFhmkrv9yCQsmRN5k=
MIME-Version: 1.0
Received: by 10.142.151.6 with SMTP id y6mr2652530wfd.34.1303125966086; Mon,
	18 Apr 2011 04:26:06 -0700 (PDT)
Received: by 10.143.164.9 with HTTP; Mon, 18 Apr 2011 04:26:06 -0700 (PDT)
In-Reply-To: <BANLkTimfZW3gty+XVS1cNNZ9Z=A7v8RBJA@mail.gmail.com>
References: <BANLkTimfZW3gty+XVS1cNNZ9Z=A7v8RBJA@mail.gmail.com>
Date: Mon, 18 Apr 2011 16:56:06 +0530
Message-ID: <BANLkTi=zt_8VcqRhqbTKmsjZ3n2=T3BWjw@mail.gmail.com>
From: chinmaya hoshing <cahoshing@gmail.com>
To: poky@yoctoproject.org
Subject: Re: Error in building poky
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
X-List-Received-Date: Mon, 18 Apr 2011 11:26:07 -0000
Content-Type: multipart/alternative; boundary=00151748e0d84e623804a12fa80f

--00151748e0d84e623804a12fa80f
Content-Type: text/plain; charset=ISO-8859-1

Chinmaya

On Tue, Apr 12, 2011 at 2:45 PM, chinmaya hoshing <cahoshing@gmail.com>wrote:

> Hi,
>
> I am getting the following pattern of error while building poky,please can
> u help me out to find the root cause
>
> I would like to add,that whenever the number of packages inside the
> recipes-core are increased I am faced with this error
> Has it to do with the size of ROOTFS ???? or else ,I am not able to add any
> of the packages further ,
> Have u any idea about this kind of error,let me know
>
> ERROR log: --
>  Generating solve db for
> /home/laverne/laverne-4.0.1/build/tmp/deploy/rpm/atom-pc...
> |    total:               1      0.000000 MB      1.168749 secs
> |    order:               1      0.000000 MB      0.082421 secs
> |    fingerprint:       553      0.007822 MB      0.111332 secs
> |    install:           286      0.000000 MB      0.281674 secs
> |    dbadd:             286      0.000000 MB      0.128074 secs
> |    dbget:            9256      1.201872 MB      0.016558 secs
> |    dbput:            5345      2.330456 MB      0.028412 secs
> |    readhdr:          2861      2.371488 MB      0.392277 secs
> |    hdrload:        205777    257.699716 MB      1.261624 secs
> |    hdrget:        4088315      0.000000 MB      2.868292 secs
> | Processing krb5...
> | Processing xf86-input-mouse...
> | Processing psplash...
> | Processing shared-mime-info...
> :
> :
> :
> :
> Processing libavahi-client3...
> | Processing libselinux...
> | Manifest:
> /home/laverne/laverne-4.0.1/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-tcl-1.0-r0/rootfs/install/install.manifest
> | rpmdb: configured environment flags incompatible with existing
> environment
> | Preparing...
>  ##################################################
> | pointercal
>  ##################################################
> | update-rc.d-dev
> ##################################################
> | task-poky-boot
>  ##################################################
> | libc6
> ##################################################
> | libudev0
>  ##################################################
> | e2fsprogs-badblocks
> ##################################################
> | libgcc1
> ##################################################
> | libattr1
>  ##################################################
> | libacl1
> ##################################################
> :
> :
> gconf-dbus
>  ##################################################
> | liberation-fonts
>  ##################################################
> | libgettextsrc
> ##################################################
> | libreadline6
>  ##################################################
> | base-files
>  ##################################################
> | error: unpacking of archive failed on file /var/cache: cpio: rename
> failed - Inappropriate ioctl for device
> | pango-module-basic-x
>  ##################################################
> | pango
> ##################################################
> | pango-module-basic-fc
> ##################################################
> | gnome-keyring
> ##################################################
> google-talkplugin
> ##################################################
> | usbutils
>  ##################################################
> | nspr
>  ##################################################
> | nss
> ##################################################
> | nss-dev
> ##################################################
> | ERROR: Task failed: ('function do_rootfs failed',
> '/home/laverne/laverne-4.0.1/build/tmp/work/atom-pc-poky-linux/poky-image-minimal-tcl-1.0-r0/temp/log.do_rootfs.8363')
> NOTE: package poky-image-minimal-tcl-1.0-r0: task do_rootfs: Failed
> ERROR: Task 191 (/home/laverne/laverne-4.0.1/meta/recipes-core/images/
> poky-image-minimal-tcl.bb, do_rootfs) failed with 1
> ERROR: '/home/laverne/laverne-4.0.1/meta/recipes-core/images/
> poky-image-minimal-tcl.bb' failed
>
> --
> Chinmaya
>

--00151748e0d84e623804a12fa80f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div>Chinmaya<br><br><div class=3D"gmail_quote">=
On Tue, Apr 12, 2011 at 2:45 PM, chinmaya hoshing <span dir=3D"ltr">&lt;<a =
href=3D"mailto:cahoshing@gmail.com">cahoshing@gmail.com</a>&gt;</span> wrot=
e:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><div dir=3D"ltr"><div>Hi,</div><div><br></d=
iv><div>I am getting the following pattern of error while building poky,ple=
ase can u help me out to find the root cause</div>
<div><br></div><div>I would like to add,that whenever the number of package=
s inside the recipes-core are increased I am faced with this error</div>
<div>Has it to do with the size of ROOTFS ???? or else ,I am not able to ad=
d any of the packages further ,</div><div>Have u any idea about this kind o=
f error,let me know</div><div><br></div><div>ERROR log: -- =A0</div><div>

=A0Generating solve db for /home/laverne/laverne-4.0.1/build/tmp/deploy/rpm=
/atom-pc...</div><div>| =A0 =A0total: =A0 =A0 =A0 =A0 =A0 =A0 =A0 1 =A0 =A0=
 =A00.000000 MB =A0 =A0 =A01.168749 secs</div><div>| =A0 =A0order: =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 1 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.082421 secs</div>

<div>| =A0 =A0fingerprint: =A0 =A0 =A0 553 =A0 =A0 =A00.007822 MB =A0 =A0 =
=A00.111332 secs</div><div>| =A0 =A0install: =A0 =A0 =A0 =A0 =A0 286 =A0 =
=A0 =A00.000000 MB =A0 =A0 =A00.281674 secs</div><div>| =A0 =A0dbadd: =A0 =
=A0 =A0 =A0 =A0 =A0 286 =A0 =A0 =A00.000000 MB =A0 =A0 =A00.128074 secs</di=
v>

<div>| =A0 =A0dbget: =A0 =A0 =A0 =A0 =A0 =A09256 =A0 =A0 =A01.201872 MB =A0=
 =A0 =A00.016558 secs</div><div>| =A0 =A0dbput: =A0 =A0 =A0 =A0 =A0 =A05345=
 =A0 =A0 =A02.330456 MB =A0 =A0 =A00.028412 secs</div><div>| =A0 =A0readhdr=
: =A0 =A0 =A0 =A0 =A02861 =A0 =A0 =A02.371488 MB =A0 =A0 =A00.392277 secs</=
div>

<div>| =A0 =A0hdrload: =A0 =A0 =A0 =A0205777 =A0 =A0257.699716 MB =A0 =A0 =
=A01.261624 secs</div><div>| =A0 =A0hdrget: =A0 =A0 =A0 =A04088315 =A0 =A0 =
=A00.000000 MB =A0 =A0 =A02.868292 secs</div><div>| Processing krb5...</div=
><div>| Processing xf86-input-mouse...</div>

<div>| Processing psplash...</div><div>| Processing shared-mime-info...</di=
v><div>:</div><div>:</div><div>:=A0</div><div>:</div><div><div>Processing l=
ibavahi-client3...</div><div>| Processing libselinux...</div><div>| Manifes=
t: /home/laverne/laverne-4.0.1/build/tmp/work/atom-pc-poky-linux/poky-image=
-minimal-tcl-1.0-r0/rootfs/install/install.manifest</div>

<div>| rpmdb: configured environment flags incompatible with existing envir=
onment</div><div>| Preparing... =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0############=
######################################</div><div>| pointercal =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0##################################################</=
div>

<div>| update-rc.d-dev =A0 =A0 =A0 =A0 =A0 =A0 ############################=
######################</div><div>| task-poky-boot =A0 =A0 =A0 =A0 =A0 =A0 =
=A0##################################################</div><div>| libc6 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ##################################=
################</div>

<div>| libudev0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0####################=
##############################</div><div>| e2fsprogs-badblocks =A0 =A0 =A0 =
=A0 ##################################################</div><div>| libgcc1 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ###################################=
###############</div>

<div>| libattr1 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0####################=
##############################</div><div>| libacl1 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 ##################################################</div></d=
iv><div>:</div><div>:</div><div><div>

<div>gconf-dbus =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0########################=
##########################</div><div>| liberation-fonts =A0 =A0 =A0 =A0 =A0=
 =A0##################################################</div><div>| libgette=
xtsrc =A0 =A0 =A0 =A0 =A0 =A0 =A0 #########################################=
#########</div>

<div>| libreadline6 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0########################=
##########################</div><div>| base-files =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0##################################################</div><div>| e=
rror: unpacking of archive failed on file /var/cache: cpio: rename failed -=
 Inappropriate ioctl for device</div>

<div>| pango-module-basic-x =A0 =A0 =A0 =A0################################=
##################</div><div>| pango =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 ##################################################</div><div>| pang=
o-module-basic-fc =A0 =A0 =A0 #############################################=
#####</div>

<div>| gnome-keyring =A0 =A0 =A0 =A0 =A0 =A0 =A0 ##########################=
########################</div></div></div><div><div>google-talkplugin =A0 =
=A0 =A0 =A0 =A0 ##################################################</div><di=
v>| usbutils =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0#######################=
###########################</div>

<div>| nspr =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0################=
##################################</div><div>| nss =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 ##################################################<=
/div><div>| nss-dev =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 ###############=
###################################</div>

<div>| ERROR: Task failed: (&#39;function do_rootfs failed&#39;, &#39;/home=
/laverne/laverne-4.0.1/build/tmp/work/atom-pc-poky-linux/poky-image-minimal=
-tcl-1.0-r0/temp/log.do_rootfs.8363&#39;)</div><div>NOTE: package poky-imag=
e-minimal-tcl-1.0-r0: task do_rootfs: Failed</div>

<div>ERROR: Task 191 (/home/laverne/laverne-4.0.1/meta/recipes-core/images/=
<a href=3D"http://poky-image-minimal-tcl.bb" target=3D"_blank">poky-image-m=
inimal-tcl.bb</a>, do_rootfs) failed with 1</div><div>ERROR: &#39;/home/lav=
erne/laverne-4.0.1/meta/recipes-core/images/<a href=3D"http://poky-image-mi=
nimal-tcl.bb" target=3D"_blank">poky-image-minimal-tcl.bb</a>&#39; failed</=
div>

</div><div><br></div><div>--</div><div>Chinmaya</div></div>
</blockquote></div><br></div>

--00151748e0d84e623804a12fa80f--
