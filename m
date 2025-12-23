Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10E41E6FE2F
	for <webhook@archiver.kernel.org>; Tue, 23 Dec 2025 20:28:36 +0000 (UTC)
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.108368.1766521708401415040
 for <poky@lists.yoctoproject.org>;
 Tue, 23 Dec 2025 12:28:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=InGCIIbI;
 spf=pass (domain: gmail.com, ip: 74.125.224.48, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-6446704997cso4393441d50.2
        for <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 12:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766521707; x=1767126507; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c2iqraPK24lF3bV3e2/7qlLWylugAi0o06twp260N8U=;
        b=InGCIIbIrAfu2o/mS45RscWOXc2mtXzyz5g54byC/FjyYq1RryDCMHRCpa48oNCN50
         jAuo6NXxjRWizUlbok7h3Q6L82FRkpiv5CnB3lxQkZT9ZJZlc+0ALpYEPbTZcnS/ofoF
         Rr1OhBY9ffPa7VZTuPogDiS9ERR0Y4YhcjWom+zIdXI5MC+EYLK8zqDRgwJd3kB7mwZU
         J66uWVga2ATfdpF/fZFXlWbeDDPpGAkihCBr0jILvazdNz3kTj0IctrcxoG6N+VurFEh
         NoM0BLJU6nUjm/rqCN5v2aZ074I3SVI4q2ZEP3PTwOZpMPqcZU6uEWM51vri7pXrYRzL
         nW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521707; x=1767126507;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c2iqraPK24lF3bV3e2/7qlLWylugAi0o06twp260N8U=;
        b=IU27iv2VDRYAlPwLhk5snFGYRf3giCXVvzNOEoFFPV5gtD2JJUCdOYOohYMoe++pmg
         V/RuMBL1eMV7W/ZyvS7a/OQhIg1QKc5UYBPcqzwkG/l+oIgXru621yqnV+PY7Z+W369o
         Mzb/txp2sz7yxXdmHdE3i6q6u2VafA5i5Yj7Gg+KCAWhZUnMbRudKpkAsQ9dbWSKTsGO
         ghvrIwbb7gaxCu+2591aos5SDK65xJBVQlpy9knI8Xv0pEmFroW9jHJbGKvV81x2f5AV
         EE5hTbv+ziEMhYcbMUjTGFadQj15Qn3qMrLfPxQG1W3oKTBAKVzK6n2z6Mf+RBMwJ96q
         VBcg==
X-Gm-Message-State: AOJu0YzZDQ7xH7Kg3i//v9nyjUFfPrZ51aOReujfWdtOm2P44l3xeKw4
	1jqi6y4W8IVWyyOQ2yDCQvwCAlKUHuFhRwLyYFL2dgo4iSl7Nl1HfEYGOIe2KLwT8aM1ZQ7WnuD
	Usfv+PS8WEQCXPCoX46JP+38ogTNsmaModJ7urS0=
X-Gm-Gg: AY/fxX5p5a7iZGo4cctA7n3CrRSl/urlWHMlRJyPu6G3KKu8p4EIXhX+Ozxcq88L0Gj
	0vpIWz6Mw11lnJ9/DjA4gmYoPwfBbBrRsYjISKOhDgpaR5t9UfaSxPlYmBqc6kwun6cYxviDM+n
	dF3mFUlaZPiRxeKvxFbj6gBy4CP7Dm5m2a6YyeTpflLwCSUFlY2UgW0HPn/1osU1BS8Gw7zn6bX
	ZgTN+RhP1Ab2NXmYur5D7tUsDJJ6ojdE9mY1NBLnpPuZonZTkqp6B9RkgnRiX2q463mvj5MJNs7
	KR2bc0BVKUTUwmjY6i1PWvtr4ZIJiB/+9n5ndhjvPyVrPeJ1EmJfFbk8Rg2yxYGAG1Sak7AlVR1
	dydANmMHxEz3MqjX9MB/Gg6g1dDX48IEUCyhVZTtKiQ==
X-Google-Smtp-Source: AGHT+IE+uXbknfkNQBkgK3AfPilJxveyT256NBlFI+iuduFdc5vpixkwaA5gcOBY6DJhMkvxq8uEGlfsTly/MhbtX/E=
X-Received: by 2002:a05:690e:400f:b0:644:71e8:cd02 with SMTP id
 956f58d0204a3-6466a836927mr11178733d50.4.1766521707414; Tue, 23 Dec 2025
 12:28:27 -0800 (PST)
MIME-Version: 1.0
References: <20251223082457.3465827-1-mikko.rapeli@linaro.org>
In-Reply-To: <20251223082457.3465827-1-mikko.rapeli@linaro.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 23 Dec 2025 12:28:00 -0800
X-Gm-Features: AQt7F2pIk84U-vyuqrVkqT5BK75WeSGBuwA5Zse9noY-DhB2zDffTxLs8BI3ffQ
Message-ID: <CAMKF1srLACe_KRciXeWxZ+PMgVmWdrH-Mp6sgcS8VtJtvgqA7w@mail.gmail.com>
Subject: Re: [poky] [PATCH] genericarm64.conf: set runqemu memory config to
 512 Mb
To: mikko.rapeli@linaro.org
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dbc8300646a462e2"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 23 Dec 2025 20:28:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13811

--000000000000dbc8300646a462e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 23, 2025 at 12:25=E2=80=AFAM Mikko Rapeli via lists.yoctoprojec=
t.org
<mikko.rapeli=3Dlinaro.org@lists.yoctoproject.org> wrote:

> The genericarm64 initramfs is larger than 256 Mb which is
> the default runqemu memory config and thus boot fails when
> extracted initramfs does not fit.
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta-yocto-bsp/conf/machine/genericarm64.conf | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf
> b/meta-yocto-bsp/conf/machine/genericarm64.conf
> index 5d1010e..ce22b17 100644
> --- a/meta-yocto-bsp/conf/machine/genericarm64.conf
> +++ b/meta-yocto-bsp/conf/machine/genericarm64.conf
> @@ -57,6 +57,7 @@ QB_MACHINE ?=3D "-machine virt"
>  QB_CPU ?=3D "-cpu cortex-a76"
>  QB_CPU_KVM ?=3D "-cpu host -machine gic-version=3D3"
>  QB_SMP ?=3D "-smp 4"
> +QB_MEM ?=3D "-m 512"
>

Some image recipes e.g. core-image-sato sets it conditionally like
QB_MEM =3D '${@bb.utils.contains("DISTRO_FEATURES", "opengl", "-m 512", "-m
256", d)}'

I wonder what happens with this change, will it get reset to 256 for
qemuarm64 when not using opengl ?


>  # Boot into U-Boot and let that scan the disk for the next step, don't
> pass any kernel or filesystem hints
>  QB_DEFAULT_BIOS ?=3D "u-boot.bin"
>  QB_DEFAULT_KERNEL ?=3D "none"
> --
> 2.34.1
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13809):
> https://lists.yoctoproject.org/g/poky/message/13809
> Mute This Topic: https://lists.yoctoproject.org/mt/116913418/1997914
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000dbc8300646a462e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 23,=
 2025 at 12:25=E2=80=AFAM Mikko Rapeli via <a href=3D"http://lists.yoctopro=
ject.org">lists.yoctoproject.org</a> &lt;mikko.rapeli=3D<a href=3D"mailto:l=
inaro.org@lists.yoctoproject.org">linaro.org@lists.yoctoproject.org</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">The gene=
ricarm64 initramfs is larger than 256 Mb which is<br>
the default runqemu memory config and thus boot fails when<br>
extracted initramfs does not fit.<br>
<br>
Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" =
target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
---<br>
=C2=A0meta-yocto-bsp/conf/machine/genericarm64.conf | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/meta-yocto-bsp/conf/machine/genericarm64.conf b/meta-yocto-bsp=
/conf/machine/genericarm64.conf<br>
index 5d1010e..ce22b17 100644<br>
--- a/meta-yocto-bsp/conf/machine/genericarm64.conf<br>
+++ b/meta-yocto-bsp/conf/machine/genericarm64.conf<br>
@@ -57,6 +57,7 @@ QB_MACHINE ?=3D &quot;-machine virt&quot;<br>
=C2=A0QB_CPU ?=3D &quot;-cpu cortex-a76&quot;<br>
=C2=A0QB_CPU_KVM ?=3D &quot;-cpu host -machine gic-version=3D3&quot;<br>
=C2=A0QB_SMP ?=3D &quot;-smp 4&quot;<br>
+QB_MEM ?=3D &quot;-m 512&quot;<br></blockquote><div><br></div><div>Some im=
age recipes e.g. core-image-sato sets it conditionally like</div><div>QB_ME=
M =3D &#39;${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;opengl&q=
uot;, &quot;-m 512&quot;, &quot;-m 256&quot;, d)}&#39;</div><div><br></div>=
<div>I wonder what happens with this change, will it get reset to 256 for q=
emuarm64 when not using opengl ?</div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex">
=C2=A0# Boot into U-Boot and let that scan the disk for the next step, don&=
#39;t pass any kernel or filesystem hints<br>
=C2=A0QB_DEFAULT_BIOS ?=3D &quot;u-boot.bin&quot;<br>
=C2=A0QB_DEFAULT_KERNEL ?=3D &quot;none&quot;<br>
-- <br>
2.34.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13809): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13809" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13809</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/116913418/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/116913418/1997914</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000dbc8300646a462e2--

