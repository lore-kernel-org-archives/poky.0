Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54890E017A2
	for <poky@yoctoproject.org>; Wed,  6 Nov 2013 09:00:36 -0800 (PST)
Received: by mail-ve0-f176.google.com with SMTP id jx11so3811251veb.35
	for <poky@yoctoproject.org>; Wed, 06 Nov 2013 09:00:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Akn+KB7XCyesUU+oCINxYJ2SKqk0cpGLe8tb+ne6cNY=;
	b=lstcBWl2/MQd07qmRffEGm15vPDIihMukbjJr4hBe8mUzjrUd+8gSNucB40CHhD9Cx
	3MmTVBjFmcxIB1VA35A5OBzLequymw56AFt5KDd0xO9A292GB/qrTG+p0KbU83Jtx8CU
	99v2JzTyb+lEjJGwlw/qebvGotvBWOOmiuLSf32ELGDD4kA63lgE/jsoVwH3Nz/qI4zq
	NPoNzqLQpJhrOJHVU17/aq2bdfIUvazt+d9EOpaG34kpxbZjktJfY6WmvCTmjdBUqriu
	HvF0enX7TgF3V/uEBZW/Efq/neE2dJYV8cM6s1eZ2QN2//4sQyYEXj6SYTrbEQpQnWA+
	s0pA==
X-Gm-Message-State: ALoCoQm8/YmPcNl0JTNn6GDmudvWTrO/F4KG4aJakaxdrXnBn3pOrSRWaNqmcr1xo4yzrCqM7TEy
X-Received: by 10.220.74.69 with SMTP id t5mr3236471vcj.18.1383757235537; Wed,
	06 Nov 2013 09:00:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Wed, 6 Nov 2013 09:00:15 -0800 (PST)
In-Reply-To: <527A750B.1020803@dynamicdevices.co.uk>
References: <cover.1383743152.git.ajlennon@dynamicdevices.co.uk>
	<3ab777991480aa4bff79130bd889ed25eba72fdc.1383743152.git.ajlennon@dynamicdevices.co.uk>
	<CAJTo0LbA64DxS2dp0h3LHTxkm709CiO73Nv3mYtxP3iQwnjF-w@mail.gmail.com>
	<527A750B.1020803@dynamicdevices.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Nov 2013 17:00:15 +0000
Message-ID: <CAJTo0LaCEu3wNY6jpBb923=ovMfEXhudZvzQOf15ReHNuVCfxQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 1/1] sqlite3: Add support for column metadata API, bumped PR
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
X-List-Received-Date: Wed, 06 Nov 2013 17:00:47 -0000
Content-Type: multipart/alternative; boundary=047d7b624cbe7ae23e04ea8516c9

--047d7b624cbe7ae23e04ea8516c9
Content-Type: text/plain; charset=UTF-8

On 6 November 2013 16:57, Alex J Lennon <ajlennon@dynamicdevices.co.uk>wrote:

> No need to bump PR in oe-core,
>
>
> OK - this should be reverted/removed then?


Remove it from your changes.

and please explain why enabling column
> metadata is good and what the tradeoffs are.
>
>
> I found that Mono.Data.SQlite has a dependency on the column meta-data
> API, thus enabling this API enables use of Hibernate / Mono with SQLite and
> no doubt enables other ORMs / utility libraries.
>
> ref: https://bugzilla.xamarin.com/show_bug.cgi?id=6333
>
> The API is present in the used SQLite3 sqlite-autoconf-3080002
> source-base. Thus we are enabling pre-existing SQLite support rather than
> introducing new code.
>
> I am not aware of any issues that enabling this SQLite functionality
> introduces, other than a slightly increased library size of circa 1.5KB ,
> i.e. coretexa9_vfp_neon i.MX6
>
> - with column meta-data API        610360 libsqlite3.so.0.8.6
> - without column meta-data API  608880 libsqlite3.so.0.8.6


That's a pretty negligible impact, thanks for the background.

Ross

--047d7b624cbe7ae23e04ea8516c9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 6=
 November 2013 16:57, Alex J Lennon <span dir=3D"ltr">&lt;<a href=3D"mailto=
:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dynamicdevices.c=
o.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im"><blockquote type=3D"cite">=
<pre>No need to bump PR in oe-core, </pre>
    </blockquote>
    <br></div>
    OK - this should be reverted/removed then?</blockquote><div><br></div><=
div>Remove it from your changes.</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">

<div class=3D"im"><blockquote type=3D"cite"><pre>and please explain why ena=
bling column
metadata is good and what the tradeoffs are.
</pre>
    </blockquote>
    <br></div>
    I found that Mono.Data.SQlite has a dependency on the column
    meta-data API, thus enabling this API enables use of Hibernate /
    Mono with SQLite and no doubt enables other ORMs / utility
    libraries.<br>
    <br>
    ref: <a href=3D"https://bugzilla.xamarin.com/show_bug.cgi?id=3D6333" ta=
rget=3D"_blank">https://bugzilla.xamarin.com/show_bug.cgi?id=3D6333</a><br>
    <br>
    The API is present in the used SQLite3 sqlite-autoconf-3080002
    source-base. Thus we are enabling pre-existing SQLite support rather
    than introducing new code. <br>
    <br>
    I am not aware of any issues that enabling this SQLite functionality
    introduces, other than a slightly increased library size of circa
    1.5KB , i.e. coretexa9_vfp_neon i.MX6=C2=A0=C2=A0=C2=A0 <br>
    <br>
    - with column meta-data API=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 610360=
 libsqlite3.so.0.8.6<br>
    - without column meta-data API=C2=A0 608880 libsqlite3.so.0.8.6</blockq=
uote></div><br>That&#39;s a pretty negligible impact, thanks for the backgr=
ound.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=
Ross</div>

</div>

--047d7b624cbe7ae23e04ea8516c9--
