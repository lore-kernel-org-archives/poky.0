Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33A7C369D1
	for <webhook@archiver.kernel.org>; Wed, 23 Apr 2025 12:31:46 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.7269.1745411498784483661
 for <poky@lists.yoctoproject.org>;
 Wed, 23 Apr 2025 05:31:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=d43IEJMO;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-301c4850194so4763264a91.2
        for <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 05:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745411498; x=1746016298; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ALLHXEV0XopFJV3foQIH6wMlqhsWTh1Gk9r+Xxd6Mpg=;
        b=d43IEJMOCjkyzpwy5QFCWVSoMn+GgcmsOErkOdXc1MWlemzeaCffnUyuFuw5Yv5ghm
         0a8mVQ12exLYHi20drHe5uuO6UTOH1DUCBzgI+C+hX4wVhJZGq/jXyXrx4reK/h3quYe
         oRVgtk6wBZGnY30H/Q7t8Cap5xL5aiRLsLzq6KHVlg86rm/WJbPby6cAe0pkQy053yeA
         ZBznKoxsCgeLQX3XL11AG7xqtyr47Wf/K9UgMqETU44YnvagBtQBjEy5fyGH2F5XARq3
         fF/B9RNJwT9p/I5I20/h/zrgDnJ9p/VnnCDTjml2NOGUrI7kuYo98LCnwzYAUkmq4eQU
         DNRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745411498; x=1746016298;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ALLHXEV0XopFJV3foQIH6wMlqhsWTh1Gk9r+Xxd6Mpg=;
        b=bvk0xAeXyJrgE2YyXnDt9U+dEU7NUY18spDmk0SqLxGRfP71Rp2atKn7qpNSLf+X4p
         7+A2cWS+Awwxo7YoO9jotb7SD/7xpcKJydZd2YO3CMFj+JhBd+eA1QydkFMdQgZc8d+U
         r+X5Mh1sYJ/tPFyXqjhTwmETtYFjpc3gCNyFomy3kv+KTxS0n/7q4idwxN/rEzWBrJUO
         83S8UvZl7sKbi9SyqA3TmpEohE41W6RARw+NRmOmmA3omcBBdNHFjhC5RTskEESdYRcg
         Oy6MOMQJ3ot6R+rfiKaFo+k3JjQ8WCkSnxYMPTgbZ5/nlrJpLOw1PShmH2bZZdgFcTWm
         gzzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGwmBwJhm8mgEHEKsKsEIOLcP8zQhTzV1QorX3BKb+gIrb69FGeBjKEjrDGbeBgT+J45/d@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwdGS9zvzpwWz19lvBaxc9fM36UEuYFwNVird8REeRCAwVp/YST
	itHLTrQcvrB4YqqNMCcMV3NjnamnsYve1068oahf2InY7ZMetQbMrwamiOP40oUZfBpj31ZpW3A
	R5+wgZ38V4F3oOV1SVck5KgbFR7c=
X-Gm-Gg: ASbGncvO5XtA507YQfQJ/2XMGnE9hvLeIsommqbG3EDq7pIFvar4okPIKG145/0jUT3
	kuJ9wIf/v9mrdAKS/c00sohGLDi3RTslnDAQUw0ov+cT2c8UUQ66XCF5VbXUvqBjRjwOf/5vnCu
	g2s4vrbidjg5vQDsMCkSt0CFg=
X-Google-Smtp-Source: AGHT+IE64VH+hKW3xbbN4BzlUTn5HyrCHzMx5RMQTNwKR7oc8vCB04j60OXZySQCLLc8nGpLn3VI0GaiSZWCLlquckM=
X-Received: by 2002:a17:90b:1d50:b0:2ee:f677:aa14 with SMTP id
 98e67ed59e1d1-3087bb533damr27400544a91.13.1745411497857; Wed, 23 Apr 2025
 05:31:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250423080246.128723-1-mikko.rapeli@linaro.org>
In-Reply-To: <20250423080246.128723-1-mikko.rapeli@linaro.org>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 23 Apr 2025 08:31:25 -0400
X-Gm-Features: ATxdqUHF3o3rVTZwZD6jejhlQH3-2T1SoxbPUrkoCNqDDGGFeL4_iqvOlLmp3Xw
Message-ID: <CADkTA4PjYn55Udo7KxJwQi_SK08r+a_6EwMyo=e1-Y1vDKtxYA@mail.gmail.com>
Subject: Re: [poky] [PATCH 1/3] kern-tools-native: update to support modular
 kernel builds
To: mikko.rapeli@linaro.org
Cc: openembedded-core@lists.openembedded.org, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000511c4706337148a0"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 23 Apr 2025 12:31:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13602

--000000000000511c4706337148a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Do not apply this patch.

I have queued updates for this support, and again, they have not been sent
on purpose.

nack.

Bruce

On Wed, Apr 23, 2025 at 4:03=E2=80=AFAM Mikko Rapeli via lists.yoctoproject=
.org
<mikko.rapeli=3Dlinaro.org@lists.yoctoproject.org> wrote:

> After this update scc tool can compile options as modules
> conditionally without duplicating config fragments when
> the options contain a comment like:
>
> CONFIG_LEDS_GPIO=3Dy # OVERRIDE:$MODULE_OR_Y
>
> Then "scc -DMODULE_OR_Y=3Dm" converts these into
>
> CONFIG_LEDS_GPIO=3Dm
>
> Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
> ---
>  meta/recipes-kernel/kern-tools/kern-tools-native_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> index 6dd19f1f09..20b1bcaf37 100644
> --- a/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> +++ b/meta/recipes-kernel/kern-tools/kern-tools-native_git.bb
> @@ -11,7 +11,7 @@ LIC_FILES_CHKSUM =3D "\
>
>  DEPENDS +=3D "git-replacement-native"
>
> -SRCREV =3D "c8c1f17867d0cc7d04be225ba4901f2373428be2"
> +SRCREV =3D "fe67c98d2e9b74af44d0c4b660fa18e3a95e7edd"
>  PV =3D "0.3+git"
>
>  inherit native
> --
> 2.43.0
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13598):
> https://lists.yoctoproject.org/g/poky/message/13598
> Mute This Topic: https://lists.yoctoproject.org/mt/112396089/1050810
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000511c4706337148a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Do =
not apply this patch.</div><div class=3D"gmail_default" style=3D"font-size:=
small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">I h=
ave queued updates for this support, and again, they have not been sent on =
purpose.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">nack.</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">Bruce</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Wed, Apr 23, 2025 at 4:03=E2=80=AFAM Mikko Rapeli via <a href=3D"http://li=
sts.yoctoproject.org">lists.yoctoproject.org</a> &lt;mikko.rapeli=3D<a href=
=3D"mailto:linaro.org@lists.yoctoproject.org">linaro.org@lists.yoctoproject=
.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">After this update scc tool can compile options as modules<br>
conditionally without duplicating config fragments when<br>
the options contain a comment like:<br>
<br>
CONFIG_LEDS_GPIO=3Dy # OVERRIDE:$MODULE_OR_Y<br>
<br>
Then &quot;scc -DMODULE_OR_Y=3Dm&quot; converts these into<br>
<br>
CONFIG_LEDS_GPIO=3Dm<br>
<br>
Signed-off-by: Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" =
target=3D"_blank">mikko.rapeli@linaro.org</a>&gt;<br>
---<br>
=C2=A0meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-native_gi=
t.bb" rel=3D"noreferrer" target=3D"_blank">kern-tools-native_git.bb</a> | 2=
 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-na=
tive_git.bb" rel=3D"noreferrer" target=3D"_blank">kern-tools-native_git.bb<=
/a> b/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-native_gi=
t.bb" rel=3D"noreferrer" target=3D"_blank">kern-tools-native_git.bb</a><br>
index 6dd19f1f09..20b1bcaf37 100644<br>
--- a/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-native_gi=
t.bb" rel=3D"noreferrer" target=3D"_blank">kern-tools-native_git.bb</a><br>
+++ b/meta/recipes-kernel/kern-tools/<a href=3D"http://kern-tools-native_gi=
t.bb" rel=3D"noreferrer" target=3D"_blank">kern-tools-native_git.bb</a><br>
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM =3D &quot;\<br>
<br>
=C2=A0DEPENDS +=3D &quot;git-replacement-native&quot;<br>
<br>
-SRCREV =3D &quot;c8c1f17867d0cc7d04be225ba4901f2373428be2&quot;<br>
+SRCREV =3D &quot;fe67c98d2e9b74af44d0c4b660fa18e3a95e7edd&quot;<br>
=C2=A0PV =3D &quot;0.3+git&quot;<br>
<br>
=C2=A0inherit native<br>
-- <br>
2.43.0<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13598): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13598" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13598</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/112396089/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/112396089/1050810</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.as=
hfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div>

--000000000000511c4706337148a0--

