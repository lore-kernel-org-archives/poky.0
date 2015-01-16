Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44822E00757; Fri, 16 Jan 2015 02:51:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.177 listed in list.dnswl.org]
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EA6BE004D6
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 02:51:43 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id q59so19519449wes.8
	for <poky@yoctoproject.org>; Fri, 16 Jan 2015 02:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=xH3yorYS/feV+ts2+sg8eaUnyUjKk96raUs2SFYmJLk=;
	b=DtcLXeu/ZmUW6X+R9fEHbjcHsPP60qFi8iJLYw0/H2DcsuMTFfJtKEKqULhdBmK9U0
	J8XKwsjT2y547IKPSz29cuN5LNGH6oWnvynHD+PWkmkXSR9sAJa6SWog2r5yOVklx46g
	J+C39sf0T3KbyprhIDklppgaYgN70e7prZqeeYNMDtwFSqiBfXyFdy4b5+Lb4CBGb79j
	GzbdNScaijTiZgC8mOdDQS+DN5GqX4vZMmkW17uISVUD67DQtY8J4QVLKhmMrbuAZ4Fm
	VcHkxZqwhchGhfZPtjtp1ZCmpuJBXHYHRS/uGr6/FWOhAcfVt8cMnETkJ1OQUezJtHFk
	Z37A==
MIME-Version: 1.0
X-Received: by 10.194.234.40 with SMTP id ub8mr28353430wjc.100.1421405503118; 
	Fri, 16 Jan 2015 02:51:43 -0800 (PST)
Received: by 10.27.86.161 with HTTP; Fri, 16 Jan 2015 02:51:43 -0800 (PST)
In-Reply-To: <CADnUhn0qnExJ7NsUtD6+M7p14u3prcVU8UL5g_BthaBcfwFbNg@mail.gmail.com>
References: <CADnUhn0qnExJ7NsUtD6+M7p14u3prcVU8UL5g_BthaBcfwFbNg@mail.gmail.com>
Date: Fri, 16 Jan 2015 12:51:43 +0200
Message-ID: <CADnUhn2MGgSu4TJW7K1Y5gvz0UXy-MrqXWcBbg06XYR-ADuKwA@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: poky@yoctoproject.org
Subject: Re: apache2-native_2.4.6.bb build crash
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
X-List-Received-Date: Fri, 16 Jan 2015 10:51:55 -0000
Content-Type: multipart/alternative; boundary=089e01493c7c186436050cc2c2c7

--089e01493c7c186436050cc2c2c7
Content-Type: text/plain; charset=UTF-8

In addition to that I get following error messages before above error
message in error log when I first build (bitbake) libpcre:
ERROR: QA Issue: File '/usr/lib/klibc-8RxSolA65chPbW7W8KzRgM5xJVc.so' from
klibc was already stripped, this will prevent future debugging!
[already-stripped]
ERROR: QA Issue: File
'/usr/lib/klibc/lib/klibc-8RxSolA65chPbW7W8KzRgM5xJVc.so' from klibc was
already stripped, this will prevent future debugging! [already-stripped]
ERROR: Function failed: do_configure (log file is located at
/TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_configure.21991)
ERROR: Logfile of failure stored in:
/TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_configure.21991



2015-01-16 11:09 GMT+02:00 matti kaasinen <matti.kaasinen@gmail.com>:

> Hi!
>
> I try to build core-image-minimal for poky/dizzy. Run crashes when
> excuting apache2-native_2.4.6.bb. Error message tells that:
>
> | checking for pcre-config...
> /TMPDIR/sysroots/x86_64-linux/usr/bin/pcre-config
> | configure: error: Did not find pcre-config script at
> /TMPDIR/sysroots/x86_64-linux/usr/bin/pcre-config
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> /TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_configure.16985)
>
> Cheers,
> Matti
>
>
>

--089e01493c7c186436050cc2c2c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">In addition to that I get following error messages before =
above error message in error log when I first build (bitbake) libpcre:<br>E=
RROR: QA Issue: File &#39;/usr/lib/klibc-8RxSolA65chPbW7W8KzRgM5xJVc.so&#39=
; from klibc was already stripped, this will prevent future debugging! [alr=
eady-stripped]<br>ERROR: QA Issue: File &#39;/usr/lib/klibc/lib/klibc-8RxSo=
lA65chPbW7W8KzRgM5xJVc.so&#39; from klibc was already stripped, this will p=
revent future debugging! [already-stripped]<br>ERROR: Function failed: do_c=
onfigure (log file is located at /TMPDIR/work/x86_64-linux/apache2-native/2=
.4.6-r0/temp/log.do_configure.21991)<br>ERROR: Logfile of failure stored in=
: /TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_configure.2=
1991<br><br><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">2015-01-16 11:09 GMT+02:00 matti kaasinen <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen@gmai=
l.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><d=
iv><div><div>Hi!<br><br></div>I try to build core-image-minimal for poky/di=
zzy. Run crashes when excuting <a href=3D"http://apache2-native_2.4.6.bb" t=
arget=3D"_blank">apache2-native_2.4.6.bb</a>. Error message tells that:<br>=
<br>| checking for pcre-config... /TMPDIR/sysroots/x86_64-linux/usr/bin/pcr=
e-config<br>| configure: error: Did not find pcre-config script at /TMPDIR/=
sysroots/x86_64-linux/usr/bin/pcre-config<br>| WARNING: exit code 1 from a =
shell command.<br>| ERROR: Function failed: do_configure (log file is locat=
ed at /TMPDIR/work/x86_64-linux/apache2-native/2.4.6-r0/temp/log.do_configu=
re.16985)<br><br></div>Cheers,<br></div>Matti<br><div><div><br><br></div></=
div></div>
</blockquote></div><br></div>

--089e01493c7c186436050cc2c2c7--
