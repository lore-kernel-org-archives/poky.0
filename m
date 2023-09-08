Return-Path: <star@gmx.li>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D591EE8000
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 13:54:58 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
 by mx.groups.io with SMTP id smtpd.web11.39653.1694181296873314928
 for <poky@lists.yoctoproject.org>;
 Fri, 08 Sep 2023 06:54:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=star@gmx.li header.s=s31663417 header.b=hlVYmQsU;
 spf=pass (domain: gmx.li, ip: 212.227.15.19, mailfrom: star@gmx.li)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.li;
 s=s31663417; t=1694181295; x=1694786095; i=star@gmx.li;
 bh=KiHaVCPkLzlWzB7HLHSxABeIYvATwhaoUYJNJrQCunM=;
 h=X-UI-Sender-Class:Date:Subject:To:References:From:In-Reply-To;
 b=hlVYmQsUic5hfUv9AizZdIr+W/CQGTmHCMLZENayKQXVj3uZyK2BUibN3/gNGjJRAApACt3
 H95wiXPWnF6UtPHQ04ZiOX7PUbem89E59ACf3uw+j24xTUqYM6mE6R2f9f4g/5ZNQFOlSC7ro
 IgiISNY7UhBfESmwslntWw1XdD+4kKQrJXwjGlhgUzZoL13BpnBsPDo1UEUTzkFUJaUajVcBY
 XuDqYcqCQp3z8l0DFLRTRUX/jMl1qipb+vLzsERfj1EWniaUd8+3Xu0vYzR32KGg/h9HM7oIl
 m6/8dGTUms/HlHM7drAOIWbPQnS/Pwggu6gvCPVdg12fguB0hEpQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.3.21] ([84.185.245.231]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M1HZo-1qbrr30hYY-002sqp for
 <poky@lists.yoctoproject.org>; Fri, 08 Sep 2023 15:54:55 +0200
Message-ID: <221d6a2e-f545-d4e4-9c5b-d7c8a019db48@gmx.li>
Date: Fri, 8 Sep 2023 15:54:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [poky] modify 3rd party machine configuration
Content-Language: en-US
To: poky@lists.yoctoproject.org
References: <e4d1cb39-2711-c664-7161-5a6d25482c87@gmx.li>
 <CAOgG7m17r=MYu=e8s5OnaWpUav3Yi+cw6oNOo6Q+p6HFNkV4dg@mail.gmail.com>
From: star <star@gmx.li>
In-Reply-To: <CAOgG7m17r=MYu=e8s5OnaWpUav3Yi+cw6oNOo6Q+p6HFNkV4dg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:xDURoaLVsJDer6OQI1KDTx0cQFr8KBvZdBtB5RZDjQZS2X9DtqN
 NXBtXPJTHHBNk+gBYZLUP+abphSP9j/T1zZWP+TmCl08SPa73E4bhx2L7JpcFM0X1aurupt
 BQwhaUjM2qF0w1V6GQGyu0PzAlSXFhai/G7yAJbRN6R7b8q3f3QJc8kB7Oq/+3XB6iWyGYw
 WnnsdJT1lKuww5TFBEzAw==
UI-OutboundReport: notjunk:1;M01:P0:XNDJ0o1f3ss=;lDUsyj39Ivek2DTo1/KIlkgESEi
 ayURlLt/cSPNffjYhse98Migr9suj4vtd59n0wmvejDAsdAF+kE/QgiyddKMo/cNP6gmijTIz
 hC9ZQdqQqxWxY0aFf1tV0SrmJC0gGDGfs7xT8tj4fiD8F4u0qDufWpUP7jPQ7XAIzlxOoEnj2
 1pIIUMPfH7zoeNuo0mBuf8o/eAp4L1cPAzyHtj1k0MIumAVdeNqqK66uL40INkhNHwBFEbcGh
 5SmeUQvebwTQdXNzEHg9Eh9W0vHWYGzZMvTI8JOhs8P6bR4I04EXlbs27ioZ/684pIWTT8Gpt
 y31csq+nPb9aNQci3kYSXx0sPFqry3Saq9cdAxFzwfRYvK8PvX22UpuEtZg+qzVBKK8D97BY9
 xs0eLLc4OlXofX2aQp+kg2kmYATr8qxQ5/YpTmVMC9Dsu5T6xFTNOWd0S6paIvhcS974pX410
 l2GbRiJyiYmcbvngabQ8IYbD73bbsPcSWXyeGkWSZUnO4r3wUX5CI9mOWIPGlhVcy+Y3CjrMP
 wvPz73xcxtq2MsVBypwirZAhJIu/AyKhFcEMRXou7wgBfDnj3cOSb+YrFmiHIqCCnCZFmy1se
 8V4UboGQbhEONgBsfVJR0yHA+mwkbnmtAI710Yy+U9O0ustCFx+MmaTjU2bZNb/3VjskfTxYy
 cONBksKvjbrfx6n7WpZoX4YVtVSH1Pb1zIhVCX/p+Rw3Sffc2Wb3FCNByxLvGwX6jEqthccwV
 55kfblyg2wgUh9s8M1ih1/1vr3Q0/d6qcjKCeT5OIwvw6ijjLBrkNSWzaAvUmHuJvXuDxIWuM
 tYq+05NORkbtzw9qImVC0Ko+8B9lzdsa57uh+ojQut2R2KA6nvSwOAHXiJGYrPPZIeniQMZaN
 SPOBqdUpGUpGG0wQcaWMG/7eUcDdVbsUWOcoB14b8ZBczOJSG/6HdJvTlvj8iLZrlkyGW3wAs
 km0ztA==
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 08 Sep 2023 13:54:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13159

Hello Talel,

thank you so much. Things can be so easy ;)
I learn something new every day.
Best regards,
Steve

> Hello Steve,
>
> You can do the following:
>
> 1) create a new machine that includes your vendor's.
>
> my-layer/conf/machine/my-test-machine.conf
>
> containing:
>
> include conf/machine/test-machine.conf
>
> or
>
> require conf/machine/test-machine.conf
>
> 2) Add your modifications.
> 3) Set MACHINE to "my-test-machine"
>
> Kind=C2=A0regards
> Talel
>
> On Thu, Sep 7, 2023 at 3:16=E2=80=AFPM Steve <star@gmx.li <mailto:star@g=
mx.li>>
> wrote:
>
>     In a vendor layer there is a conf/machine/test-machine.conf that
>     includes some inc files. This inc files have some settings as
>     MACHINE_FEATURES =3D "a b c"
>     IMAGE_CLASSES:append:generic-bsp =3D " image_populate_tool"
>     PREFERRED_VERSION_opencv =3D "2.34"
>
>     What I need is to change (add, remove, modify) some of the
>     settings/lines.
>
>     How can I do that in MY layer, so not touching the vendor layer.
>
>     I thought I am adding a file
>     my_layer/conf/machine/test-machine.conf (so same name) and put some =
line
>     into it like:
>     MACHINE_FEATURES:remove =3D "b"
>     IMAGE_CLASSES:remove:generic-bsp =3D " image_populate_tool"
>     PREFFERRED_VERSION_opencv =3D ""
>
>     But that doesn't work and I can't figure out what I am doing wrong.
>     In bblayer.conf my layer is mentioned later than vendor layer.
>
>     How to solve that?
>
>     Also I need to supress some files in vendor layer. Is it correct to =
use
>     in my_layer/conf/layer.conf lines like:
>     BBMASK .=3D " ${BSPDIR}/src/vendor_layer/recipe_test/*" to remove th=
at
>     from being used and parsed ?
>
>     The problem to debug it, until the parsing fails, bitbake -e doesn't
>     give you proper information about whats going on.
>
>     Thanks for any help in advance!
>     Steve
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13158): https://lists.yoctoproject.org/g/poky/messag=
e/13158
> Mute This Topic: https://lists.yoctoproject.org/mt/101215236/3618575
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [star@gmx.li]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


