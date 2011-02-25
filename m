Return-Path: <vsailub4u@gmail.com>
Received: from mail-px0-f176.google.com (mail-px0-f176.google.com
	[209.85.212.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E6F084C8004D
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 06:31:09 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pxi11 with SMTP id 11so300967pxi.35
	for <poky@yoctoproject.org>; Fri, 25 Feb 2011 04:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=9KJWmyEgyU1QlID7yFHXssi9A1KBSXxAIJxplx3DO9s=;
	b=ACuSlU6qcr9L1yUroJn9410Oe/cGwbDlReW4zufLjBzsTy0R1J1DdGE0Ijazbz2cn6
	ZHCKzpMxtBXztOUcmNp6GzQCbGwwJhw42/qgQi4D3tRTReYqWc5l0OBFvB2Ty6Pap6u1
	pbquH3SAvO79WFnw58ZeQib5eX6i8QTYpIXw0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type;
	b=JaTAsp4c57t2zaWdUj0uot8K3kasxZJX//g62I35Kc82IpPEYGnRhtPO9t4mQtRTCm
	3bSS25NYFPpXwi9hgGw1AW2tx4rhiv2tCFpBt2jwJ9z+GburqAvesaYgzvLF7Q5l00cY
	W0NKV57U4Kr5+L4O1QIi5kztTIfXhqUHulNn0=
MIME-Version: 1.0
Received: by 10.142.221.4 with SMTP id t4mr1644710wfg.137.1298637068101; Fri,
	25 Feb 2011 04:31:08 -0800 (PST)
Received: by 10.142.170.3 with HTTP; Fri, 25 Feb 2011 04:31:08 -0800 (PST)
In-Reply-To: <AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
	<AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
Date: Fri, 25 Feb 2011 18:01:08 +0530
Message-ID: <AANLkTi=Sr0=P2--sYZZs6g2YD+KSJi4qfJK7A19PsJOO@mail.gmail.com>
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
X-List-Received-Date: Fri, 25 Feb 2011 12:31:10 -0000
Content-Type: multipart/alternative; boundary=000e0cd146fc22e960049d1a8165

--000e0cd146fc22e960049d1a8165
Content-Type: text/plain; charset=ISO-8859-1

Hi Kevin,
>
> This is the error about do_install.
>
    I think the way of writing recipes and packages and some for Poky
platform and openembedded are different. Openembedded supports some built-in
functions. Poky,As being a derivative of Openembedded, it cant inherit all
its feeatures.
    It might be the problem.
   If its wrong. *Please let me know*.

> If its possible, could you please explain clearly why its so happening.
>
>
>
> NOTE: Running task 2528 of 3845 (ID: 1077, /home/sailaja/poky-chrome/
> meta/recipes-support/krb/krb5_1.6.3.bb, do_install)
> NOTE: package krb5-1.6.3-r6: task do_install: Started
> ERROR: Task failed: ('function do_install failed',
> '/home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/temp/log.do_install.22702')
> ERROR: Logfile of failure stored in: /home/sailaja/poky-chrome/
> build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702
> Log data follows:
> | oe_libinstall: cd util/support
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkrb5support.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkrb5support.so.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libkrb5support.so.0.1
> /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so.0
> | oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd util/et
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> |* readelf: Error: 'libkrb5support.so.0.1': No such file*
> | oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/crypto
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libk5crypto.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libk5crypto.so.3 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libk5crypto.so.3.1
> /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libk5crypto.so.3.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so.3
> | oe_libinstall: ln -sf libk5crypto.so.3.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/krb5
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkrb5.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkrb5.so.3 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libkrb5.so.3.3 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libkrb5.so.3.3 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5.so.3
> | oe_libinstall: ln -sf libkrb5.so.3.3 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/des425
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libdes425.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libdes425.so.3 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libdes425.so.3.0
> /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libdes425.so.3
> | oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libdes425.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/krb4
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkrb4.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkrb4.so.2 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libkrb4.so.2.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb4.so.2
> | oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb4.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/gssapi
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libgssapi_krb5.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libgssapi_krb5.so.2 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libgssapi_krb5.so.2.2
> /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libgssapi_krb5.so.2
> | oe_libinstall: ln -sf libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libgssapi_krb5.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/rpc
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libgssrpc.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libgssrpc.so.4 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libgssrpc.so.4.0
> /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libgssrpc.so.4
> | oe_libinstall: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libgssrpc.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/kdb
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkdb5.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkdb5.so.4 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libkdb5.so.4.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkdb5.so.4
> | oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkdb5.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/kadm5/clnt
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkadm5clnt.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkadm5clnt.so.5 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libkadm5clnt.so.5.1
> /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5clnt.so.5
> | oe_libinstall: ln -sf libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5clnt.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | oe_libinstall: cd lib/kadm5/srv
> | oe_libinstall: install -d /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkadm5srv.so /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: cp -P libkadm5srv.so.5 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: install -m 0755 libkadm5srv.so.5.1
> /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
> | oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so.5
> | oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome/
> build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so
> | oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/krb5-1.6.3/src
> | mv: cannot stat `/home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/image/usr/bin/ftp': No such file or directory
> | ERROR: Task failed: ('function do_install failed',
> '/home/sailaja/poky-chrome/build/tmp/work/core2-poky-
> linux/krb5-1.6.3-r6/temp/log.do_install.22702')
> NOTE: package krb5-1.6.3-r6: task do_install: Failed
> ERROR: Task 1077 (/home/sailaja/poky-chrome/meta/recipes-support/krb/
> krb5_1.6.3.bb, do_install) failed with 1
> *ERROR: '/home/sailaja/poky-chrome/meta/recipes-support/krb/krb5_1.6.3.bb'
> failed
> *
>
> appreciated if anyone helps me.
>
>
> Thanks & Regards
> SAI
>
>
>
>
>
>
>
>
> On Fri, Feb 25, 2011 at 12:28 PM, Tian, Kevin <kevin.tian@intel.com>wrote:
>
>> Hi, SAI,
>>
>>
>>
>> could you post further error log about do_install?
>>
>>
>>
>> Thanks
>>
>> Kevin
>>
>>
>>
>> *From:* poky-bounces@yoctoproject.org [mailto:
>> poky-bounces@yoctoproject.org] *On Behalf Of *v sailaja
>> *Sent:* Friday, February 25, 2011 2:56 PM
>> *To:* poky@yoctoproject.org
>> *Subject:* [poky] problems while building an image uasing poky
>>
>>
>>
>> Hi,
>>
>>
>> I am trying to build an image on poky platform. I didn't find some
>> packages like* krb and directfb*, so I copied those packages from
>> open-embedded. but I am getting an *error* like
>>  *package krb5-1.6.3-r6: task do_install: Failed*
>>
>> Can anyone help me to fix this problem.
>>
>> Thanks & Regards,
>> SAI
>>
>>
>>
>>
>>
>>
>

--000e0cd146fc22e960049d1a8165
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote"><br><blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); p=
adding-left: 1ex;"><font size=3D"4">Hi Kevin,<br><br>This is the error abou=
t do_install.<br>
</font></blockquote><div><font size=3D"4">=A0=A0=A0 I think the way of writ=
ing recipes and packages and some for Poky platform and openembedded are di=
fferent. Openembedded supports some built-in functions. Poky,As being a der=
ivative of Openembedded, it cant inherit all its feeatures.<br>
=A0 =A0 It might be the problem. <br>=A0=A0 If its wrong. <b>Please let me =
know</b>.<br></font></div><blockquote class=3D"gmail_quote" style=3D"margin=
: 0pt 0pt 0pt 0.8ex; border-left: 1px solid rgb(204, 204, 204); padding-lef=
t: 1ex;">
<font size=3D"4">If its possible, could you please explain clearly why its =
so happening.<br><br><br><br>NOTE: Running task 2528 of 3845 (ID: 1077, /ho=
me/sailaja/poky-chrome/</font><font size=3D"4">meta/recipes-support/krb/<a =
href=3D"http://krb5_1.6.3.bb" target=3D"_blank">krb5_1.6.3.bb</a>, do_insta=
ll)<br>

NOTE: package krb5-1.6.3-r6: task do_install: Started<br>ERROR: Task failed=
: (&#39;function do_install failed&#39;, &#39;/home/sailaja/poky-chrome/</f=
ont><font size=3D"4">build/tmp/work/core2-poky-</font><font size=3D"4">linu=
x/krb5-1.6.3-r6/temp/log.</font><font size=3D"4">do_install.22702&#39;)<br>

ERROR: Logfile of failure stored in: /home/sailaja/poky-chrome/</font><font=
 size=3D"4">build/tmp/work/core2-poky-</font><font size=3D"4">linux/krb5-1.=
6.3-r6/temp/log.</font><font size=3D"4">do_install.22702<br>Log data follow=
s:<br>
| oe_libinstall: cd util/support<br>| oe_libinstall: install -d /home/saila=
ja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font=
><font size=3D"4">linux/usr/lib/<br>
| oe_libinstall: cp -P libkrb5support.so /home/sailaja/poky-chrome/</font><=
font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux=
/usr/lib/<br>| oe_libinstall: cp -P libkrb5support.so.0 /home/sailaja/poky-=
chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font s=
ize=3D"4">linux/usr/lib/<br>

| oe_libinstall: install -m 0755 libkrb5support.so.0.1 /home/sailaja/poky-c=
hrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font si=
ze=3D"4">linux/usr/lib/<br>| oe_libinstall: ln -sf libkrb5support.so.0.1 /h=
ome/sailaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-po=
ky-</font><font size=3D"4">linux/usr/lib/libkrb5support.</font><font size=
=3D"4">so.0<br>

| oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/</f=
ont><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">=
linux/usr/lib/libkrb5support.</font><font size=3D"4">so<br>| oe_libinstall:=
 cd /home/sailaja/poky-chrome/</font><font size=3D"4">build/tmp/work/core2-=
poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.</font><font size=
=3D"4">3/src<br>

| oe_libinstall: cd util/et<br>| oe_libinstall: install -d /home/sailaja/po=
ky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><fon=
t size=3D"4">linux/usr/lib/<br>|<b> readelf: Error: &#39;libkrb5support.so.=
0.1&#39;: No such file</b><br>
| oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/</f=
ont><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">=
linux/usr/lib/libkrb5support.</font><font size=3D"4">so<br>
| oe_libinstall: cd /home/sailaja/poky-chrome/</font><font size=3D"4">build=
/tmp/work/core2-poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.<=
/font><font size=3D"4">3/src<br>| oe_libinstall: cd lib/crypto<br>| oe_libi=
nstall: install -d /home/sailaja/poky-chrome/</font><font size=3D"4">build/=
tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libk5crypto.so /home/sailaja/poky-chrome/</font><fon=
t size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/us=
r/lib/<br>| oe_libinstall: cp -P libk5crypto.so.3 /home/sailaja/poky-chrome=
/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D=
"4">linux/usr/lib/<br>

| oe_libinstall: install -m 0755 libk5crypto.so.3.1 /home/sailaja/poky-chro=
me/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=
=3D"4">linux/usr/lib/<br>| oe_libinstall: ln -sf libk5crypto.so.3.1 /home/s=
ailaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</=
font><font size=3D"4">linux/usr/lib/libk5crypto.so.3<br>

| oe_libinstall: ln -sf libk5crypto.so.3.1 /home/sailaja/poky-chrome/</font=
><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">lin=
ux/usr/lib/libk5crypto.so<br>| oe_libinstall: cd /home/sailaja/poky-chrome/=
</font><font size=3D"4">build/tmp/work/core2-poky-</font><font size=3D"4">l=
inux/krb5-1.6.3-r6/krb5-1.6.</font><font size=3D"4">3/src<br>

| oe_libinstall: cd lib/krb5<br>| oe_libinstall: install -d /home/sailaja/p=
oky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><fo=
nt size=3D"4">linux/usr/lib/<br>| oe_libinstall: cp -P libkrb5.so /home/sai=
laja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</fo=
nt><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libkrb5.so.3 /home/sailaja/poky-chrome/</font><font =
size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/=
lib/<br>| oe_libinstall: install -m 0755 libkrb5.so.3.3 /home/sailaja/poky-=
chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font s=
ize=3D"4">linux/usr/lib/<br>

| oe_libinstall: ln -sf libkrb5.so.3.3 /home/sailaja/poky-chrome/</font><fo=
nt size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/u=
sr/lib/libkrb5.so.3<br>| oe_libinstall: ln -sf libkrb5.so.3.3 /home/sailaja=
/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><=
font size=3D"4">linux/usr/lib/libkrb5.so<br>

| oe_libinstall: cd /home/sailaja/poky-chrome/</font><font size=3D"4">build=
/tmp/work/core2-poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.<=
/font><font size=3D"4">3/src<br>| oe_libinstall: cd lib/des425<br>| oe_libi=
nstall: install -d /home/sailaja/poky-chrome/</font><font size=3D"4">build/=
tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libdes425.so /home/sailaja/poky-chrome/</font><font =
size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/=
lib/<br>| oe_libinstall: cp -P libdes425.so.3 /home/sailaja/poky-chrome/</f=
ont><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">=
linux/usr/lib/<br>

| oe_libinstall: install -m 0755 libdes425.so.3.0 /home/sailaja/poky-chrome=
/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D=
"4">linux/usr/lib/<br>| oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaj=
a/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font>=
<font size=3D"4">linux/usr/lib/libdes425.so.3<br>

| oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaja/poky-chrome/</font><=
font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux=
/usr/lib/libdes425.so<br>| oe_libinstall: cd /home/sailaja/poky-chrome/</fo=
nt><font size=3D"4">build/tmp/work/core2-poky-</font><font size=3D"4">linux=
/krb5-1.6.3-r6/krb5-1.6.</font><font size=3D"4">3/src<br>

| oe_libinstall: cd lib/krb4<br>| oe_libinstall: install -d /home/sailaja/p=
oky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><fo=
nt size=3D"4">linux/usr/lib/<br>| oe_libinstall: cp -P libkrb4.so /home/sai=
laja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</fo=
nt><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libkrb4.so.2 /home/sailaja/poky-chrome/</font><font =
size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/=
lib/<br>| oe_libinstall: install -m 0755 libkrb4.so.2.0 /home/sailaja/poky-=
chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font s=
ize=3D"4">linux/usr/lib/<br>

| oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky-chrome/</font><fo=
nt size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/u=
sr/lib/libkrb4.so.2<br>| oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja=
/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><=
font size=3D"4">linux/usr/lib/libkrb4.so<br>

| oe_libinstall: cd /home/sailaja/poky-chrome/</font><font size=3D"4">build=
/tmp/work/core2-poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.<=
/font><font size=3D"4">3/src<br>| oe_libinstall: cd lib/gssapi<br>| oe_libi=
nstall: install -d /home/sailaja/poky-chrome/</font><font size=3D"4">build/=
tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libgssapi_krb5.so /home/sailaja/poky-chrome/</font><=
font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux=
/usr/lib/<br>| oe_libinstall: cp -P libgssapi_krb5.so.2 /home/sailaja/poky-=
chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font s=
ize=3D"4">linux/usr/lib/<br>

| oe_libinstall: install -m 0755 libgssapi_krb5.so.2.2 /home/sailaja/poky-c=
hrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font si=
ze=3D"4">linux/usr/lib/<br>| oe_libinstall: ln -sf libgssapi_krb5.so.2.2 /h=
ome/sailaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-po=
ky-</font><font size=3D"4">linux/usr/lib/libgssapi_krb5.</font><font size=
=3D"4">so.2<br>

| oe_libinstall: ln -sf libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/</f=
ont><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">=
linux/usr/lib/libgssapi_krb5.</font><font size=3D"4">so<br>| oe_libinstall:=
 cd /home/sailaja/poky-chrome/</font><font size=3D"4">build/tmp/work/core2-=
poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.</font><font size=
=3D"4">3/src<br>

| oe_libinstall: cd lib/rpc<br>| oe_libinstall: install -d /home/sailaja/po=
ky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><fon=
t size=3D"4">linux/usr/lib/<br>| oe_libinstall: cp -P libgssrpc.so /home/sa=
ilaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</f=
ont><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libgssrpc.so.4 /home/sailaja/poky-chrome/</font><fon=
t size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/us=
r/lib/<br>| oe_libinstall: install -m 0755 libgssrpc.so.4.0 /home/sailaja/p=
oky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><fo=
nt size=3D"4">linux/usr/lib/<br>

| oe_libinstall: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/</font><=
font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux=
/usr/lib/libgssrpc.so.4<br>| oe_libinstall: ln -sf libgssrpc.so.4.0 /home/s=
ailaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</=
font><font size=3D"4">linux/usr/lib/libgssrpc.so<br>

| oe_libinstall: cd /home/sailaja/poky-chrome/</font><font size=3D"4">build=
/tmp/work/core2-poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.<=
/font><font size=3D"4">3/src<br>| oe_libinstall: cd lib/kdb<br>| oe_libinst=
all: install -d /home/sailaja/poky-chrome/</font><font size=3D"4">build/tmp=
/sysroots/core2-poky-</font><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libkdb5.so /home/sailaja/poky-chrome/</font><font si=
ze=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/li=
b/<br>| oe_libinstall: cp -P libkdb5.so.4 /home/sailaja/poky-chrome/</font>=
<font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linu=
x/usr/lib/<br>
| oe_libinstall: install -m 0755 libkdb5.so.4.0 /home/sailaja/poky-chrome/<=
/font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4=
">linux/usr/lib/<br>
| oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja/poky-chrome/</font><fo=
nt size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/u=
sr/lib/libkdb5.so.4<br>| oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja=
/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><=
font size=3D"4">linux/usr/lib/libkdb5.so<br>

| oe_libinstall: cd /home/sailaja/poky-chrome/</font><font size=3D"4">build=
/tmp/work/core2-poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.<=
/font><font size=3D"4">3/src<br>| oe_libinstall: cd lib/kadm5/clnt<br>| oe_=
libinstall: install -d /home/sailaja/poky-chrome/</font><font size=3D"4">bu=
ild/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libkadm5clnt.so /home/sailaja/poky-chrome/</font><fo=
nt size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/u=
sr/lib/<br>| oe_libinstall: cp -P libkadm5clnt.so.5 /home/sailaja/poky-chro=
me/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=
=3D"4">linux/usr/lib/<br>

| oe_libinstall: install -m 0755 libkadm5clnt.so.5.1 /home/sailaja/poky-chr=
ome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=
=3D"4">linux/usr/lib/<br>| oe_libinstall: ln -sf libkadm5clnt.so.5.1 /home/=
sailaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-<=
/font><font size=3D"4">linux/usr/lib/libkadm5clnt.so.</font><font size=3D"4=
">5<br>

| oe_libinstall: ln -sf libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/</fon=
t><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">li=
nux/usr/lib/libkadm5clnt.so<br>| oe_libinstall: cd /home/sailaja/poky-chrom=
e/</font><font size=3D"4">build/tmp/work/core2-poky-</font><font size=3D"4"=
>linux/krb5-1.6.3-r6/krb5-1.6.</font><font size=3D"4">3/src<br>

| oe_libinstall: cd lib/kadm5/srv<br>| oe_libinstall: install -d /home/sail=
aja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</fon=
t><font size=3D"4">linux/usr/lib/<br>| oe_libinstall: cp -P libkadm5srv.so =
/home/sailaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-=
poky-</font><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: cp -P libkadm5srv.so.5 /home/sailaja/poky-chrome/</font><f=
ont size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">linux/=
usr/lib/<br>| oe_libinstall: install -m 0755 libkadm5srv.so.5.1 /home/saila=
ja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-poky-</font=
><font size=3D"4">linux/usr/lib/<br>

| oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome/</font=
><font size=3D"4">build/tmp/sysroots/core2-poky-</font><font size=3D"4">lin=
ux/usr/lib/libkadm5srv.so.5<br>| oe_libinstall: ln -sf libkadm5srv.so.5.1 /=
home/sailaja/poky-chrome/</font><font size=3D"4">build/tmp/sysroots/core2-p=
oky-</font><font size=3D"4">linux/usr/lib/libkadm5srv.so<br>

| oe_libinstall: cd /home/sailaja/poky-chrome/</font><font size=3D"4">build=
/tmp/work/core2-poky-</font><font size=3D"4">linux/krb5-1.6.3-r6/krb5-1.6.<=
/font><font size=3D"4">3/src<br>| mv: cannot stat `/home/sailaja/poky-chrom=
e/</font><font size=3D"4">build/tmp/work/core2-poky-</font><font size=3D"4"=
>linux/krb5-1.6.3-r6/image/usr/</font><font size=3D"4">bin/ftp&#39;: No suc=
h file or directory<br>

| ERROR: Task failed: (&#39;function do_install failed&#39;, &#39;/home/sai=
laja/poky-chrome/</font><font size=3D"4">build/tmp/work/core2-poky-</font><=
font size=3D"4">linux/krb5-1.6.3-r6/temp/log.</font><font size=3D"4">do_ins=
tall.22702&#39;)<br>
NOTE: package krb5-1.6.3-r6: task do_install: Failed<br>
ERROR: Task 1077 (/home/sailaja/poky-chrome/</font><font size=3D"4">meta/re=
cipes-support/krb/<a href=3D"http://krb5_1.6.3.bb" target=3D"_blank">krb5_1=
.6.3.bb</a>, do_install) failed with 1<br><b>ERROR: &#39;/home/sailaja/poky=
-chrome/meta/recipes-support/krb/<a href=3D"http://krb5_1.6.3.bb" target=3D=
"_blank">krb5_1.6.3.bb</a>&#39; failed<br>

</b><br><br>appreciated if anyone helps me.<br><br><br>Thanks &amp; Regards=
<br>SAI</font><div><div></div><div class=3D"h5"><br><br><br><br><br><br><br=
><br><div class=3D"gmail_quote">On Fri, Feb 25, 2011 at 12:28 PM, Tian, Kev=
in <span dir=3D"ltr">&lt;<a href=3D"mailto:kevin.tian@intel.com" target=3D"=
_blank">kevin.tian@intel.com</a>&gt;</span> wrote:<br>

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

</div></div><div><div></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US=
">=A0</span></p><p class=3D"MsoNormal" style=3D"margin-bottom: 12pt;"><span=
 lang=3D"EN-US">Hi,<br><br><br>I am trying to build an image on poky platfo=
rm. I didn&#39;t find some packages like<b> krb and directfb</b>, so I copi=
ed those packages from open-embedded. but I am getting an <b>error</b> like=
=A0=A0 <br>

=A0<b>package krb5-1.6.3-r6: task do_install: Failed</b><br><br>Can anyone =
help me to fix this problem.<br><br>Thanks &amp; Regards,<br>SAI<br><br><br=
><br><br><br></span></p></div></div></div></div></div></blockquote></div>

<br>
</div></div></blockquote></div><br>

--000e0cd146fc22e960049d1a8165--
