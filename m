Return-Path: <vsailub4u@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 15DE64C8004D
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 06:23:30 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk28 with SMTP id 28so299613pzk.35
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 04:23:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=WFpR+rhXrER04Coq53IwBLMPDqjZaXYyXvJZFOkrKTs=;
	b=Pkn6GwhJh172zf45Pj0EB03fVe6QlQCy3E+U17INzNVe7Wtb6H+X7kG/1ArjauA5L3
	hKslOk+MBRh3TYbKEKGL2KQAAlEjoKeZu92KHRzOb9NBZWTP+zsobTE+Grkfy506Japl
	6J8lh9lrKJm1J+m0rt9pan2zUT5oVZx2rTQGg=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=mirJStHOtIHH6CAk8foeCD0DIZLJJJ3V19NDlkkGd5/qsVB49Y3gY/l0aEQseOl7rk
	oKV2aHK0j8FEnYnT76eP2jQ3mantRkVgm9a+EXKV5RdfF54MdLLzyAWpkNsoFHuHRbCg
	CRUpXE+ES3zW+MeJJRgJ9+vbof8RjB5F4g+5g=
MIME-Version: 1.0
Received: by 10.142.246.18 with SMTP id t18mr1633798wfh.422.1298636608702;
	Fri, 25 Feb 2011 04:23:28 -0800 (PST)
Received: by 10.142.170.3 with HTTP; Fri, 25 Feb 2011 04:23:28 -0800 (PST)
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
Date: Fri, 25 Feb 2011 17:53:28 +0530
Message-ID: <AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
From: v sailaja <vsailub4u@gmail.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, poky@yoctoproject.org
Subject: Re: problems while building an image uasing poky
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
X-List-Received-Date: Fri, 25 Feb 2011 12:23:30 -0000
Content-Type: multipart/alternative; boundary=000e0cd146b6c10ab9049d1a6504

--000e0cd146b6c10ab9049d1a6504
Content-Type: text/plain; charset=ISO-8859-1

Hi Kevin,

This is the error about do_install.




NOTE: Running task 2528 of 3845 (ID: 1077,
/home/sailaja/poky-chrome/meta/recipes-support/krb/krb5_1.6.3.bb,
do_install)
NOTE: package krb5-1.6.3-r6: task do_install: Started
ERROR: Task failed: ('function do_install failed',
'/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702')
ERROR: Logfile of failure stored in:
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702
Log data follows:
| oe_libinstall: cd util/support
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5support.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5support.so.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkrb5support.so.0.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkrb5support.so.0.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so.0
| oe_libinstall: ln -sf libkrb5support.so.0.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd util/et
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
|* readelf: Error: 'libkrb5support.so.0.1': No such file*
| oe_libinstall: ln -sf libkrb5support.so.0.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/crypto
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libk5crypto.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libk5crypto.so.3
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libk5crypto.so.3.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libk5crypto.so.3.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so.3
| oe_libinstall: ln -sf libk5crypto.so.3.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/krb5
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5.so.3
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkrb5.so.3.3
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkrb5.so.3.3
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5.so.3
| oe_libinstall: ln -sf libkrb5.so.3.3
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/des425
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libdes425.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libdes425.so.3
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libdes425.so.3.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libdes425.so.3.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libdes425.so.3
| oe_libinstall: ln -sf libdes425.so.3.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libdes425.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/krb4
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb4.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb4.so.2
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkrb4.so.2.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkrb4.so.2.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb4.so.2
| oe_libinstall: ln -sf libkrb4.so.2.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb4.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/gssapi
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssapi_krb5.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssapi_krb5.so.2
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libgssapi_krb5.so.2.2
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libgssapi_krb5.so.2.2
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libgssapi_krb5.so.2
| oe_libinstall: ln -sf libgssapi_krb5.so.2.2
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libgssapi_krb5.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/rpc
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssrpc.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssrpc.so.4
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libgssrpc.so.4.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libgssrpc.so.4.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libgssrpc.so.4
| oe_libinstall: ln -sf libgssrpc.so.4.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libgssrpc.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/kdb
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkdb5.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkdb5.so.4
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkdb5.so.4.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkdb5.so.4.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkdb5.so.4
| oe_libinstall: ln -sf libkdb5.so.4.0
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkdb5.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/kadm5/clnt
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5clnt.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5clnt.so.5
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkadm5clnt.so.5.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkadm5clnt.so.5.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5clnt.so.5
| oe_libinstall: ln -sf libkadm5clnt.so.5.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5clnt.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/kadm5/srv
| oe_libinstall: install -d
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5srv.so
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5srv.so.5
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkadm5srv.so.5.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkadm5srv.so.5.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so.5
| oe_libinstall: ln -sf libkadm5srv.so.5.1
/home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so
| oe_libinstall: cd
/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src
| mv: cannot stat
`/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/image/usr/bin/ftp':
No such file or directory
| ERROR: Task failed: ('function do_install failed',
'/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702')
NOTE: package krb5-1.6.3-r6: task do_install: Failed
ERROR: Task 1077 (/home/sailaja/poky-chrome/meta/recipes-support/krb/
krb5_1.6.3.bb, do_install) failed with 1
*ERROR: '/home/sailaja/poky-chrome/meta/recipes-support/krb/krb5_1.6.3.bb'
failed
*

appreciated if anyone helps me.


Thanks & Regards
SAI







On Fri, Feb 25, 2011 at 12:28 PM, Tian, Kevin <kevin.tian@intel.com> wrote:

> Hi, SAI,
>
>
>
> could you post further error log about do_install?
>
>
>
> Thanks
>
> Kevin
>
>
>
> *From:* poky-bounces@yoctoproject.org [mailto:
> poky-bounces@yoctoproject.org] *On Behalf Of *v sailaja
> *Sent:* Friday, February 25, 2011 2:56 PM
> *To:* poky@yoctoproject.org
> *Subject:* [poky] problems while building an image uasing poky
>
>
>
> Hi,
>
>
> I am trying to build an image on poky platform. I didn't find some packages
> like* krb and directfb*, so I copied those packages from open-embedded.
> but I am getting an *error* like
>  *package krb5-1.6.3-r6: task do_install: Failed*
>
> Can anyone help me to fix this problem.
>
> Thanks & Regards,
> SAI
>
>
>
>
>
>

--000e0cd146b6c10ab9049d1a6504
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Kevin,<br><br>This is the error about do_install.<br><br><br><br><br>NOT=
E: Running task 2528 of 3845 (ID: 1077, /home/sailaja/poky-chrome/meta/reci=
pes-support/krb/<a href=3D"http://krb5_1.6.3.bb">krb5_1.6.3.bb</a>, do_inst=
all)<br>
NOTE: package krb5-1.6.3-r6: task do_install: Started<br>ERROR: Task failed=
: (&#39;function do_install failed&#39;, &#39;/home/sailaja/poky-chrome/bui=
ld/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702&#39;)<=
br>
ERROR: Logfile of failure stored in: /home/sailaja/poky-chrome/build/tmp/wo=
rk/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702<br>Log data fol=
lows:<br>| oe_libinstall: cd util/support<br>| oe_libinstall: install -d /h=
ome/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>
| oe_libinstall: cp -P libkrb5support.so /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libkrb5suppo=
rt.so.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/l=
ib/<br>
| oe_libinstall: install -m 0755 libkrb5support.so.0.1 /home/sailaja/poky-c=
hrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln -=
sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2=
-poky-linux/usr/lib/libkrb5support.so.0<br>
| oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/bui=
ld/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so<br>| oe_libinsta=
ll: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3=
-r6/krb5-1.6.3/src<br>
| oe_libinstall: cd util/et<br>| oe_libinstall: install -d /home/sailaja/po=
ky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>|<b> readelf: Err=
or: &#39;libkrb5support.so.0.1&#39;: No such file</b><br>| oe_libinstall: l=
n -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/libkrb5support.so<br>
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: cd lib/crypto<br>| oe_l=
ibinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/core2-po=
ky-linux/usr/lib/<br>
| oe_libinstall: cp -P libk5crypto.so /home/sailaja/poky-chrome/build/tmp/s=
ysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libk5crypto.so.=
3 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br=
>
| oe_libinstall: install -m 0755 libk5crypto.so.3.1 /home/sailaja/poky-chro=
me/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln -sf =
libk5crypto.so.3.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-=
linux/usr/lib/libk5crypto.so.3<br>
| oe_libinstall: ln -sf libk5crypto.so.3.1 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so<br>| oe_libinstall: cd=
 /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/kr=
b5-1.6.3/src<br>
| oe_libinstall: cd lib/krb5<br>| oe_libinstall: install -d /home/sailaja/p=
oky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall:=
 cp -P libkrb5.so /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-l=
inux/usr/lib/<br>
| oe_libinstall: cp -P libkrb5.so.3 /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m 0755 libkrb5=
.so.3.3 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/l=
ib/<br>
| oe_libinstall: ln -sf libkrb5.so.3.3 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkrb5.so.3<br>| oe_libinstall: ln -sf l=
ibkrb5.so.3.3 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux=
/usr/lib/libkrb5.so<br>
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: cd lib/des425<br>| oe_l=
ibinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/core2-po=
ky-linux/usr/lib/<br>
| oe_libinstall: cp -P libdes425.so /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libdes425.so.3 /h=
ome/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>
| oe_libinstall: install -m 0755 libdes425.so.3.0 /home/sailaja/poky-chrome=
/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln -sf li=
bdes425.so.3.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linu=
x/usr/lib/libdes425.so.3<br>
| oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libdes425.so<br>| oe_libinstall: cd /ho=
me/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1=
.6.3/src<br>
| oe_libinstall: cd lib/krb4<br>| oe_libinstall: install -d /home/sailaja/p=
oky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall:=
 cp -P libkrb4.so /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-l=
inux/usr/lib/<br>
| oe_libinstall: cp -P libkrb4.so.2 /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m 0755 libkrb4=
.so.2.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/l=
ib/<br>
| oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkrb4.so.2<br>| oe_libinstall: ln -sf l=
ibkrb4.so.2.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux=
/usr/lib/libkrb4.so<br>
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: cd lib/gssapi<br>| oe_l=
ibinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/core2-po=
ky-linux/usr/lib/<br>
| oe_libinstall: cp -P libgssapi_krb5.so /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libgssapi_kr=
b5.so.2 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/l=
ib/<br>
| oe_libinstall: install -m 0755 libgssapi_krb5.so.2.2 /home/sailaja/poky-c=
hrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln -=
sf libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/build/tmp/sysroots/core2=
-poky-linux/usr/lib/libgssapi_krb5.so.2<br>
| oe_libinstall: ln -sf libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/bui=
ld/tmp/sysroots/core2-poky-linux/usr/lib/libgssapi_krb5.so<br>| oe_libinsta=
ll: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3=
-r6/krb5-1.6.3/src<br>
| oe_libinstall: cd lib/rpc<br>| oe_libinstall: install -d /home/sailaja/po=
ky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: =
cp -P libgssrpc.so /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-=
linux/usr/lib/<br>
| oe_libinstall: cp -P libgssrpc.so.4 /home/sailaja/poky-chrome/build/tmp/s=
ysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m 0755 libgs=
srpc.so.4.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/u=
sr/lib/<br>
| oe_libinstall: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libgssrpc.so.4<br>| oe_libinstall: ln -=
sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky=
-linux/usr/lib/libgssrpc.so<br>
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: cd lib/kdb<br>| oe_libi=
nstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-=
linux/usr/lib/<br>
| oe_libinstall: cp -P libkdb5.so /home/sailaja/poky-chrome/build/tmp/sysro=
ots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libkdb5.so.4 /home/=
sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_li=
binstall: install -m 0755 libkdb5.so.4.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/<br>
| oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkdb5.so.4<br>| oe_libinstall: ln -sf l=
ibkdb5.so.4.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux=
/usr/lib/libkdb5.so<br>
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: cd lib/kadm5/clnt<br>| =
oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/core=
2-poky-linux/usr/lib/<br>
| oe_libinstall: cp -P libkadm5clnt.so /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libkadm5clnt.s=
o.5 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<=
br>
| oe_libinstall: install -m 0755 libkadm5clnt.so.5.1 /home/sailaja/poky-chr=
ome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln -sf=
 libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-pok=
y-linux/usr/lib/libkadm5clnt.so.5<br>
| oe_libinstall: ln -sf libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/build=
/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5clnt.so<br>| oe_libinstall: =
cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/=
krb5-1.6.3/src<br>
| oe_libinstall: cd lib/kadm5/srv<br>| oe_libinstall: install -d /home/sail=
aja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libins=
tall: cp -P libkadm5srv.so /home/sailaja/poky-chrome/build/tmp/sysroots/cor=
e2-poky-linux/usr/lib/<br>
| oe_libinstall: cp -P libkadm5srv.so.5 /home/sailaja/poky-chrome/build/tmp=
/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m 0755 lib=
kadm5srv.so.5.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-lin=
ux/usr/lib/<br>
| oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so.5<br>| oe_libinstall: =
ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core=
2-poky-linux/usr/lib/libkadm5srv.so<br>
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| mv: cannot stat `/home/sailaja/poky-ch=
rome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/image/usr/bin/ftp&#39;: =
No such file or directory<br>
| ERROR: Task failed: (&#39;function do_install failed&#39;, &#39;/home/sai=
laja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_=
install.22702&#39;)<br>NOTE: package krb5-1.6.3-r6: task do_install: Failed=
<br>
ERROR: Task 1077 (/home/sailaja/poky-chrome/meta/recipes-support/krb/<a hre=
f=3D"http://krb5_1.6.3.bb">krb5_1.6.3.bb</a>, do_install) failed with 1<br>=
<b>ERROR: &#39;/home/sailaja/poky-chrome/meta/recipes-support/krb/<a href=
=3D"http://krb5_1.6.3.bb">krb5_1.6.3.bb</a>&#39; failed<br>
</b><br><br>appreciated if anyone helps me.<br><br><br>Thanks &amp; Regards=
<br>SAI<br><br><br><br><br><br><br><br><div class=3D"gmail_quote">On Fri, F=
eb 25, 2011 at 12:28 PM, Tian, Kevin <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:kevin.tian@intel.com">kevin.tian@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0.8ex; borde=
r-left: 1px solid rgb(204, 204, 204); padding-left: 1ex;"><div link=3D"blue=
" vlink=3D"purple" lang=3D"ZH-CN"><div><p class=3D"MsoNormal"><span style=
=3D"font-size: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Hi, SAI,</s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p><p class=3D"MsoNormal"><span style=3D"=
font-size: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">could you post =
further error log about do_install?</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; color: rgb(31, 73,=
 125);" lang=3D"EN-US">=A0</span></p><p class=3D"MsoNormal"><span style=3D"=
font-size: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">Thanks</span></=
p><p class=3D"MsoNormal">
<span style=3D"font-size: 10.5pt; color: rgb(31, 73, 125);" lang=3D"EN-US">=
Kevin</span></p><p class=3D"MsoNormal"><span style=3D"font-size: 10.5pt; co=
lor: rgb(31, 73, 125);" lang=3D"EN-US">=A0</span></p><div style=3D"border-w=
idth: medium medium medium 1.5pt; border-style: none none none solid; borde=
r-color: -moz-use-text-color -moz-use-text-color -moz-use-text-color blue; =
padding: 0cm 0cm 0cm 4pt;">
<div><div style=3D"border-width: 1pt medium medium; border-style: solid non=
e none; border-color: rgb(181, 196, 223) -moz-use-text-color -moz-use-text-=
color; padding: 3pt 0cm 0cm;"><p class=3D"MsoNormal"><b><span style=3D"font=
-size: 10pt;" lang=3D"EN-US">From:</span></b><span style=3D"font-size: 10pt=
;" lang=3D"EN-US"> <a href=3D"mailto:poky-bounces@yoctoproject.org" target=
=3D"_blank">poky-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:pok=
y-bounces@yoctoproject.org" target=3D"_blank">poky-bounces@yoctoproject.org=
</a>] <b>On Behalf Of </b>v sailaja<br>
<b>Sent:</b> Friday, February 25, 2011 2:56 PM<br><b>To:</b> <a href=3D"mai=
lto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoproject.org</a><br><=
b>Subject:</b> [poky] problems while building an image uasing poky</span></=
p>
</div></div><div><div></div><div class=3D"h5"><p class=3D"MsoNormal"><span =
lang=3D"EN-US">=A0</span></p><p class=3D"MsoNormal" style=3D"margin-bottom:=
 12pt;"><span lang=3D"EN-US">Hi,<br><br><br>I am trying to build an image o=
n poky platform. I didn&#39;t find some packages like<b> krb and directfb</=
b>, so I copied those packages from open-embedded. but I am getting an <b>e=
rror</b> like=A0=A0 <br>
=A0<b>package krb5-1.6.3-r6: task do_install: Failed</b><br><br>Can anyone =
help me to fix this problem.<br><br>Thanks &amp; Regards,<br>SAI<br><br><br=
><br><br><br></span></p></div></div></div></div></div></blockquote></div>
<br>

--000e0cd146b6c10ab9049d1a6504--
