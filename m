Return-Path: <bhstalel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DB8EC8743
	for <webhook@archiver.kernel.org>; Thu,  7 Sep 2023 16:40:13 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.18121.1694104812190147634
 for <poky@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 09:40:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=NW3eYZzN;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: bhstalel@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-99c1c66876aso144358966b.2
        for <poky@lists.yoctoproject.org>; Thu, 07 Sep 2023 09:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694104810; x=1694709610; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H3ff6pJmOcgNxQQaaQwuB4vhba9nhx0HM65+O4ulWeI=;
        b=NW3eYZzNPSueP103+KgGJyATFB16t9WNHKFiWMx7DIy9D9lyZnjjL6EoWP3rWQ4uT+
         oLpzhrjYa8MOOtFfU+gjODD3kycXfWyve3fy89OBenDhzB14Hvq8kqXYliMo/m6nusLF
         bLDeg7pdmjzGDjLomm+NPFPunIMZGTI9Pu7r3T0vEUYDC1ZC+dkKwQfeyfG4QmauE/0c
         1BJZHtSQ3Es7BjpZSDjmARnMpwmmXJtcyMf2G2vckgcEM/oGmPiqW3HPj8c8039sANDI
         OdSGkygNoBOOCoNBfnpOglbDzJ6GE+w+oCz1VR+qQXXbR13YcJo6A/0FbKs643MJzyV1
         6Z4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694104810; x=1694709610;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H3ff6pJmOcgNxQQaaQwuB4vhba9nhx0HM65+O4ulWeI=;
        b=PAVZwS2XzK7y7feohgSpxVFjErKhZU4ksCSft3iSL64FEOJm13f6kiXytqp9oc02n0
         aQwSJuJmA2x+dJl5HFOWWkrKOuf8VtxPvpp/v92N+dU5J6p0R8Sb3qAF5km0nyQD6u0W
         o94cd3Wv7SpChHVZBN6WTQu1UY7sPzmKiC6NhC2zzfLKtgmVnlgQl1okUXf52fSn7NUo
         Ndr7vo+MQfibNT6SFIie9WAnYrOGpg8bLeQx3aXRdwbdrrRq3kl1QnGMGbbS8FyIt4GS
         j3JPRXUr3ae2ftLMMEds0YW6/yyDJOaqbF8IaWai5LvE8T5ev+bb4El2dXf4+YW/QjdB
         sfMg==
X-Gm-Message-State: AOJu0YwOg/ZgeMjyfwGVshBOlrE2hVOHPSjNAPMugkMYBSXVQMzHpvB3
	0hGz9qOA/5fmmAzCUQkQ5zP67D9/9z9dCp5MJs4=
X-Google-Smtp-Source: AGHT+IE1sY6UrfPHmVa1AcG+dyimLy6z1GqD+FQyHCxQEzK+qdTu/iD45LVwyMN+AHLkYmekTnp+un0joVFNkfMrNwk=
X-Received: by 2002:a17:907:75e2:b0:9a5:7e63:2df with SMTP id
 jz2-20020a17090775e200b009a57e6302dfmr4813838ejc.1.1694104810371; Thu, 07 Sep
 2023 09:40:10 -0700 (PDT)
MIME-Version: 1.0
References: <e4d1cb39-2711-c664-7161-5a6d25482c87@gmx.li>
In-Reply-To: <e4d1cb39-2711-c664-7161-5a6d25482c87@gmx.li>
From: Talel BELHADJ SALEM <bhstalel@gmail.com>
Date: Thu, 7 Sep 2023 17:39:59 +0100
Message-ID: <CAOgG7m17r=MYu=e8s5OnaWpUav3Yi+cw6oNOo6Q+p6HFNkV4dg@mail.gmail.com>
Subject: Re: [poky] modify 3rd party machine configuration
To: Steve <star@gmx.li>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000006f3d020604c78311"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Thu, 07 Sep 2023 16:40:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13158

--0000000000006f3d020604c78311
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Steve,

You can do the following:

1) create a new machine that includes your vendor's.

my-layer/conf/machine/my-test-machine.conf

containing:

include conf/machine/test-machine.conf

or

require conf/machine/test-machine.conf

2) Add your modifications.
3) Set MACHINE to "my-test-machine"

Kind regards
Talel

On Thu, Sep 7, 2023 at 3:16=E2=80=AFPM Steve <star@gmx.li> wrote:

> In a vendor layer there is a conf/machine/test-machine.conf that
> includes some inc files. This inc files have some settings as
> MACHINE_FEATURES =3D "a b c"
> IMAGE_CLASSES:append:generic-bsp =3D " image_populate_tool"
> PREFERRED_VERSION_opencv =3D "2.34"
>
> What I need is to change (add, remove, modify) some of the settings/lines=
.
>
> How can I do that in MY layer, so not touching the vendor layer.
>
> I thought I am adding a file
> my_layer/conf/machine/test-machine.conf (so same name) and put some line
> into it like:
> MACHINE_FEATURES:remove =3D "b"
> IMAGE_CLASSES:remove:generic-bsp =3D " image_populate_tool"
> PREFFERRED_VERSION_opencv =3D ""
>
> But that doesn't work and I can't figure out what I am doing wrong.
> In bblayer.conf my layer is mentioned later than vendor layer.
>
> How to solve that?
>
> Also I need to supress some files in vendor layer. Is it correct to use
> in my_layer/conf/layer.conf lines like:
> BBMASK .=3D " ${BSPDIR}/src/vendor_layer/recipe_test/*" to remove that
> from being used and parsed ?
>
> The problem to debug it, until the parsing fails, bitbake -e doesn't
> give you proper information about whats going on.
>
> Thanks for any help in advance!
> Steve
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13157):
> https://lists.yoctoproject.org/g/poky/message/13157
> Mute This Topic: https://lists.yoctoproject.org/mt/101215236/1955228
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> bhstalel@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000006f3d020604c78311
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Steve,<div><br></div><div>You can do the following:<=
/div><div><br></div><div>1) create a new machine that includes your vendor&=
#39;s.</div><div><br></div><div>my-layer/conf/machine/my-test-machine.conf<=
/div><div><br></div><div>containing:</div><div><br></div><div>include conf/=
machine/test-machine.conf</div><div><br></div><div>or=C2=A0</div><div><br><=
/div><div>require conf/machine/test-machine.conf</div><div><br></div><div>2=
) Add your modifications.</div><div>3) Set MACHINE to &quot;my-test-machine=
&quot;</div><div><br></div><div>Kind=C2=A0regards</div><div>Talel</div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On T=
hu, Sep 7, 2023 at 3:16=E2=80=AFPM Steve &lt;<a href=3D"mailto:star@gmx.li"=
>star@gmx.li</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">In a vendor layer there is a conf/machine/test-machine.conf tha=
t<br>
includes some inc files. This inc files have some settings as<br>
MACHINE_FEATURES =3D &quot;a b c&quot;<br>
IMAGE_CLASSES:append:generic-bsp =3D &quot; image_populate_tool&quot;<br>
PREFERRED_VERSION_opencv =3D &quot;2.34&quot;<br>
<br>
What I need is to change (add, remove, modify) some of the settings/lines.<=
br>
<br>
How can I do that in MY layer, so not touching the vendor layer.<br>
<br>
I thought I am adding a file<br>
my_layer/conf/machine/test-machine.conf (so same name) and put some line<br=
>
into it like:<br>
MACHINE_FEATURES:remove =3D &quot;b&quot;<br>
IMAGE_CLASSES:remove:generic-bsp =3D &quot; image_populate_tool&quot;<br>
PREFFERRED_VERSION_opencv =3D &quot;&quot;<br>
<br>
But that doesn&#39;t work and I can&#39;t figure out what I am doing wrong.=
<br>
In bblayer.conf my layer is mentioned later than vendor layer.<br>
<br>
How to solve that?<br>
<br>
Also I need to supress some files in vendor layer. Is it correct to use<br>
in my_layer/conf/layer.conf lines like:<br>
BBMASK .=3D &quot; ${BSPDIR}/src/vendor_layer/recipe_test/*&quot; to remove=
 that<br>
from being used and parsed ?<br>
<br>
The problem to debug it, until the parsing fails, bitbake -e doesn&#39;t<br=
>
give you proper information about whats going on.<br>
<br>
Thanks for any help in advance!<br>
Steve<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13157): <a href=3D"https://lists.yoctoproject.org/g/pok=
y/message/13157" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/poky/message/13157</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101215236/195=
5228" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101215236/1955228</a><br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" rel=3D=
"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/unsub<=
/a> [<a href=3D"mailto:bhstalel@gmail.com" target=3D"_blank">bhstalel@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000006f3d020604c78311--

