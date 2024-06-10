Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 729F2C27C55
	for <webhook@archiver.kernel.org>; Mon, 10 Jun 2024 12:43:41 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.18342.1718023411228546067
 for <poky@lists.yoctoproject.org>;
 Mon, 10 Jun 2024 05:43:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=Xf13J7PL;
 spf=pass (domain: snapchat.com, ip: 209.85.218.43, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a6ef8bf500dso234993266b.0
        for <poky@lists.yoctoproject.org>; Mon, 10 Jun 2024 05:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1718023409; x=1718628209; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tYX855J6xaX0recjkeBCKKrhQFtBfSeSjffbluSjJOc=;
        b=Xf13J7PLWID7y7YMYQGuf30EJ0Nlzyx8ogiWNYwrkeuRrVyvURKIvvgNOvRdcwqYPR
         pO9PS9AruPy8Pk2FjdxJF1S+T7jCczif3NRqtHe/KMZK7LMGoQp1RtXR7ccCy7FC1Wm/
         bhleN4++XGKReMY2tPCrk+K1asHQpbfGNxFXw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718023409; x=1718628209;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tYX855J6xaX0recjkeBCKKrhQFtBfSeSjffbluSjJOc=;
        b=qmcz8wGo92C8hKZA/HnkRjGwUiD5M5d9RURpEAI5EhZDKm036DZdu9Tzr0Calvlyip
         ipJ6HRlFfkc8mf40JufMkrCtr7HuHiploqmpbltGMNO0Vr7DjkUndFYgf3xNSIT5iNII
         NdBz0oPvV5eNjlCWxKfUD6BNvIyV1hFehev+BOtKpRYCthQ3cOqzwFho6o5T9ELOlaYW
         KnbpMJbImourFKfH2Xusj9PZvXTIlsIBS+nzFtPoUHoooLxyrqaXXOqc/S31a7b1Y/84
         XnMgsI2CTutZxYaRm0nxzGu0I2b1TEFFSq3EcMcHJaua3kgWoWtB5g2gUP6YIUIz7T/T
         csrw==
X-Gm-Message-State: AOJu0YyBcsJt7x3RSZgoEYpjVlowjNbbHHVo1diagm2PXQ4BpsvUyBmV
	OP6mQUAfPTajerF2vrXrJEfSW+T9hD7YJr3BO4zO+PzJ8VYRV649KXg4+tw/FMAn2BvN8DVxq6p
	z4unf7CZ1FD8DIVmuQSRYyzp2nN0XIcB+qrZZuQ==
X-Google-Smtp-Source: AGHT+IG7u+k6ykuB9Kh6c3/ulStV+BEdjLL+XaR8uKsIGkIwqcxjtyAP+AdE97FP4t4zmeCMJapiP8LIQnvoyliOhyc=
X-Received: by 2002:a17:906:2a44:b0:a6f:1ff4:c7d2 with SMTP id
 a640c23a62f3a-a6f1ff4c8c1mr139188566b.20.1718023407247; Mon, 10 Jun 2024
 05:43:27 -0700 (PDT)
MIME-Version: 1.0
References: <20240604114647.2897172-1-ecordonnier@snap.com> <2024060817352536c2c18d@mail.local>
In-Reply-To: <2024060817352536c2c18d@mail.local>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Mon, 10 Jun 2024 14:43:15 +0200
Message-ID: <CAHUKmYa8rLYai9KVwR76GF8nUvgAe0Tyh3QWstAf9HjiBj-TGw@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-alt: enable minidebuginfo
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e7cb0e061a887e70"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 10 Jun 2024 12:43:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13368

--000000000000e7cb0e061a887e70
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexandre,
I was able to reproduce locally with MACHINE=3D"qemuarm64". I sent this fix=
:
https://lists.openembedded.org/g/openembedded-core/message/200473

=C3=89tienne

On Sat, Jun 8, 2024 at 7:35=E2=80=AFPM Alexandre Belloni <
alexandre.belloni@bootlin.com> wrote:

>
> Hello,
>
> This causes failures on anything that is not x86:
>
>
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctop=
roject.org_typhoon_-23_builders_107_builds_6257_steps_15_logs_stdio&d=3DDwI=
BAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj=
9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2Rn=
mvWzRS9uztqEu2aqKn&s=3D_D19schknEkv6i6PAZB3GKG-CN-Pgdt1Ft0ZH5_JtcM&e=3D
>
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctop=
roject.org_typhoon_-23_builders_102_builds_6204_steps_15_logs_stdio&d=3DDwI=
BAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj=
9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2Rn=
mvWzRS9uztqEu2aqKn&s=3DoUIbGxdw3lPq0WMLI8seut-iU1VfEuI1ZjgbU-xoT4Q&e=3D
>
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctop=
roject.org_typhoon_-23_builders_131_builds_4448_steps_15_logs_stdio&d=3DDwI=
BAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj=
9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2Rn=
mvWzRS9uztqEu2aqKn&s=3D3n6zz9lJFpumjJYHK0aMu1xMCHuWAJTh39y9HuWpUz0&e=3D
>
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctop=
roject.org_typhoon_-23_builders_110_builds_7960_steps_14_logs_stdio&d=3DDwI=
BAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj=
9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2Rn=
mvWzRS9uztqEu2aqKn&s=3Drem_GsMJdA3Hyepv7n34eaFrsrl7fEeaRYE1UwGd6dc&e=3D
>
> Traceback (most recent call last):
>   File
> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/deco=
rator/__init__.py",
> line 35, in wrapped_f
>     return func(*args, **kwargs)
>            ^^^^^^^^^^^^^^^^^^^^^
>   File
> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/deco=
rator/__init__.py",
> line 35, in wrapped_f
>     return func(*args, **kwargs)
>            ^^^^^^^^^^^^^^^^^^^^^
>   File
> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/deco=
rator/__init__.py",
> line 35, in wrapped_f
>     return func(*args, **kwargs)
>            ^^^^^^^^^^^^^^^^^^^^^
>   File
> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/runtime/c=
ases/systemd.py",
> line 159, in test_systemd_coredump_minidebuginfo
>     self.assertEqual(status, 0, msg=3D'MiniDebugInfo Test failed: %s' %
> output)
> AssertionError: 1 !=3D 0 : MiniDebugInfo Test failed: No match found.
> -- Notice: 1 systemd-coredump@.service unit is running, output may be
> incomplete.
>
> On 04/06/2024 13:46:47+0200, Etienne Cordonnier via lists.yoctoproject.or=
g
> wrote:
> > From: Etienne Cordonnier <ecordonnier@snap.com>
> >
> > Enable minidebuginfo in poky-alt in order to increase test coverage in
> CI and reduce potential bitrotting.
> >
> > Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
> > ---
> >  meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git
> a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> > index 3e10251..b38a332 100644
> > --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> > +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
> > @@ -1,5 +1,5 @@
> >  # Add extra DISTRO_FEATUREs
> > -DISTRO_FEATURES:append =3D " pam usrmerge"
> > +DISTRO_FEATURES:append =3D " minidebuginfo pam usrmerge"
> >
> >  # Use our alternate kernel version
> >  PREFERRED_VERSION_linux-yocto =3D "6.6%"
> > --
> > 2.36.1.vfs.0.0
> >
>
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#13364):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_poky_message_13364&d=3DDwIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIO=
zwJphKXtbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&s=3DX73CMDD61J9wE2LwGf_=
sYsO6hJLAiGtVQisjZTJLw8s&e=3D
> > Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_106480591_3617179&d=3DDwIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIO=
zwJphKXtbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&s=3D0WPb3wKeBjvtyY-pGx7=
cteyeIoWgZamfojEZ4oAMtRo&e=3D
> > Group Owner: poky+owner@lists.yoctoproject.org
> > Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_poky_unsub&d=3DDwIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdi=
w&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXt=
bNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&s=3DGt_WvUgXE0LxwLvxQXu68OcFgcY=
GObDPANFOHUA57p4&e=3D
> [alexandre.belloni@bootlin.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>
>
> --
> Alexandre Belloni, co-owner and COO, Bootlin
> Embedded Linux and Kernel engineering
>
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__bootlin.com&d=3DDw=
IBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Q=
j9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2R=
nmvWzRS9uztqEu2aqKn&s=3DzPYLCfPUxLIkMEoi0O1aguJhBfKHex_dusgPiEc-4lY&e=3D
>

--000000000000e7cb0e061a887e70
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Alexandre,<br>I was able to reproduce locally with MACH=
INE=3D&quot;qemuarm64&quot;. I sent this fix:=C2=A0<a href=3D"https://lists=
.openembedded.org/g/openembedded-core/message/200473">https://lists.openemb=
edded.org/g/openembedded-core/message/200473</a><br><br>=C3=89tienne</div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat,=
 Jun 8, 2024 at 7:35=E2=80=AFPM Alexandre Belloni &lt;<a href=3D"mailto:ale=
xandre.belloni@bootlin.com">alexandre.belloni@bootlin.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
Hello,<br>
<br>
This causes failures on anything that is not x86:<br>
<br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuild=
er.yoctoproject.org_typhoon_-23_builders_107_builds_6257_steps_15_logs_stdi=
o&amp;d=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=
=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKX=
tbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3D_D19schknEkv6i6PAZB3GK=
G-CN-Pgdt1Ft0ZH5_JtcM&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https:=
//urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctoproject.o=
rg_typhoon_-23_builders_107_builds_6257_steps_15_logs_stdio&amp;d=3DDwIBAg&=
amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfP=
x_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfn=
O5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3D_D19schknEkv6i6PAZB3GKG-CN-Pgdt1Ft0ZH5_J=
tcM&amp;e=3D</a> <br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuild=
er.yoctoproject.org_typhoon_-23_builders_102_builds_6204_steps_15_logs_stdi=
o&amp;d=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=
=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKX=
tbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3DoUIbGxdw3lPq0WMLI8seut=
-iU1VfEuI1ZjgbU-xoT4Q&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https:=
//urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctoproject.o=
rg_typhoon_-23_builders_102_builds_6204_steps_15_logs_stdio&amp;d=3DDwIBAg&=
amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfP=
x_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfn=
O5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3DoUIbGxdw3lPq0WMLI8seut-iU1VfEuI1ZjgbU-xo=
T4Q&amp;e=3D</a> <br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuild=
er.yoctoproject.org_typhoon_-23_builders_131_builds_4448_steps_15_logs_stdi=
o&amp;d=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=
=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKX=
tbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3D3n6zz9lJFpumjJYHK0aMu1=
xMCHuWAJTh39y9HuWpUz0&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https:=
//urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctoproject.o=
rg_typhoon_-23_builders_131_builds_4448_steps_15_logs_stdio&amp;d=3DDwIBAg&=
amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfP=
x_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfn=
O5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3D3n6zz9lJFpumjJYHK0aMu1xMCHuWAJTh39y9HuWp=
Uz0&amp;e=3D</a> <br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuild=
er.yoctoproject.org_typhoon_-23_builders_110_builds_7960_steps_14_logs_stdi=
o&amp;d=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=
=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKX=
tbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3Drem_GsMJdA3Hyepv7n34ea=
Frsrl7fEeaRYE1UwGd6dc&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https:=
//urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoctoproject.o=
rg_typhoon_-23_builders_110_builds_7960_steps_14_logs_stdio&amp;d=3DDwIBAg&=
amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfP=
x_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfn=
O5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3Drem_GsMJdA3Hyepv7n34eaFrsrl7fEeaRYE1UwGd=
6dc&amp;e=3D</a> <br>
<br>
Traceback (most recent call last):<br>
=C2=A0 File &quot;/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib=
/oeqa/core/decorator/__init__.py&quot;, line 35, in wrapped_f<br>
=C2=A0 =C2=A0 return func(*args, **kwargs)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^^^^^^^^^^^^^^^^^^^^^<br>
=C2=A0 File &quot;/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib=
/oeqa/core/decorator/__init__.py&quot;, line 35, in wrapped_f<br>
=C2=A0 =C2=A0 return func(*args, **kwargs)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^^^^^^^^^^^^^^^^^^^^^<br>
=C2=A0 File &quot;/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib=
/oeqa/core/decorator/__init__.py&quot;, line 35, in wrapped_f<br>
=C2=A0 =C2=A0 return func(*args, **kwargs)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^^^^^^^^^^^^^^^^^^^^^<br>
=C2=A0 File &quot;/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib=
/oeqa/runtime/cases/systemd.py&quot;, line 159, in test_systemd_coredump_mi=
nidebuginfo<br>
=C2=A0 =C2=A0 self.assertEqual(status, 0, msg=3D&#39;MiniDebugInfo Test fai=
led: %s&#39; % output)<br>
AssertionError: 1 !=3D 0 : MiniDebugInfo Test failed: No match found.<br>
-- Notice: 1 systemd-coredump@.service unit is running, output may be incom=
plete.<br>
<br>
On 04/06/2024 13:46:47+0200, Etienne Cordonnier via <a href=3D"http://lists=
.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.=
org</a> wrote:<br>
&gt; From: Etienne Cordonnier &lt;<a href=3D"mailto:ecordonnier@snap.com" t=
arget=3D"_blank">ecordonnier@snap.com</a>&gt;<br>
&gt; <br>
&gt; Enable minidebuginfo in poky-alt in order to increase test coverage in=
 CI and reduce potential bitrotting.<br>
&gt; <br>
&gt; Signed-off-by: Etienne Cordonnier &lt;<a href=3D"mailto:ecordonnier@sn=
ap.com" target=3D"_blank">ecordonnier@snap.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | =
2 +-<br>
&gt;=C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)<br>
&gt; <br>
&gt; diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-config=
.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc<br>
&gt; index 3e10251..b38a332 100644<br>
&gt; --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc<br=
>
&gt; +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc<br=
>
&gt; @@ -1,5 +1,5 @@<br>
&gt;=C2=A0 # Add extra DISTRO_FEATUREs<br>
&gt; -DISTRO_FEATURES:append =3D &quot; pam usrmerge&quot;<br>
&gt; +DISTRO_FEATURES:append =3D &quot; minidebuginfo pam usrmerge&quot;<br=
>
&gt;=C2=A0 <br>
&gt;=C2=A0 # Use our alternate kernel version<br>
&gt;=C2=A0 PREFERRED_VERSION_linux-yocto =3D &quot;6.6%&quot;<br>
&gt; -- <br>
&gt; 2.36.1.vfs.0.0<br>
&gt; <br>
<br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#13364): <a href=3D"https://urldefense.proofpoint.c=
om/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_poky_message_13364&amp;d=
=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbN=
onVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g=
37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3DX73CMDD61J9wE2LwGf_sYsO6hJLAiG=
tVQisjZTJLw8s&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldef=
ense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_poky_mess=
age_13364&amp;d=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdi=
w&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIO=
zwJphKXtbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3DX73CMDD61J9wE2L=
wGf_sYsO6hJLAiGtVQisjZTJLw8s&amp;e=3D</a> <br>
&gt; Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttps-3A__lists.yoctoproject.org_mt_106480591_3617179&amp;d=3DDwIBAg&amp=
;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Q=
j9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m=
9A2RnmvWzRS9uztqEu2aqKn&amp;s=3D0WPb3wKeBjvtyY-pGx7cteyeIoWgZamfojEZ4oAMtRo=
&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoi=
nt.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_106480591_3617179&amp=
;d=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhk=
bNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi=
4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3D0WPb3wKeBjvtyY-pGx7cteyeIoWg=
ZamfojEZ4oAMtRo&amp;e=3D</a> <br>
&gt; Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" ta=
rget=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dh=
ttps-3A__lists.yoctoproject.org_g_poky_unsub&amp;d=3DDwIBAg&amp;c=3DncDTmph=
kJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJ=
TKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9=
uztqEu2aqKn&amp;s=3DGt_WvUgXE0LxwLvxQXu68OcFgcYGObDPANFOHUA57p4&amp;e=3D" r=
el=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/ur=
l?u=3Dhttps-3A__lists.yoctoproject.org_g_poky_unsub&amp;d=3DDwIBAg&amp;c=3D=
ncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsR=
ih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2Rn=
mvWzRS9uztqEu2aqKn&amp;s=3DGt_WvUgXE0LxwLvxQXu68OcFgcYGObDPANFOHUA57p4&amp;=
e=3D</a>=C2=A0 [<a href=3D"mailto:alexandre.belloni@bootlin.com" target=3D"=
_blank">alexandre.belloni@bootlin.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
<br>
<br>
-- <br>
Alexandre Belloni, co-owner and COO, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__bootlin.c=
om&amp;d=3DDwIBAg&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=
=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKX=
tbNChi4g37E-X5UUfnO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3DzPYLCfPUxLIkMEoi0O1agu=
JhBfKHex_dusgPiEc-4lY&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https:=
//urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__bootlin.com&amp;d=3DDwIBAg=
&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRf=
Px_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUf=
nO5m9A2RnmvWzRS9uztqEu2aqKn&amp;s=3DzPYLCfPUxLIkMEoi0O1aguJhBfKHex_dusgPiEc=
-4lY&amp;e=3D</a> <br>
</blockquote></div>

--000000000000e7cb0e061a887e70--

