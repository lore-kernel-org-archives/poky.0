Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 951BEE00833; Mon,  7 Mar 2016 08:32:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D93E0073D
	for <poky@yoctoproject.org>; Mon,  7 Mar 2016 08:32:33 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id m184so137169176iof.1
	for <poky@yoctoproject.org>; Mon, 07 Mar 2016 08:32:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=iv3/GqcMMfqlgTGOG2k+Jxqi44XwzF7PliDdyNzzgJA=;
	b=aFI8xKeMUQbJjgeYFEJWhPPgTgIpEyePmmkMg4Sy6GrLrTvIsByyAXHqG3CUnmafS7
	RmNnceRfe1R+Hok0x+xAQ8m3M8fIPDFU4BESuM6NlLxo9rBrWTcpcBHz+5rrnT+Cuw+b
	By7iazTYcGxnh4DpbneG+m53yZILIiYUt+6cv3jKGjPDsebZ3lUrLeE5G3hOQ46XxHcD
	UR6djJCQf8iw2WL4cVzNvEMUVuuqea99aLwKHaiaSEE951Ur9229EUCXyx494Ot8/m3o
	o8QedxKVR1AnvwY4N4M22YJBa7Apb6V7HMUPm6zYKBnG8TNLzI1U5qFUTCvkMXdkWsug
	kfeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=iv3/GqcMMfqlgTGOG2k+Jxqi44XwzF7PliDdyNzzgJA=;
	b=QmzTEYbwhA6HywTnyDIpjbBUgwFNSdEFXivmWFs5TMW2X3wkitGCsi4YAy3EMygwNo
	8mI/37nmi2VNXctXvo7D4gl2Xp0fKWz6VOzhHlrcGbbwldlPPRTkGoN7Yjso4JTM6KPi
	aYR0nSyNK3y7F7+BMOVEu7G3WPev9lVown0LMydfT/N5wiqmXgKc5qVb7lTkvu+toNag
	c4i+coUED5o7IyMvQ9aeXxUsIpVMLik7RXgjreec3JJyeY3iC5zgN8fU2ydqJk04Lmx3
	wvV9KRE/7VPnzr5o7/KdFk+BKcZKuxtCbmOuIVVYRw5lud50boN3qqFllcsL3Zwk0WNl
	yRsg==
X-Gm-Message-State: AD7BkJIeLxNqb7UFgnbF14Pwsov4/jO268zt6ABf32g0SyoTiWlf4+0t3s1GjKdL0kjU0Fan/qppyH9HERzGJl7T
X-Received: by 10.107.16.19 with SMTP id y19mr8226606ioi.148.1457368353403;
	Mon, 07 Mar 2016 08:32:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Mon, 7 Mar 2016 08:32:14 -0800 (PST)
In-Reply-To: <BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
References: <BLUPR20MB0020FE972AE2DAC1FFE967B2B9B10@BLUPR20MB0020.namprd20.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 7 Mar 2016 16:32:14 +0000
Message-ID: <CAJTo0LaiG5RD14Cvv=sS=8sPnoF2HzqduTk1avY-t1hO32RBEA@mail.gmail.com>
To: Thomas Arcuri <tarcuri@androcs.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: fresh poky clone build fails when recipe chown's files during do_install (tzdata_2016a.bb)
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
X-List-Received-Date: Mon, 07 Mar 2016 16:32:37 -0000
Content-Type: multipart/alternative; boundary=001a113fd1ea030565052d780384

--001a113fd1ea030565052d780384
Content-Type: text/plain; charset=UTF-8

Can you please attach the entirety of log.do_install.9588?

Thanks,
Ross

On 7 March 2016 at 13:55, Thomas Arcuri <tarcuri@androcs.com> wrote:

> After cloning a fresh copy of poky on the jethro branch I ran the
> following to start the build:
>
>
> source oe-init-build-env
>
> bitbake core-image-minimal
>
>
> A task under the meta/recipes-extended/tzdata directory failed during the
> do_install step when it apparently attempted to chown the files to root.
>
>
> ERROR: Task 1303
> (/storage/home/tarcuri/src/stmp/zynq/jethro/poky/meta/recipes-extended/tzdata/
> tzdata_2016a.bb, do_install) failed with exit code '1'
>
>
> As I understand it is supposed to use pseudo to do this - I was running
> the commands as a normal un-privileged user. This was a fresh clone of poky
> and did not include any other configurations or added layers. Below is an
> excerpt from the log file.
>
>
> DEBUG: Executing shell function do_install
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/localtime':
> Operation not permitted
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/timezone':
> Operation not permitted
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc':
> Operation not permitted
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo/Japan':
> Operation not permitted
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo/NZ-CHAT':
> Operation not permitted
>
>
> ...
>
>
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zoneinfo':
> Operation not permitted
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share':
> Operation not permitted
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr':
> Operation not permitted
> chown: changing ownership of
> '/storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image':
> Operation not permitted
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_install (log file is located at
> /storage/home/tarcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/temp/log.do_install.9588)
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

--001a113fd1ea030565052d780384
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you please attach the entirety of log.do_install.9588?=
<div><br></div><div>Thanks,</div><div>Ross</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On 7 March 2016 at 13:55, Thomas Arcur=
i <span dir=3D"ltr">&lt;<a href=3D"mailto:tarcuri@androcs.com" target=3D"_b=
lank">tarcuri@androcs.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex">




<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>After cloning a fresh copy of poky on the jethro branch I ran the follow=
ing to start the build:</p>
<p><br>
</p>
<p>source oe-init-build-env</p>
<p>bitbake core-image-minimal</p>
<p><br>
</p>
<p>A task under the meta/recipes-extended/tzdata directory failed during th=
e do_install step when it apparently attempted to chown the files to root.<=
/p>
<p><br>
</p>
<p>ERROR: Task 1303 (/storage/home/tarcuri/src/stmp/zynq/jethro/poky/meta/r=
ecipes-extended/tzdata/<a href=3D"http://tzdata_2016a.bb" target=3D"_blank"=
>tzdata_2016a.bb</a>, do_install) failed with exit code &#39;1&#39;<br>
</p>
<p><br>
</p>
<p>As I understand it is supposed to use pseudo to do this - I was running =
the commands as a normal un-privileged user. This was a fresh clone of poky=
 and did not include any other configurations or added layers. Below is an =
excerpt from the log file.</p>
<p><br>
</p>
<p>DEBUG: Executing shell function do_install<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/localtime&#3=
9;: Operation not permitted<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc/timezone&#39=
;: Operation not permitted<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/etc&#39;: Operat=
ion not permitted<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zonein=
fo/Japan&#39;: Operation not permitted<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zonein=
fo/NZ-CHAT&#39;: Operation not permitted<br>
</p>
<p><br>
</p>
<p>...</p>
<p><br>
</p>
<p>chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/je=
thro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share/zon=
einfo&#39;: Operation not permitted<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr/share&#39;: =
Operation not permitted<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image/usr&#39;: Operat=
ion not permitted<br>
chown: changing ownership of &#39;/storage/home/tarcuri/src/stmp/zynq/jethr=
o/poky/build/tmp/work/all-poky-linux/tzdata/2016a-r0/image&#39;: Operation =
not permitted<br>
WARNING: exit code 1 from a shell command.<br>
ERROR: Function failed: do_install (log file is located at /storage/home/ta=
rcuri/src/stmp/zynq/jethro/poky/build/tmp/work/all-poky-linux/tzdata/2016a-=
r0/temp/log.do_install.9588)<br>
<br>
</p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></blockquote></div><br></div>

--001a113fd1ea030565052d780384--
