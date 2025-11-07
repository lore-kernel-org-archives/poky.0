Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53ABACCFA05
	for <webhook@archiver.kernel.org>; Fri,  7 Nov 2025 16:32:24 +0000 (UTC)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3253.1762533133957578687
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Nov 2025 08:32:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UeZ7yZn4;
 spf=pass (domain: gmail.com, ip: 209.85.222.54, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-932cb562289so294690241.3
        for <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 08:32:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762533133; x=1763137933; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZLok+bwDc9iTWzglCdAuoibT2YRhyVNaICRau74jnpQ=;
        b=UeZ7yZn421E/77CRfl4qCYix96En765lpMzJIIcy3XYZVS+tiJJ4xqadgpA1Z0sFu7
         RL5fmV9bnHCzu2YpM5XZBBzKb1TQjFijofDLsSLiFCBOLJyatroaZ4halX+3rsBBxzE4
         ELkkEjxd+yxTwRLOXoWiuQvN2+1XSTtNXDWy50U82FQD8a4iq7uQWrb2BGUlVjt8dkrq
         Dy4NtsIAUPc7VuCOwEl549DKVzUpwc4m5vRP5vR5A6d8htORKkGqQuMseWzwGC4FfQDd
         v54e86dS2lTXg4M9yZgQijXMJ4v2udJGwML8tBCM6ipb+ZM418yTgy/+6/CPg2CO4cYf
         w1Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762533133; x=1763137933;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZLok+bwDc9iTWzglCdAuoibT2YRhyVNaICRau74jnpQ=;
        b=rD/upoUjDm+c+luVkevdQZiwA/XCeM7iQs0yjWVegM54sFdlkjRHyeAhC5Fsvt83JY
         p30cnQPKSffuoUeZUsOQ7XAedJnmOpDuL3jkPobdcoauXyjNqVSJESeoi5Ybs9Xb3x8d
         e0FjkCJi1UxvfOoRUoQ4tpgnS6p2H5tHwHCxVhA7/EstLHz6cJsyS9kDG72Jf5vm9s4/
         l7QuSUykDx5aqdgVZDrOIMquCKj/sjsqDYrtcaLUgzYdR6a8OQvnxk70RrRTVGfchoAe
         vKiHUDjckptZEXTQR7WCuL2Q0utCFEaFOSYzBQHgkdIKs0KGrVy6NF6o0KotKstr8BQp
         tj0w==
X-Forwarded-Encrypted: i=1; AJvYcCUWjBOSDkgTHycWtBbc76dAtU09sfl/NX3+Jzy7PyGjgKH2qHmWMuErhg6DosHQ4B9hYao1@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwwdWDxkjYBRMFDCDPhjzQMYxklFRvFpIg5bjWnJOAMd34mJy6d
	UtDsx2F4uVxo9ViH/ZH+TvnMlpr0zQedsQxU5RFSLsO91FJYga1wv09BpIVL1QWYCsF9BNeOika
	ATfjCEC+WdhJCiC/zjtop/kQcdvG9ZWg=
X-Gm-Gg: ASbGncvrXerTBQHcfKWtlfj7Bw/K/UjFe3f7p3zliQpEIsRjAyPaHSp7SCfoIugh+Ku
	ZgGl8PgME529QDNIGkwOQpoAmMPhwArIXCVIL0D3FlO32aOSohu3SmXCgmKXP6jm0/zzoSN6BKo
	K2sUe74+366x+oKtJ0HH2zY1piJDXX5Z48e49mGVDe70kozOjYwoCovBmx9oddWIBgWNBQtBVhs
	EkFQVOs0/tBqiMlOLwAGMttzpRSAl+3WGBVUyIFRKXMmkm6Ql8uxbZuwwLWf8vRFwIGFev+GtW+
	dakwlj5vWn9XQAptPdTm5J0N/gNG
X-Google-Smtp-Source: AGHT+IF6u+wo0PxFQlOD6qMVL+mNODuhY+K2p4leblBElJDFTbgUC0qYRpyNYf5I76b3qNqLAF3SsdyX6aRMUY8tZLQ=
X-Received: by 2002:a05:6102:2913:b0:5db:ecde:5ad1 with SMTP id
 ada2fe7eead31-5ddc47d9fd9mr22750137.25.1762533132815; Fri, 07 Nov 2025
 08:32:12 -0800 (PST)
MIME-Version: 1.0
References: <20251107133459.1667071-1-richard.purdie@linuxfoundation.org> <DE2KVT4Y3PZ6.322SIT5UH6JJ7@bootlin.com>
In-Reply-To: <DE2KVT4Y3PZ6.322SIT5UH6JJ7@bootlin.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 7 Nov 2025 17:32:01 +0100
X-Gm-Features: AWmQ_bls6xik6pFpM81tG2UNK70HtEQ0BJdYONN7rIrsbuTCxMOHN5AJJuUgTf4
Message-ID: <CANNYZj_ssKfHN7_2Zy2A4dJLrkTfSTjWSTBjJLtPYcD_DZxsRw@mail.gmail.com>
Subject: Re: [poky] [PATCH] The poky repository master branch is no longer
 being updated.
To: antonin.godard@bootlin.com
Cc: richard.purdie@linuxfoundation.org, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004951ad064303b98c"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 07 Nov 2025 16:32:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13785

--0000000000004951ad064303b98c
Content-Type: text/plain; charset="UTF-8"

Can these be added directly to
https://git.yoctoproject.org/poky/tree/README
?

Alex

On Fri 7. Nov 2025 at 16.46, Antonin Godard via lists.yoctoproject.org
<antonin.godard=bootlin.com@lists.yoctoproject.org> wrote:

> I'll put direct documentation links below to help find the documents.
>
> On Fri Nov 7, 2025 at 2:34 PM CET, Richard Purdie via
> lists.yoctoproject.org wrote:
> > You can either:
> >
> > a) switch to individual clones of bitbake, openembedded-core, meta-yocto
> and yocto-docs
>
>   https://docs.yoctoproject.org/dev/dev-manual/poky-manual-setup.html
>
> > b) use the new bitbake-setup
>
>
> https://docs.yoctoproject.org/bitbake/dev/bitbake-user-manual/bitbake-user-manual-environment-setup.html
>
> Cheers,
> Antonin
>
> --
> Antonin Godard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13784):
> https://lists.yoctoproject.org/g/poky/message/13784
> Mute This Topic: https://lists.yoctoproject.org/mt/116170240/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000004951ad064303b98c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can these be added directly to</div><div dir=3D"auto"><di=
v><a href=3D"https://git.yoctoproject.org/poky/tree/README">https://git.yoc=
toproject.org/poky/tree/README</a></div></div><div dir=3D"auto">?</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Fri 7. Nov 2025 at 16.46, Antonin Godard via <a href=3D"http://lists.yocto=
project.org">lists.yoctoproject.org</a> &lt;antonin.godard=3D<a href=3D"mai=
lto:bootlin.com@lists.yoctoproject.org">bootlin.com@lists.yoctoproject.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left=
:1ex;border-left-color:rgb(204,204,204)">I&#39;ll put direct documentation =
links below to help find the documents.<br>
<br>
On Fri Nov 7, 2025 at 2:34 PM CET, Richard Purdie via <a href=3D"http://lis=
ts.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoprojec=
t.org</a> wrote:<br>
&gt; You can either:<br>
&gt;<br>
&gt; a) switch to individual clones of bitbake, openembedded-core, meta-yoc=
to and yocto-docs<br>
<br>
=C2=A0 <a href=3D"https://docs.yoctoproject.org/dev/dev-manual/poky-manual-=
setup.html" rel=3D"noreferrer" target=3D"_blank">https://docs.yoctoproject.=
org/dev/dev-manual/poky-manual-setup.html</a><br>
<br>
&gt; b) use the new bitbake-setup<br>
<br>
=C2=A0 <a href=3D"https://docs.yoctoproject.org/bitbake/dev/bitbake-user-ma=
nual/bitbake-user-manual-environment-setup.html" rel=3D"noreferrer" target=
=3D"_blank">https://docs.yoctoproject.org/bitbake/dev/bitbake-user-manual/b=
itbake-user-manual-environment-setup.html</a><br>
<br>
Cheers,<br>
Antonin<br>
<br>
-- <br>
Antonin Godard, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13784): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13784" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13784</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/116170240/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/116170240/1686489</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanav=
in@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000004951ad064303b98c--

