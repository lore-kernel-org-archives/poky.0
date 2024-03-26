Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F43C6FD1F
	for <webhook@archiver.kernel.org>; Tue, 26 Mar 2024 11:00:18 +0000 (UTC)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
 by mx.groups.io with SMTP id smtpd.web11.5927.1711450810840502770
 for <poky@lists.yoctoproject.org>;
 Tue, 26 Mar 2024 04:00:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SeyAwt9b;
 spf=pass (domain: gmail.com, ip: 209.85.221.176, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-4d870fb9f5cso1580111e0c.3
        for <poky@lists.yoctoproject.org>; Tue, 26 Mar 2024 04:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711450810; x=1712055610; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2P/swzoNt9K9zI9D6kjI8sQMbNg3WJvfqsxujC9LTmY=;
        b=SeyAwt9bQv5YcPAJUNQtjQgBRMdjfeDSIhzlJOUI1K57Gnwk4vVCzbB2MD1uXqcAie
         xA8MBgf4Lp9nkcQRN5fvplhktBcj+5Fv4si2Sc0Banlcnn4FB98xSTPMcxcX3n9mtqbQ
         YBDNuoZawE7ShvADvMjmv1GHMQkQnwQjJUqiLJvGtqNPdoudO4LBHhkxrzgWcaeNXwOB
         AGSpusAnenmVtGO6rl6CaHvb2H1OWQ0Yuoy725Lz9V52szeb8dvIVO6OMLcdvejG9TDM
         OCRRNbMM65bbWmADxh0c3XfqWJ8G0nSIt/e21JeTEVL1KCaDhYKGuqQx5wFCE/fMtPFx
         e5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711450810; x=1712055610;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2P/swzoNt9K9zI9D6kjI8sQMbNg3WJvfqsxujC9LTmY=;
        b=UzgRyV+DWYL5z6HuZlEq6trkfJJQqXaY0VjDneXfs17rdgzWEjSc5yaLhj413U8l4t
         c1iHHtBL5Qrb3RLLf/+OFGNGEEZ9TlabyGFr4i5wMTrH3BsUPnc8IJV8V2/z0Pl4uCvg
         iY+HNtQF2Ig+RaPkIgyjdhTeJ82Hu6eh+BIAjAuAuZyZzhTwPJn/MJA3r/u54xEgZAf8
         ATESvNQfFL28OJWv8RXoZKa6G6BZPC8YGvgun9u7KzqVWEgEX/5SpCSUodW0EG26uEtD
         r1GGA6bEdWkFTPJiFS1o5R9EAn2aAtbsgXv825w+6MDSGCda5xL4N70Z0T7+tLTyX/2c
         BebA==
X-Gm-Message-State: AOJu0YyNcUTHgRcta5QFykaCxZLCeVmNsr6F+Bu9PwN0cSOxBxWAz8OB
	dqhhHYFNZDfeX5UZrTQCkHQ8QjKVRWf5eLcDSXrDHXjp0rc0CwBOpE6DFcy/NK3wnRWmKrnGAQA
	CHPJ/RlV3IFKFhYglLEtC4KX5prM=
X-Google-Smtp-Source: AGHT+IH8dJIgZ1aDpnwcw2xbywqAwLQM8GTScMmPGcS4BhTEh1cwPbFil6SUE/tLOF6J2LISDCkvefV4wzbcLVoJzcs=
X-Received: by 2002:a05:6102:3a68:b0:476:cece:5dd7 with SMTP id
 bf8-20020a0561023a6800b00476cece5dd7mr7841097vsb.4.1711450809760; Tue, 26 Mar
 2024 04:00:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240322165009.3704771-1-ross.burton@arm.com> <CANPvuRm8sFizLvd0zd9cRaedD2bJLMf4nPZaVJdcWAWEfB24YA@mail.gmail.com>
 <5DE04BE0-19D1-4E46-B4F1-25B8AB26AC8E@arm.com>
In-Reply-To: <5DE04BE0-19D1-4E46-B4F1-25B8AB26AC8E@arm.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 26 Mar 2024 10:59:58 +0000
Message-ID: <CANPvuRnrZUxfFcoBUKp6ThDkS2PTEuwSPT77F2=Jcx0AJzjN1w@mail.gmail.com>
Subject: Re: [poky] [PATCH] genericarm64: add qemuboot configuration
To: Ross Burton <Ross.Burton@arm.com>
Cc: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000091040406148e3185"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Tue, 26 Mar 2024 11:00:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13315

--00000000000091040406148e3185
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ross Burton <Ross.Burton@arm.com> escreveu (sexta, 22/03/2024 =C3=A0(s) 17:=
09):

> On 22 Mar 2024, at 17:02, Jose Quaresma <quaresma.jose@gmail.com> wrote:
> > Why not have a new genericarm64-qemu.conf machine which includes this
> machine
> > and adds all the required qemu bits.
> > In my opinion, this would be more friendly and clear.
>
> Because two machines are more annoying, there=E2=80=99s no need.  This is=
 what we
> had for generic-arm64 and qemu-generic-arm64 in meta-arm, but that was
> mainly because that also built TF-A/OP-TEE/EDK2, all of which is pointles=
s
> in a real hardware environment.
>
> Arguably we could just always build u-boot for qemu and hope nobody gets
> confused with there being a u-boot binary in the deploy directory, but th=
at
> feels like it=E2=80=99s asking for trouble.
>
> Ross


I agree that always building u-boot can cause some confusion so it's better
to keep the real machine the primary target.

Jose

--00000000000091040406148e3185
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Ross Burton &lt;<a href=3D"mailto:Ros=
s.Burton@arm.com">Ross.Burton@arm.com</a>&gt; escreveu (sexta, 22/03/2024 =
=C3=A0(s) 17:09):<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 22 Mar 2024, at 17:02, Jose Quaresma &lt;<a href=3D"mailto:quaresma.jo=
se@gmail.com" target=3D"_blank">quaresma.jose@gmail.com</a>&gt; wrote:<br>
&gt; Why not have a new genericarm64-qemu.conf machine which includes this =
machine<br>
&gt; and adds all the required qemu bits.<br>
&gt; In my opinion, this would be more friendly and clear.<br>
<br>
Because two machines are more annoying, there=E2=80=99s no need.=C2=A0 This=
 is what we had for generic-arm64 and qemu-generic-arm64 in meta-arm, but t=
hat was mainly because that also built TF-A/OP-TEE/EDK2, all of which is po=
intless in a real hardware environment. <br>
<br>
Arguably we could just always build u-boot for qemu and hope nobody gets co=
nfused with there being a u-boot binary in the deploy directory, but that f=
eels like it=E2=80=99s asking for trouble.<br>
<br>
Ross</blockquote></div><br><div>I agree that always building u-boot can cau=
se some confusion so it&#39;s better to keep the real machine the primary t=
arget.</div><br class=3D"gmail-Apple-interchange-newline"><div>Jose<br><br>=
</div></div>

--00000000000091040406148e3185--

