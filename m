Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web11.1362.1579039365805612936
 for <poky@lists.yoctoproject.org>;
 Tue, 14 Jan 2020 14:02:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=GdiPML4N;
 spf=pass (domain: gmail.com, ip: 209.85.128.67, mailfrom: alex.kanavin@gmail.com)
Received: by mail-wm1-f67.google.com with SMTP id a5so15627969wmb.0
        for <poky@lists.yoctoproject.org>; Tue, 14 Jan 2020 14:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=ZipWMYPiHtQWRpVcvtUmnSFOMvUExhO7mJVewOw97ms=;
        b=GdiPML4NdQcut1BiZglqWLJZ7kWpRj6vXPV8j1mitv3DNGTkEEgMAk1jmHNcNHMqQv
         8NGfc1BSBfS1Tn+d4sMs2DTziFGL9pOZuo9EQAiblA8rJZrKfHDPuBmCMhHtj0RdgyfJ
         GG+LT4yclLpAhWMYh3CIUlrBKrX0oiZRI9bqI5pd3wdrORsyFIzxRFJuUFxjxHs83NGZ
         D3ub/N8wO6ZgM1VRVYk75fNobkU5YR/tttOiBFs1r9bzG2lSq2UTTmvFn0RacuzIoGjL
         gX0/9sgIk5pwhWnfejOEjMafgNWHHh+ENPdosIu6ulARi317fblDKYdMDXyd4ivpUvD7
         eCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=ZipWMYPiHtQWRpVcvtUmnSFOMvUExhO7mJVewOw97ms=;
        b=thH5tTtDiX2d6crcdyK0cHiLVT/oyVlnGCzlDG+HVG33ftetIdzr56nA8Wr3E0eJyw
         G94vyNJcX8J2sFODttAeSgQLUI80kdPIxcozJw9q4omY+EB/+QG4KZOfPwxBQN77RHL3
         eMcX0e6ha3QBZlB6Y/n+ovXzRHgkWTPCKvWlsa74lylFM4mUzmK6MkRTh8yU5Ger8olp
         mQBFigXjAzCCDw26o3ctcCwQwWgux0irN10sYGlRaKrcCCzUzKI9s8n8T2abqlXh5dF7
         sHNCmRmwOlvks3FBqmybVnmch0OrBTQuSJxNVUdBGC1EVbQ/EQyQEneIFnuttZN0rHQH
         6W9A==
X-Gm-Message-State: APjAAAU25zE9cwPPnEwGeNNO4wBqxG0IXc/El0awFHKFifqo8WhDpuWg
	ogpDkQa0z9Di1GeZm/QGpUftINGCRl0=
X-Google-Smtp-Source: APXvYqwgyoVtfeJs7j07I3K5DvqE5Wz/R2Zae4l+g3QqJxOj7zBmFoJmzbECxpyyx1KdC07hqgLm5Q==
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr29144140wmk.124.1579039364247;
        Tue, 14 Jan 2020 14:02:44 -0800 (PST)
Return-Path: <alex.kanavin@gmail.com>
Received: from ?IPv6:2a02:2450:1011:56f:f093:e241:5835:ece? ([2a02:2450:1011:56f:f093:e241:5835:ece])
        by smtp.gmail.com with ESMTPSA id e16sm21601117wrs.73.2020.01.14.14.02.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jan 2020 14:02:43 -0800 (PST)
Mime-Version: 1.0 (1.0)
Subject: Re: [poky] [PATCH] Allow original $GPG_AGENT_INFO into do_fetch
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
X-Mailer: iPhone Mail (16G102)
In-Reply-To: <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
Date: Tue, 14 Jan 2020 23:02:43 +0100
Cc: Ross Burton <ross.burton@intel.com>, poky@lists.yoctoproject.org
Message-Id: <609C67C7-9452-4A91-B685-946522152A7D@gmail.com>
References: <20200114190707.4260-1-stevenrwalter@gmail.com> <964b1d58-74b9-b874-f8eb-9241931c255f@intel.com> <CAK8d-aJ3OHyxQsusujOcfWwO2GM-Cy7VR9aZwLP+aJhTYX=ZOw@mail.gmail.com>
To: Steven Walter <stevenrwalter@gmail.com>
Content-Type: multipart/alternative;
	boundary=Apple-Mail-F88D68A1-2D8E-4C50-88D7-78EC174BDD58
Content-Transfer-Encoding: 7bit

--Apple-Mail-F88D68A1-2D8E-4C50-88D7-78EC174BDD58
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yocto has a complicated history, and this reflects in the repo structure.

You don=E2=80=99t need to set up the original repos; generating the patche=
s against poky is fine. You just need to split up your patch and send the p=
arts to the right mailing lists.

Alex

> On 14 Jan 2020, at 22.43, Steven Walter <stevenrwalter@gmail.com> wrote:
>=20
> That seems... byzantine.  I don't see any repos matching that descriptio=
n on git.yoctoproject.org; can you point me in the right direction so I can=
 generate proper git patches against those repositories?
>=20
>> On Tue, Jan 14, 2020 at 4:30 PM Ross Burton <ross.burton@intel.com> wro=
te:
>> On 14/01/2020 19:07, Steven Walter wrote:
>> > subversion 1.9 uses gpg to encrypt authentication details that are
>> > stored in ~/.subversion.  This means that GPG_AGENT_INFO needs to be
>> > available when svn is run by do_fetch, or else svn will not be able t=
o
>> > authenticate to the remote server.  Treat GPG_AGENT_INFO like
>> > SSH_AUTH_SOCK, including it in the fetch environment and BB_ENV_EXTRA=
WHITE
>> > ---
>> >   bitbake/lib/bb/fetch2/__init__.py | 1 +
>> >   meta/conf/bitbake.conf            | 2 +-
>> >   scripts/oe-buildenv-internal      | 3 ++-
>>=20
>> Poky is a constructed repository, the bitbake change needs to go the th=
e=20
>> bitbake list and the meta/ and scripts/ changes the openembedded-core l=
ist.
>>=20
>> Ross
>>=20
>>=20
>=20
>=20
> --=20
> -Steven Walter <stevenrwalter@gmail.com>
>=20

--Apple-Mail-F88D68A1-2D8E-4C50-88D7-78EC174BDD58
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=
=
=3Dutf-8"></head><body dir=3D"auto"><div>Yocto has a complicated history, =
and this reflects in the repo structure.</div><div><br></div>You don=E2=80=
=99t need to set up the original repos; generating the patches against pok=
y is fine. You just need to split up your patch and send the parts to the r=
ight mailing lists.<br><br><div id=3D"AppleMailSignature" dir=3D"ltr">Alex<=
/div><div dir=3D"ltr"><br>On 14 Jan 2020, at 22.43, Steven Walter &lt;<a hr=
ef=3D"mailto:stevenrwalter@gmail.com">stevenrwalter@gmail.com</a>&gt; wrote=
:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">=
That seems... byzantine.&nbsp; I don't see any repos matching that descript=
ion on <a href=3D"http://git.yoctoproject.org">git.yoctoproject.org</a>; ca=
n you point me in the right direction so I can generate proper git patches =
against those repositories?<br></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Tue, Jan 14, 2020 at 4:30 PM Ross Burton =
&lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 14/01/=
2020 19:07, Steven Walter wrote:<br>
&gt; subversion 1.9 uses gpg to encrypt authentication details that are<br=
>
&gt; stored in ~/.subversion.&nbsp; This means that GPG_AGENT_INFO needs t=
o be<br>
&gt; available when svn is run by do_fetch, or else svn will not be able t=
o<br>
&gt; authenticate to the remote server.&nbsp; Treat GPG_AGENT_INFO like<br=
>
&gt; SSH_AUTH_SOCK, including it in the fetch environment and BB_ENV_EXTRA=
WHITE<br>
&gt; ---<br>
&gt;&nbsp; &nbsp;bitbake/lib/bb/fetch2/__init__.py | 1 +<br>
&gt;&nbsp; &nbsp;meta/conf/bitbake.conf&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; | 2 +-<br>
&gt;&nbsp; &nbsp;scripts/oe-buildenv-internal&nbsp; &nbsp; &nbsp; | 3 ++-<=
br>
<br>
Poky is a constructed repository, the bitbake change needs to go the the <=
br>
bitbake list and the meta/ and scripts/ changes the openembedded-core list=
.<br>
<br>
Ross<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div>-Steven Walter &lt;<a href=3D"mailto=
:stevenrwalter@gmail.com" target=3D"_blank">stevenrwalter@gmail.com</a>&gt;=
</div></div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span></span=
><br></div></blockquote></body></html>

--Apple-Mail-F88D68A1-2D8E-4C50-88D7-78EC174BDD58--
