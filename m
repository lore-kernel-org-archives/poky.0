Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7175AC2BD09
	for <webhook@archiver.kernel.org>; Mon,  1 Jul 2024 09:31:44 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web11.15826.1719826298463534833
 for <poky@lists.yoctoproject.org>;
 Mon, 01 Jul 2024 02:31:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aWj1WMSc;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ec58040f39so26807701fa.2
        for <poky@lists.yoctoproject.org>; Mon, 01 Jul 2024 02:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719826296; x=1720431096; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PxXMaXDXuD05R8IXCvB1mtBb7iN82mdGFHoV7KBclUI=;
        b=aWj1WMSc1KIZkasGZLZ+TZciADl0s6mPKQ3kFG4djXih/n58jrmpJiXaqoJXY2GCTZ
         BUTkYH1BbAivztMb18zh0JGpx3TEZo8wrrYtJuX0NOcXE5uCxwPUCtuvVI16+PEdtt25
         WoBtKEu/DyVSy5wRvHDM1y2FegvU/2lc2JkUUWMwxh0P96H/NYymLGftYwMKuLQftqlY
         xkZNYZGmrs9JBI01dFHQjWL+uMI3Uxh109Bw+A9Ibw8ojwp2MMp8wFMSWaaGSRIxMruP
         K5OfsmD4Gkptu/8v0nmJ9VJCFhxDmIY1sHju2FPy/C3rRLzpWbvVvSLADYifn6bqPGFQ
         qoQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719826296; x=1720431096;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PxXMaXDXuD05R8IXCvB1mtBb7iN82mdGFHoV7KBclUI=;
        b=B+hcOBUZtwSfpa41VMQgognWdGXyB0/fLFn1ekR/w5VPXBPSBdaWka+GSKh2rqRv+Q
         Y0PEu0bR0d3gKFI6fpirqCDPLrJ4pQvMz9GDgu4mWzWzaDvwOJvVEoOEIRX+bt4ITTPK
         GkM+VqucF+8c9L1+aVe87zSy1tk90t19s9VTC921Mubxyhl7ZycMguANc/qZY9fcCPCW
         5PTkQaF7C84awYKYnQcfoDpj9iyf+2jM0LJKNxMigiFJ4M/Vt1Pro8bT5VwywKjHUtnP
         E7uIaaMc3rzKVE+eMtTQE6GclQ/6dbR5Sxmxj3G7pfW1E7WTNoNzxYojADQdUART2mdz
         vyog==
X-Forwarded-Encrypted: i=1; AJvYcCWmLlNaT6eHMi6q0JQhnQPZ7aLwl5w8PBmkBYYm87veqyrLsL/Rq4JnKaEv7ETg+elu3WJZVhSFP7m+qgNakEd+TJhN4T9wQLybgDY=
X-Gm-Message-State: AOJu0Yz917xTtGYtfk+WIAJWDemKiXctbksJ3DommHEXq/M2YAndGxDg
	Y5Ufz6TA4SFb8iYgnHNhJ29X+g/cA7J4CnNGdEgj3ns9k3WQnCjQafnHd7KWnVdVKD4cY52fsUg
	2UD/j+2h7XoNZuK/YqXZaK7rVv9k=
X-Google-Smtp-Source: AGHT+IEeiFv5cHRibchtN1NhFb2iy3/JhPEEkkUL/80aG8G+GdjkyYmQIUNeexkkRWsUA9kLq/XYAqN/wBLD58D0ShE=
X-Received: by 2002:a2e:a595:0:b0:2ea:91cf:a5f0 with SMTP id
 38308e7fff4ca-2ee5e37a488mr39551641fa.19.1719826296174; Mon, 01 Jul 2024
 02:31:36 -0700 (PDT)
MIME-Version: 1.0
References: <20240604114647.2897172-1-ecordonnier@snap.com>
 <2024060817352536c2c18d@mail.local> <17D7A530C052D9E2.15678@lists.yoctoproject.org>
 <CAHUKmYZpZYbmrZ4jmnUU2LZ0WTkgv+Dti5DhnXONVLtJQnheug@mail.gmail.com>
In-Reply-To: <CAHUKmYZpZYbmrZ4jmnUU2LZ0WTkgv+Dti5DhnXONVLtJQnheug@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 1 Jul 2024 11:31:25 +0200
Message-ID: <CANNYZj_4JEfKYx06bLu8nxMVhShTfsrBAU9cQ9uG1po79FEkNw@mail.gmail.com>
Subject: Re: [poky] [PATCH] poky-alt: enable minidebuginfo
To: ecordonnier@snap.com
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 01 Jul 2024 09:31:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13400

In general we try to have the fullest feature set in poky, yes. If
things aren't enabled, they will regress.

Alex

On Mon, 1 Jul 2024 at 11:28, Etienne Cordonnier via
lists.yoctoproject.org <ecordonnier=3Dsnap.com@lists.yoctoproject.org>
wrote:
>
> Hi,
> the fix has been merged to main [1], so this shouldn't cause test failure=
s any more, and a self-test which always runs (independently of whether the=
 feature is enabled in a distro) was added, so this should limit the bitrot=
.
> Richard also had indicated that he gets nervous about blanket distro chan=
ges [2].
>
> Is there still some value in enabling this feature per default in some DI=
STRO? Having symbolicated core-stacks during development is practical IMO.
>
> [1]: https://git.yoctoproject.org/poky/commit/?id=3Dd87082efa5daecac35bff=
3391d06d5d37de48cc4
> [2]: https://lists.openembedded.org/g/openembedded-core/message/200332
>
> =C3=89tienne
>
>
> On Mon, Jun 10, 2024 at 2:43=E2=80=AFPM Etienne Cordonnier via lists.yoct=
oproject.org <ecordonnier=3Dsnap.com@lists.yoctoproject.org> wrote:
>>
>> Hi Alexandre,
>> I was able to reproduce locally with MACHINE=3D"qemuarm64". I sent this =
fix: https://lists.openembedded.org/g/openembedded-core/message/200473
>>
>> =C3=89tienne
>>
>> On Sat, Jun 8, 2024 at 7:35=E2=80=AFPM Alexandre Belloni <alexandre.bell=
oni@bootlin.com> wrote:
>>>
>>>
>>> Hello,
>>>
>>> This causes failures on anything that is not x86:
>>>
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoct=
oproject.org_typhoon_-23_builders_107_builds_6257_steps_15_logs_stdio&d=3DD=
wIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_=
Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2=
RnmvWzRS9uztqEu2aqKn&s=3D_D19schknEkv6i6PAZB3GKG-CN-Pgdt1Ft0ZH5_JtcM&e=3D
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoct=
oproject.org_typhoon_-23_builders_102_builds_6204_steps_15_logs_stdio&d=3DD=
wIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_=
Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2=
RnmvWzRS9uztqEu2aqKn&s=3DoUIbGxdw3lPq0WMLI8seut-iU1VfEuI1ZjgbU-xoT4Q&e=3D
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoct=
oproject.org_typhoon_-23_builders_131_builds_4448_steps_15_logs_stdio&d=3DD=
wIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_=
Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2=
RnmvWzRS9uztqEu2aqKn&s=3D3n6zz9lJFpumjJYHK0aMu1xMCHuWAJTh39y9HuWpUz0&e=3D
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__autobuilder.yoct=
oproject.org_typhoon_-23_builders_110_builds_7960_steps_14_logs_stdio&d=3DD=
wIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx_=
Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A2=
RnmvWzRS9uztqEu2aqKn&s=3Drem_GsMJdA3Hyepv7n34eaFrsrl7fEeaRYE1UwGd6dc&e=3D
>>>
>>> Traceback (most recent call last):
>>>   File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/=
core/decorator/__init__.py", line 35, in wrapped_f
>>>     return func(*args, **kwargs)
>>>            ^^^^^^^^^^^^^^^^^^^^^
>>>   File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/=
core/decorator/__init__.py", line 35, in wrapped_f
>>>     return func(*args, **kwargs)
>>>            ^^^^^^^^^^^^^^^^^^^^^
>>>   File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/=
core/decorator/__init__.py", line 35, in wrapped_f
>>>     return func(*args, **kwargs)
>>>            ^^^^^^^^^^^^^^^^^^^^^
>>>   File "/home/pokybuild/yocto-worker/qemuarm64-alt/build/meta/lib/oeqa/=
runtime/cases/systemd.py", line 159, in test_systemd_coredump_minidebuginfo
>>>     self.assertEqual(status, 0, msg=3D'MiniDebugInfo Test failed: %s' %=
 output)
>>> AssertionError: 1 !=3D 0 : MiniDebugInfo Test failed: No match found.
>>> -- Notice: 1 systemd-coredump@.service unit is running, output may be i=
ncomplete.
>>>
>>> On 04/06/2024 13:46:47+0200, Etienne Cordonnier via lists.yoctoproject.=
org wrote:
>>> > From: Etienne Cordonnier <ecordonnier@snap.com>
>>> >
>>> > Enable minidebuginfo in poky-alt in order to increase test coverage i=
n CI and reduce potential bitrotting.
>>> >
>>> > Signed-off-by: Etienne Cordonnier <ecordonnier@snap.com>
>>> > ---
>>> >  meta-poky/conf/distro/include/poky-distro-alt-test-config.inc | 2 +-
>>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>>> >
>>> > diff --git a/meta-poky/conf/distro/include/poky-distro-alt-test-confi=
g.inc b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
>>> > index 3e10251..b38a332 100644
>>> > --- a/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
>>> > +++ b/meta-poky/conf/distro/include/poky-distro-alt-test-config.inc
>>> > @@ -1,5 +1,5 @@
>>> >  # Add extra DISTRO_FEATUREs
>>> > -DISTRO_FEATURES:append =3D " pam usrmerge"
>>> > +DISTRO_FEATURES:append =3D " minidebuginfo pam usrmerge"
>>> >
>>> >  # Use our alternate kernel version
>>> >  PREFERRED_VERSION_linux-yocto =3D "6.6%"
>>> > --
>>> > 2.36.1.vfs.0.0
>>> >
>>>
>>> >
>>> >
>>> >
>>>
>>>
>>> --
>>> Alexandre Belloni, co-owner and COO, Bootlin
>>> Embedded Linux and Kernel engineering
>>> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__bootlin.com&d=3D=
DwIBAg&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&r=3DAhkbNonVuMIGRfPx=
_Qj9TsRih1DULJTKUkSGa66m67E&m=3DoxembljGFjRIOzwJphKXtbNChi4g37E-X5UUfnO5m9A=
2RnmvWzRS9uztqEu2aqKn&s=3DzPYLCfPUxLIkMEoi0O1aguJhBfKHex_dusgPiEc-4lY&e=3D
>>
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#13399): https://lists.yoctoproject.org/g/poky/message=
/13399
> Mute This Topic: https://lists.yoctoproject.org/mt/106480591/1686489
> Group Owner: poky+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [alex.kanavin@gm=
ail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

