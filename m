Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49BF4E008CF; Wed, 21 Jan 2015 03:46:56 -0800 (PST)
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
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A73E00873
	for <poky@yoctoproject.org>; Wed, 21 Jan 2015 03:46:49 -0800 (PST)
Received: by mail-wi0-f173.google.com with SMTP id r20so33625487wiv.0
	for <poky@yoctoproject.org>; Wed, 21 Jan 2015 03:46:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=WCw1Dwi2xVgHZfF6HXnOzP14l0GuYiXxTxenCo3hpn4=;
	b=UDm6dBhwrDkmsIMk4fa2nEabraw4vsbou0rjr2sfWpOHoHqnck998Srx0BgTtNlqJk
	/WV0NPp0j3+YAdv4USw1MRwkfloUjnBrzsVNovkkFqy8APr2RZleyCMZ37eGC/Z6hx4C
	4VEs+gNJGcsct2t0sRy4tDFs3VTFDlpK7/9iLw0uAk5Of7jWQatmnLSspr1kr5SYpqOs
	3i27q34Qw9FIVY/nRjYrQJzk2Ir3CeqbEyMhmG2T4feeAKSuXBXO4vtKe1/YQiIGtkR4
	vOIysMoU0fl1rDREiSkM91OUHyXme/X+YD8JMX1ZcnsgjInz0CMeK/b1nhIiUdjfHAuk
	fkcA==
MIME-Version: 1.0
X-Received: by 10.194.59.234 with SMTP id c10mr10093914wjr.49.1421840808816;
	Wed, 21 Jan 2015 03:46:48 -0800 (PST)
Received: by 10.27.86.161 with HTTP; Wed, 21 Jan 2015 03:46:48 -0800 (PST)
In-Reply-To: <CAJTo0LZEFMprRsOworZ8soVNbRyHQZDaPGk+cm2ThJyyfhMqpg@mail.gmail.com>
References: <CADnUhn3xm92ocTKELRH6-WeYmm5eXPOz2Te+_r3Zz1FDGEGWrw@mail.gmail.com>
	<CAJTo0LZEFMprRsOworZ8soVNbRyHQZDaPGk+cm2ThJyyfhMqpg@mail.gmail.com>
Date: Wed, 21 Jan 2015 13:46:48 +0200
Message-ID: <CADnUhn2E5GQ2Lh1C8axfN5YLgb2QF3cMucFgK0MJ+7z5dgHJjQ@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Poky Project <poky@yoctoproject.org>,
	openembedded-devel@lists.openembedded.org
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
X-List-Received-Date: Wed, 21 Jan 2015 11:46:56 -0000
Content-Type: multipart/alternative; boundary=047d7ba96ed6563da1050d281c16

--047d7ba96ed6563da1050d281c16
Content-Type: text/plain; charset=UTF-8

Hi,
reason for crash was most probably the fact that poky and meta-oe layer was
on dora branch while poky was on daisy branch. I switched both on daisy and
build passed.
Thanks,
matti

2015-01-20 19:02 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

> You should probably ask this on the appropriate mailing list for meta-oe: <
> openembedded-devel@lists.openembedded.org>.
>
> Ross
>
> On 19 January 2015 at 07:54, matti kaasinen <matti.kaasinen@gmail.com>
> wrote:
>
>> Hi!
>>
>> I tried to build core-image-minimal with some packages added for
>> poky/daisy.
>>
>> I got following error log:
>> ERROR: QA Issue: File '/usr/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so'
>> from klibc was already stripped, this will prevent future debugging!
>> ERROR: QA Issue: File
>> '/usr/lib/klibc/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so' from klibc was
>> already stripped, this will prevent future debugging!
>> ERROR: QA run found fatal errors. Please consider fixing them.
>> ERROR: Function failed: do_package_qa
>> ERROR: Logfile of failure stored in:
>> /TMPDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/klibc/2.0.2-r1.0/temp/log.do_package.15991
>> ERROR: Task 1786
>> (/yocto/meta-openembedded/meta-initramfs/recipes-devtools/klibc/
>> klibc_2.0.2.bb, do_package) failed with exit code '1'
>> NOTE: Tasks Summary: Attempted 1418 tasks of which 16 didn't need to be
>> rerun and 1 failed.
>> Waiting for 0 running tasks to finish:
>>
>> Summary: 1 task failed:
>>   /yocto/meta-openembedded/meta-initramfs/recipes-devtools/klibc/
>> klibc_2.0.2.bb, do_package
>> Summary: There were 29 WARNING messages shown.
>> Summary: There were 4 ERROR messages shown, returning a non-zero exit
>> code.
>>
>>
>> Any suggestions to work this around?
>>
>> -Matti
>>
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>>
>

--047d7ba96ed6563da1050d281c16
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><div>reason for crash was most probably =
the fact that poky and meta-oe layer was on dora branch while poky was on d=
aisy branch. I switched both on daisy and build passed.<br></div><div>Thank=
s,<br></div><div>matti<br></div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">2015-01-20 19:02 GMT+02:00 Burton, Ross <span dir=3D"l=
tr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.bur=
ton@intel.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D=
"ltr">You should probably ask this on the appropriate mailing list for meta=
-oe: &lt;<a href=3D"mailto:openembedded-devel@lists.openembedded.org" targe=
t=3D"_blank">openembedded-devel@lists.openembedded.org</a>&gt;.<div><br></d=
iv><div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote"><div><div class=3D"h5">On 19 January 2015 at 07:54, matti kaasinen <=
span dir=3D"ltr">&lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"=
_blank">matti.kaasinen@gmail.com</a>&gt;</span> wrote:<br></div></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><div><div=
>Hi!<br><br></div>I tried to build core-image-minimal with some packages ad=
ded for poky/daisy.<br><br></div>I got following error log:<br><div>ERROR: =
QA Issue: File &#39;/usr/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so&#39; from=
 klibc was already stripped, this will prevent future debugging!<br>ERROR: =
QA Issue: File &#39;/usr/lib/klibc/lib/klibc-JmwOsNdzWCnU2MZ15xBYh4DCl3s.so=
&#39; from klibc was already stripped, this will prevent future debugging!<=
br>ERROR: QA run found fatal errors. Please consider fixing them.<br>ERROR:=
 Function failed: do_package_qa<br>ERROR: Logfile of failure stored in: /TM=
PDIR/work/armv7a-vfp-neon-poky-linux-gnueabi/klibc/2.0.2-r1.0/temp/log.do_p=
ackage.15991<br>ERROR: Task 1786 (/yocto/meta-openembedded/meta-initramfs/r=
ecipes-devtools/klibc/<a href=3D"http://klibc_2.0.2.bb" target=3D"_blank">k=
libc_2.0.2.bb</a>, do_package) failed with exit code &#39;1&#39;<br>NOTE: T=
asks Summary: Attempted 1418 tasks of which 16 didn&#39;t need to be rerun =
and 1 failed.<br>Waiting for 0 running tasks to finish:<br><br>Summary: 1 t=
ask failed:<br>=C2=A0 /yocto/meta-openembedded/meta-initramfs/recipes-devto=
ols/klibc/<a href=3D"http://klibc_2.0.2.bb" target=3D"_blank">klibc_2.0.2.b=
b</a>, do_package<br>Summary: There were 29 WARNING messages shown.<br>Summ=
ary: There were 4 ERROR messages shown, returning a non-zero exit code.<br>=
<br><br></div><div>Any suggestions to work this around?<span><font color=3D=
"#888888"><br><br></font></span></div><span><font color=3D"#888888"><div>-M=
atti<br></div></font></span></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blank">=
https://lists.yoctoproject.org/listinfo/poky</a><br>
<br></font></span></blockquote></div><br></div>
</blockquote></div><br></div>

--047d7ba96ed6563da1050d281c16--
