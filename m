Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17121E00DAB; Fri,  6 Oct 2017 15:41:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8143FE00D8F
	for <poky@yoctoproject.org>; Fri,  6 Oct 2017 15:41:15 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id h9so10818075oia.4
	for <poky@yoctoproject.org>; Fri, 06 Oct 2017 15:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=26AZTy7KJfXT+UiqY5anc9ZsH5rIhok8GGnCext6+SI=;
	b=AwgpVcEkfz6HGJvY3EkVbIy8792caK/z9ifJyDdPt42PXKfy7hJcipWJrM2sDOP0GC
	0yV6U3kRJrzvSZP5Tj8Nbb1S0hjk1mLI5OeQmKsXFOPIV6YPbbRBzpuSlIWn8P4GQFAL
	AZwioa7dLVnSPgsLGDJ53GIxOmQ5Po1YCOr9W7LWCKXJ5DKAlYhQEyvwViogQxRNQ4+a
	PelZ2Fnkk7sQRXrN069iifQWeQxy0VYrJkdz72aaQ9HO2x+Nq8w43Bddfhq8w+WfidbF
	mRW5ZpeZqWZH5b3QB8wBRUGOdyxnsKkUIJjpgj3ZDp22GigcESNXvfLXDjWNBSvSZwWg
	a/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=26AZTy7KJfXT+UiqY5anc9ZsH5rIhok8GGnCext6+SI=;
	b=fBMACPjnu8bK1SQtSBFyUNXboKvVGhplN/SMGyvnS9gnWPJ5AgmdEdbmo1PSL4ffsY
	wQ0yzvd2fxVXZFsdqRT+DeOoW024IWuknIGVFMAP2KRqZjtr1xtLWqzrq0/0VgFB2KWT
	jwhMthlC4/MFQja2eEQvazCThlwObkOLxUdAAoRFPQS5VeMgnRGQO0IIs95s26uwi2AN
	NcKUPiaDgsWZK1LqHj9Cz0BqRUNks+aiPFbvb47XJy/wgU8vQeC/T2HATAo6zukfeNfo
	2QvBXFBZ6gkF1L0PeUJL1JgDGy5WjlgWMeBzdttBwAUQTyjUishOGj4gcFKyZA0ycO15
	0iTw==
X-Gm-Message-State: AMCzsaU7N1Fx8JCSMQVBcPuXxoclQKXRgGG4sc9GtdF3P86ooDsId90r
	LDisxV5AWwWe8JVivaUZBdB7i7k2tLn0AdYQg0Y=
X-Google-Smtp-Source: AOwi7QC6Jnnau6hTJoz/mFhY3fhPPSb3HaM1Nj37YGLmpt/xY6/Oa9VkPGx9PmCcrvcozHG3Lassxx0YRV8LfLhLB0o=
X-Received: by 10.157.67.11 with SMTP id s11mr1919381ote.309.1507329674650;
	Fri, 06 Oct 2017 15:41:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.22.247 with HTTP; Fri, 6 Oct 2017 15:41:14 -0700 (PDT)
In-Reply-To: <20171006174212.15669-1-mkelly@xevo.com>
References: <20171006174212.15669-1-mkelly@xevo.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 6 Oct 2017 15:41:14 -0700
Message-ID: <CAFNP8OtfrEW4fyJBzc4vsBcyQ2T8ciG4b4orfCTww2j4bviV-w@mail.gmail.com>
To: Martin Kelly <mkelly@xevo.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] poky: add debian-9 to SANITY_TESTED_DISTROS
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
X-List-Received-Date: Fri, 06 Oct 2017 22:41:16 -0000
Content-Type: multipart/alternative; boundary="94eb2c1c1c5cd12b02055ae889c5"

--94eb2c1c1c5cd12b02055ae889c5
Content-Type: text/plain; charset="UTF-8"

Martin - Updated the list of supported distros appropriately in the
ref-manual - see
http://www.yoctoproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros

Thanks

On Fri, Oct 6, 2017 at 10:42 AM, Martin Kelly <mkelly@xevo.com> wrote:

> I have been working with OE on debian-9 for several months now without
> issue. In addition, I tested a build + runqemu for core-image-sato
> following the quickstart guide and had no issues.
>
> Signed-off-by: Martin Kelly <mkelly@xevo.com>
> ---
>  meta-poky/conf/distro/poky.conf | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.
> conf
> index 5b8eeb2..6d365e0 100644
> --- a/meta-poky/conf/distro/poky.conf
> +++ b/meta-poky/conf/distro/poky.conf
> @@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?= " \
>              fedora-26 \n \
>              centos-7 \n \
>              debian-8 \n \
> +            debian-9 \n \
>              opensuse-42.1 \n \
>              opensuse-42.2 \n \
>              "
> --
> 2.11.0
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--94eb2c1c1c5cd12b02055ae889c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Martin - Updated the list of supported distros approp=
riately in the ref-manual - see <a href=3D"http://www.yoctoproject.org/docs=
/2.4/ref-manual/ref-manual.html#detailed-supported-distros">http://www.yoct=
oproject.org/docs/2.4/ref-manual/ref-manual.html#detailed-supported-distros=
</a><br><br></div>Thanks<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Fri, Oct 6, 2017 at 10:42 AM, Martin Kelly <span dir=3D=
"ltr">&lt;<a href=3D"mailto:mkelly@xevo.com" target=3D"_blank">mkelly@xevo.=
com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I have been wor=
king with OE on debian-9 for several months now without<br>
issue. In addition, I tested a build + runqemu for core-image-sato<br>
following the quickstart guide and had no issues.<br>
<br>
Signed-off-by: Martin Kelly &lt;<a href=3D"mailto:mkelly@xevo.com">mkelly@x=
evo.com</a>&gt;<br>
---<br>
=C2=A0meta-poky/conf/distro/poky.<wbr>conf | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/meta-poky/conf/distro/poky.<wbr>conf b/meta-poky/conf/distro/p=
oky.<wbr>conf<br>
index 5b8eeb2..6d365e0 100644<br>
--- a/meta-poky/conf/distro/poky.<wbr>conf<br>
+++ b/meta-poky/conf/distro/poky.<wbr>conf<br>
@@ -75,6 +75,7 @@ SANITY_TESTED_DISTROS ?=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fedora-26 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0centos-7 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0debian-8 \n \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 debian-9 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opensuse-42.1 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0opensuse-42.2 \n \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.11.0<br>
<br>
--<br>
______________________________<wbr>_________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/poky</a><br=
>
</font></span></blockquote></div><br></div>

--94eb2c1c1c5cd12b02055ae889c5--
