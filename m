Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A80AC30653
	for <webhook@archiver.kernel.org>; Mon,  1 Jul 2024 09:28:24 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.15496.1719826097074221955
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Jul 2024 02:28:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=VdRhxkNX;
 spf=pass (domain: snapchat.com, ip: 209.85.218.49, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a727d9dd367so291564866b.3
        for <poky@lists.yoctoproject.org>; Mon, 01 Jul 2024 02:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1719826095; x=1720430895; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mWN72IcGo1a3KntXqB7NqX3MrVgQEnNYAdRci44PJe0=;
        b=VdRhxkNXYCICzhlfdMCcU0qum8BVqPNduY2A1vGaJkOnssD9lgoo4k0IrCEUSLcNRB
         PtAFQ5NDWzzwrFnoB9lclmdRQJ0qUcuqQi6RvX/6TteNrhQTu/1YWPxifB9hgY3W95k+
         uLTOsmMX9Pop6sqbsOw5zrgblqoTFditmIfKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719826095; x=1720430895;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mWN72IcGo1a3KntXqB7NqX3MrVgQEnNYAdRci44PJe0=;
        b=PC/CIvpKpoiqwCPJf7XfCfIT9lmwpVPFnhVN/zC00MymLDwbdjUI3negZ+ixh7QKS2
         lgIR50AD9XavzooRW8fsg751ICiTvrer964Ku1HBEkJ5Iha68UGPXjJGqREttEZI8pdV
         YKTpd44JvOeIXjzzaqpJBe1aVhyGdTl+A7E3ogciQ/maA8ySOL+xvtmNvwJg1DnGvCTm
         EObQkgnJg39Gqh2Nzj24uQTjUOfbqblmT/l9RKsFZTsoMtzpzgL7bQmjDiat2UBReWW+
         6ZcCGsrFdEXy3h+oxzekd807IgaKf7XVA3cbI8PUntUD1LypYYtASaXHwCUp02l/pYso
         PClA==
X-Forwarded-Encrypted: i=1; AJvYcCUU9yu37nR2BS8VqPO/RI48ihgKAYqgxzOtlOUN9u+LS2/T1nM80yBOYDU+RMXryG/kFlT1scDrW2RECDWmzX/ewCPfOz/c+Xlszro=
X-Gm-Message-State: AOJu0YyUH1h7HVksDVu81Usah8tzkYkpYa4uzn0ypxkgy3+XLmHPJriX
	dhXC8gBw5R8N2DyKB/gL1AWUNg8Cqa3PGgoRhMTZ+9RYJxN+IbPE3nvSo0/44d9YBvRdytbRuWQ
	kAlAgpo1EY4Hiu2KM27/I80efwf3Q70UjdrexUw==
X-Google-Smtp-Source: AGHT+IEi2Ai4UNavC3lz8+mjVJL/Sm+YNHO2ohOCDp8LNa6Y2XIg1zTFztHQM3zO494Hd7wWVp0AbWkCja9wqQA7JuM=
X-Received: by 2002:a17:907:3f1a:b0:a6e:2a67:789f with SMTP id
 a640c23a62f3a-a7514474867mr400902466b.40.1719826095289; Mon, 01 Jul 2024
 02:28:15 -0700 (PDT)
MIME-Version: 1.0
References: <20240604114647.2897172-1-ecordonnier@snap.com>
 <2024060817352536c2c18d@mail.local> <17D7A530C052D9E2.15678@lists.yoctoproject.org>
In-Reply-To: <17D7A530C052D9E2.15678@lists.yoctoproject.org>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Mon, 1 Jul 2024 11:28:04 +0200
Message-ID: <CAHUKmYZpZYbmrZ4jmnUU2LZ0WTkgv+Dti5DhnXONVLtJQnheug@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-alt: enable minidebuginfo
To: ecordonnier@snap.com
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007c66f3061c2c37a4"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 01 Jul 2024 09:28:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13399

--0000000000007c66f3061c2c37a4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
the fix has been merged to main [1], so this shouldn't cause test failures
any more, and a self-test which always runs (independently of whether the
feature is enabled in a distro) was added, so this should limit the bitrot.
Richard also had indicated that he gets nervous about blanket distro
changes [2].

Is there still some value in enabling this feature per default in some
DISTRO? Having symbolicated core-stacks during development is practical IMO=
.

[1]:
https://git.yoctoproject.org/poky/commit/?id=3Dd87082efa5daecac35bff3391d06=
d5d37de48cc4

[2]: https://lists.openembedded.org/g/openembedded-core/message/200332

=C3=89tienne


On Mon, Jun 10, 2024 at 2:43=E2=80=AFPM Etienne Cordonnier via
lists.yoctoproject.org <ecordonnier=3Dsnap.com@lists.yoctoproject.org> wrot=
e:

> Hi Alexandre,
> I was able to reproduce locally with MACHINE=3D"qemuarm64". I sent this f=
ix:
> https://lists.openembedded.org/g/openembedded-core/message/200473
> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.openembedde=
d.org_g_openembedded-2Dcore_message_200473&d=3DDwMFaQ&c=3DncDTmphkJTvjIDPh0=
hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&=
m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxWGjIbzGJU0esPYlMsEtQDF1brNmMkV8B&s=3Dl_=
TWeanTZ5aKna57f_MIx9goQDEGOUNgJ1H4YFH1dLE&e=3D>
>
> =C3=89tienne
>
> On Sat, Jun 8, 2024 at 7:35=E2=80=AFPM Alexandre Belloni <
> alexandre.belloni@bootlin.com> wrote:
>
>>
>> Hello,
>>
>> This causes failures on anything that is not x86:
>>
>>
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yocto=
project.org_typhoon_-23_builders_107_builds_6257_steps_15_logs_stdio&d=3DDw=
IBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Q=
j9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2R=
nmvWzRS9uztqEu2aqKn&s=3D_D19schknEkv6i6PAZB3GKG-CN-Pgdt1Ft0ZH5_JtcM&e=3D
>>
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yocto=
project.org_typhoon_-23_builders_102_builds_6204_steps_15_logs_stdio&d=3DDw=
IBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Q=
j9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2R=
nmvWzRS9uztqEu2aqKn&s=3DoUIbGxdw3lPq0WMLI8seut-iU1VfEuI1ZjgbU-xoT4Q&e=3D
>>
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yocto=
project.org_typhoon_-23_builders_131_builds_4448_steps_15_logs_stdio&d=3DDw=
IBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Q=
j9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2R=
nmvWzRS9uztqEu2aqKn&s=3D3n6zz9lJFpumjJYHK0aMu1xMCHuWAJTh39y9HuWpUz0&e=3D
>>
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yocto=
project.org_typhoon_-23_builders_110_builds_7960_steps_14_logs_stdio&d=3DDw=
IBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_Q=
j9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2R=
nmvWzRS9uztqEu2aqKn&s=3Drem_GsMJdA3Hyepv7n34eaFrsrl7fEeaRYE1UwGd6dc&e=3D
>>
>> Traceback (most recent call last):
>>   File
>> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/dec=
orator/__init__.py",
>> line 35, in wrapped_f
>>     return func(*args, **kwargs)
>>            ^^^^^^^^^^^^^^^^^^^^^
>>   File
>> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/dec=
orator/__init__.py",
>> line 35, in wrapped_f
>>     return func(*args, **kwargs)
>>            ^^^^^^^^^^^^^^^^^^^^^
>>   File
>> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/core/dec=
orator/__init__.py",
>> line 35, in wrapped_f
>>     return func(*args, **kwargs)
>>            ^^^^^^^^^^^^^^^^^^^^^
>>   File
>> "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/runtime/=
cases/systemd.py",
>> line 159, in test_systemd_coredump_minidebuginfo
>>     self.assertEqual(status, 0, msg=3D'MiniDebugInfo Test failed: %s' %
>> output)
>> AssertionError: 1 !=3D 0 : MiniDebugInfo Test failed: No match found.
>> -- Notice: 1 systemd-coredump@.service unit is running, output may be
>> incomplete.
>>
>> On 04/06/2024 13:46:47+0200, Etienne Cordonnier via
>> lists.yoctoproject.org
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.yoctoprojec=
t.org&d=3DDwMFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNo=
nVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxW=
GjIbzGJU0esPYlMsEtQDF1brNmMkV8B&s=3DzVoFApwdAH--6niiBtWCu3I0N-m25NAOrhXwSzZ=
npSU&e=3D>
>> wrote:
>> > From: Etienne Cordonnier <ecordonnier@snap.com>
>> >
>> > Enable minidebuginfo in poky-alt in order to increase test coverage in
>> CI and reduce potential bitrotting.
>> >
>> > Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
>> > ---
>> >  meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git
>> a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
>> b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
>> > index 3e10251..b38a332 100644
>> > --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
>> > +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
>> > @@ -1,5 +1,5 @@
>> >  # Add extra DISTRO_FEATUREs
>> > -DISTRO_FEATURES:append =3D " pam usrmerge"
>> > +DISTRO_FEATURES:append =3D " minidebuginfo pam usrmerge"
>> >
>> >  # Use our alternate kernel version
>> >  PREFERRED_VERSION_linux-yocto =3D "6.6%"
>> > --
>> > 2.36.1.vfs.0.0
>> >
>>
>> >
>> >
>> >
>>
>>
>> --
>> Alexandre Belloni, co-owner and COO, Bootlin
>> Embedded Linux and Kernel engineering
>>
>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__bootlin.com&d=3DD=
wIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_=
Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2=
RnmvWzRS9uztqEu2aqKn&s=3DzPYLCfPUxLIkMEoi0O1aguJhBfKHex_dusgPiEc-4lY&e=3D
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13368):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_poky_message_13368&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DS--YJNXDHpUvK=
R5mQeuYZ0aCdhlKQXpxWGjIbzGJU0esPYlMsEtQDF1brNmMkV8B&s=3Dfos7CTDKluRx8J3B5J8=
_wS7CxdL_-BtzuA6pLlAC12c&e=3D
> Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_106480591_7048771&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DS--YJNXDHpUvK=
R5mQeuYZ0aCdhlKQXpxWGjIbzGJU0esPYlMsEtQDF1brNmMkV8B&s=3D2ZUpE8H5evnsYgSAeBH=
TBqJZDXkBh1kM8EPCSUC1eJM&e=3D
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_poky_unsub&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdi=
w&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3DS--YJNXDHpUvKR5mQeuYZ=
0aCdhlKQXpxWGjIbzGJU0esPYlMsEtQDF1brNmMkV8B&s=3DViCXlWzDVggNMRibI1W0hMcYPAC=
0mmxTE9cJoAdX7Ks&e=3D
> [ecordonnier@snap.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000007c66f3061c2c37a4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>the fix has been merged to main [1], so this should=
n&#39;t cause test failures any more,=C2=A0and a self-test which always run=
s (independently of whether the feature is enabled in a distro) was added,=
=C2=A0so this should limit the bitrot.<div>Richard also had indicated that =
he gets nervous about blanket distro changes [2].<br><br>Is there still som=
e value in enabling this feature per default in some DISTRO? Having symboli=
cated core-stacks during development is practical IMO.<br><br>[1]: <a href=
=3D"https://git.yoctoproject.org/poky/commit/?id=3Dd87082efa5daecac35bff339=
1d06d5d37de48cc4" target=3D"_blank">https://git.yoctoproject.org/poky/commi=
t/?id=3Dd87082efa5daecac35bff3391d06d5d37de48cc4</a>=C2=A0<br>[2]: <a href=
=3D"https://lists.openembedded.org/g/openembedded-core/message/200332">http=
s://lists.openembedded.org/g/openembedded-core/message/200332</a>=C2=A0<br>=
<br>=C3=89tienne<br><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jun 10, 2024 at 2:43=E2=80=AFPM Etien=
ne Cordonnier via <a href=3D"http://lists.yoctoproject.org" target=3D"_blan=
k">lists.yoctoproject.org</a> &lt;ecordonnier=3D<a href=3D"mailto:snap.com@=
lists.yoctoproject.org" target=3D"_blank">snap.com@lists.yoctoproject.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">Hi Alexandre,<br>I was able to reproduce locally with MACHIN=
E=3D&quot;qemuarm64&quot;. I sent this fix:=C2=A0<a href=3D"https://urldefe=
nse.proofpoint.com/v2/url?u=3Dhttps-3A__lists.openembedded.org_g_openembedd=
ed-2Dcore_message_200473&amp;d=3DDwMFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHva=
bgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=
=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxWGjIbzGJU0esPYlMsEtQDF1brNmMkV8B&amp;s=
=3Dl_TWeanTZ5aKna57f_MIx9goQDEGOUNgJ1H4YFH1dLE&amp;e=3D" target=3D"_blank">=
https://lists.openembedded.org/g/openembedded-core/message/200473</a><br><b=
r>=C3=89tienne</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Jun 8, 2024 at 7:35=E2=80=AFPM Alexandre Belloni &l=
t;<a href=3D"mailto:alexandre.belloni@bootlin.com" target=3D"_blank">alexan=
dre.belloni@bootlin.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><br>
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
On 04/06/2024 13:46:47+0200, Etienne Cordonnier via <a href=3D"https://urld=
efense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.yoctoproject.org&amp;d=3DDw=
MFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuM=
IGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxW=
GjIbzGJU0esPYlMsEtQDF1brNmMkV8B&amp;s=3DzVoFApwdAH--6niiBtWCu3I0N-m25NAOrhX=
wSzZnpSU&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.=
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
&gt; <br>
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
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#13368): <a href=3D"https://urldefense.proofpoint.com/v2=
/url?u=3Dhttps-3A__lists.yoctoproject.org_g_poky_message_13368&amp;d=3DDwIF=
aQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIG=
RfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxWGj=
IbzGJU0esPYlMsEtQDF1brNmMkV8B&amp;s=3Dfos7CTDKluRx8J3B5J8_wS7CxdL_-BtzuA6pL=
lAC12c&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.pr=
oofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_poky_message_133=
68&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=
=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DS--YJNXDHpUvKR5mQeuY=
Z0aCdhlKQXpxWGjIbzGJU0esPYlMsEtQDF1brNmMkV8B&amp;s=3Dfos7CTDKluRx8J3B5J8_wS=
7CxdL_-BtzuA6pLlAC12c&amp;e=3D</a> <br>
Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__lists.yoctoproject.org_mt_106480591_7048771&amp;d=3DDwIFaQ&amp;c=3D=
ncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsR=
ih1DULJTKUkSGa66m67E&amp;m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxWGjIbzGJU0esPY=
lMsEtQDF1brNmMkV8B&amp;s=3D2ZUpE8H5evnsYgSAeBHTBqJZDXkBh1kM8EPCSUC1eJM&amp;=
e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_106480591_7048771&amp;d=3D=
DwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonV=
uMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXp=
xWGjIbzGJU0esPYlMsEtQDF1brNmMkV8B&amp;s=3D2ZUpE8H5evnsYgSAeBHTBqJZDXkBh1kM8=
EPCSUC1eJM&amp;e=3D</a> <br>
Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__lists.yoctoproject.org_g_poky_unsub&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTvj=
IDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkS=
Ga66m67E&amp;m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxWGjIbzGJU0esPYlMsEtQDF1brN=
mMkV8B&amp;s=3DViCXlWzDVggNMRibI1W0hMcYPAC0mmxTE9cJoAdX7Ks&amp;e=3D" rel=3D=
"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/url?u=
=3Dhttps-3A__lists.yoctoproject.org_g_poky_unsub&amp;d=3DDwIFaQ&amp;c=3DncD=
TmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1=
DULJTKUkSGa66m67E&amp;m=3DS--YJNXDHpUvKR5mQeuYZ0aCdhlKQXpxWGjIbzGJU0esPYlMs=
EtQDF1brNmMkV8B&amp;s=3DViCXlWzDVggNMRibI1W0hMcYPAC0mmxTE9cJoAdX7Ks&amp;e=
=3D</a>=C2=A0 [<a href=3D"mailto:ecordonnier@snap.com" target=3D"_blank">ec=
ordonnier@snap.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000007c66f3061c2c37a4--

