Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B5C2E006EF; Tue, 20 Jan 2015 09:03:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9CABE006EF
	for <poky@yoctoproject.org>; Tue, 20 Jan 2015 09:03:16 -0800 (PST)
Received: by mail-qa0-f48.google.com with SMTP id v8so29020047qal.7
	for <poky@yoctoproject.org>; Tue, 20 Jan 2015 09:03:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QusvvGCs4CYi5Qa/9185DAsWU4Qpflx6Iak2KFPNgzo=;
	b=Dg8CDOH3gMFU++1e0nDnYksYRO3FxTpxbdyBeE78sCd9PEf/01VekbqpewuxsGCpLO
	KPHgC99/H7kI3B/7VT2OblbUoNNGUrcbU8hsJcTGzmSWrCXMaemfa+ti/g7NUwhEWR1W
	7SYNK79oxJ+yzqYBMgALgm55z7ODcio+Gb+0nctpMLB4Mb+JaAJ5bBNB4KP4I1lFOLUu
	V4VRN+s8PGd3FwBYX4qn15C8OqRsi83M7t5DhVBfCK0rK9VhNVJNTG/t9q2ELNTRq4Gi
	xarllHsWEmEDP+1ot5niXZQ8HBTeFXJ6BFKzcx0YC62R1R/VvH7Oqo+oLrtEpbiB8TnC
	MszA==
X-Gm-Message-State: ALoCoQmRK/o+b7my//cUSv/NbfK60gg+3HtU/8Bvw2Rs4fy82f1RFtlKYXNHbcc4362YHXeTj9yI
X-Received: by 10.140.92.138 with SMTP id b10mr56004194qge.59.1421773394422;
	Tue, 20 Jan 2015 09:03:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.166 with HTTP; Tue, 20 Jan 2015 09:02:54 -0800 (PST)
In-Reply-To: <CADnUhn3xm92ocTKELRH6-WeYmm5eXPOz2Te+_r3Zz1FDGEGWrw@mail.gmail.com>
References: <CADnUhn3xm92ocTKELRH6-WeYmm5eXPOz2Te+_r3Zz1FDGEGWrw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 20 Jan 2015 17:02:54 +0000
Message-ID: <CAJTo0LZEFMprRsOworZ8soVNbRyHQZDaPGk+cm2ThJyyfhMqpg@mail.gmail.com>
To: matti kaasinen <matti.kaasinen@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: klibc_2.0.2.bb do_package crashes
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
X-List-Received-Date: Tue, 20 Jan 2015 17:03:25 -0000
Content-Type: multipart/alternative; boundary=001a113a5d5e20832e050d186ac8

--001a113a5d5e20832e050d186ac8
Content-Type: text/plain; charset=UTF-8

You should probably ask this on the appropriate mailing list for meta-oe: <
openembedded-devel@lists.openembedded.org>.

Ross

On 19 January 2015 at 07:54, matti kaasinen <matti.kaasinen@gmail.com>
wrote:

> Hi!
>
> I tried to build core-image-minimal with some packages added for
> poky/daisy.
>
> I got following error log:
> ERROR: QA Issue: File '/usr/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so' from
> klibc was already stripped, this will prevent future debugging!
> ERROR: QA Issue: File
> '/usr/lib/klibc/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so' from klibc was
> already stripped, this will prevent future debugging!
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/klibc/2.0.2-r1.0/temp/log.do_package.15991
> ERROR: Task 1786
> (/yocto/meta-openembedded/meta-initramfs/recipes-devtools/klibc/
> klibc_2.0.2.bb, do_package) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1418 tasks of which 16 didn't need to be
> rerun and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>   /yocto/meta-openembedded/meta-initramfs/recipes-devtools/klibc/
> klibc_2.0.2.bb, do_package
> Summary: There were 29 WARNING messages shown.
> Summary: There were 4 ERROR messages shown, returning a non-zero exit code.
>
>
> Any suggestions to work this around?
>
> -Matti
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>

--001a113a5d5e20832e050d186ac8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You should probably ask this on the appropriate mailing li=
st for meta-oe: &lt;<a href=3D"mailto:openembedded-devel@lists.openembedded=
.org">openembedded-devel@lists.openembedded.org</a>&gt;.<div><br></div><div=
>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 January 2015 at 07:54, matti kaasinen <span dir=3D"ltr">&lt;<a href=
=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.kaasinen@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r"><div><div>Hi!<br><br></div>I tried to build core-image-minimal with some=
 packages added for poky/daisy.<br><br></div>I got following error log:<br>=
<div>ERROR: QA Issue: File &#39;/usr/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.=
so&#39; from klibc was already stripped, this will prevent future debugging=
!<br>ERROR: QA Issue: File &#39;/usr/lib/klibc/lib/klibc-JmwOsNdzWCnU2MZ15x=
BYh4DCl3s.so&#39; from klibc was already stripped, this will prevent future=
 debugging!<br>ERROR: QA run found fatal errors. Please consider fixing the=
m.<br>ERROR: Function failed: do_package_qa<br>ERROR: Logfile of failure st=
ored in: /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/klibc/2.0.2-r1.0/t=
emp/log.do_package.15991<br>ERROR: Task 1786 (/yocto/meta-openembedded/meta=
-initramfs/recipes-devtools/klibc/<a href=3D"http://klibc_2.0.2.bb" target=
=3D"_blank">klibc_2.0.2.bb</a>, do_package) failed with exit code &#39;1&#3=
9;<br>NOTE: Tasks Summary: Attempted 1418 tasks of which 16 didn&#39;t need=
 to be rerun and 1 failed.<br>Waiting for 0 running tasks to finish:<br><br=
>Summary: 1 task failed:<br>=C2=A0 /yocto/meta-openembedded/meta-initramfs/=
recipes-devtools/klibc/<a href=3D"http://klibc_2.0.2.bb" target=3D"_blank">=
klibc_2.0.2.bb</a>, do_package<br>Summary: There were 29 WARNING messages s=
hown.<br>Summary: There were 4 ERROR messages shown, returning a non-zero e=
xit code.<br><br><br></div><div>Any suggestions to work this around?<span c=
lass=3D"HOEnZb"><font color=3D"#888888"><br><br></font></span></div><span c=
lass=3D"HOEnZb"><font color=3D"#888888"><div>-Matti<br></div></font></span>=
</div>
<br>--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></blockquote></div><br></div>

--001a113a5d5e20832e050d186ac8--
