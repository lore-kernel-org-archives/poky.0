Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web08.9027.1654976095264685040
 for <poky@lists.yoctoproject.org>;
 Sat, 11 Jun 2022 12:34:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GFNBCZWm;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: electronicconsult1@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id b8so2668916edj.11
        for <poky@lists.yoctoproject.org>; Sat, 11 Jun 2022 12:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=6+0WVo5RfubkPLhBGbCHeNQmA+o5uXmsfLN+cALp0Gc=;
        b=GFNBCZWmn2TOjktbL4Qrk3wdlt7LmFVdgrawaj0k/B9UM4nHkYyllgfz5B8d3xDD9F
         Rjn60RIuOVEXSX+3VyOIJoe0ok+re69TRerfZkgU/iGjimT5RtC6QO+Fq3qO9nxkUhCt
         XrOPvmarO1vePqEfukWPINTjRWPMJZZz3w/GWbnYYjkd3Y7uriuIJYBaWbMPgRtoMuSV
         HW0zO8fr5tmkyDdmua+sVgCvk8YxNESd+EE9T2fhHQZA2TE10suS1VhbdK0ohFr2S/am
         ZMa1izsk3bpZ8QYpo3oACiN9KWswRdfcNm/7Rbux8BnGlNtnO5XcbCwQt5jPY2P7K7Ye
         VnXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6+0WVo5RfubkPLhBGbCHeNQmA+o5uXmsfLN+cALp0Gc=;
        b=Doziu5mQ3lDjQnrxJSCYse1X73WL98pVR2hpUwbCWMgJ2UO1KgYDqgM3mOBZcRjuRA
         uE1oGNDUkIs69nEPOYqg4VOLiCr2tAZwLC9CTGQDPzxfvT8SD/Cn+SdgJ8xsD0H55asg
         dFlDeEgshfxDEsf17rveMXZMTq0s2I9tLKz9u8dfOrkXY+2ccjiHUOI+SNKMKX/ULGzx
         /BjhWRBqj08vfT/yWVya4Kf5SCqPLOp4sYGkmEHRyE8Wv36koG2WssoEwTMU1Fa+fWNo
         3lbiSBfPihOdHr6m6p70Gk/p+RckIznT9aNAd66yxUhcFN3eb5yxqTn0qNDebV7VNsae
         52eQ==
X-Gm-Message-State: AOAM533NMUMpmzbRYrQoRAp9VXJjKv/2J3SrqK1qws+8P7YI25ObBIlL
	FYLxWEeF9U2PpcDUgREGU080NJPzNRBxAgJk6BAyutOwsO8FEg==
X-Google-Smtp-Source: ABdhPJwvTsarYGmbWRnXca/bMwuhnIfGB610Kz4Q2E4nz3/51sVI+xXN02kVOz864G6R6GFoJrO/PJghklAaE9U0iT4=
X-Received: by 2002:a05:6402:2804:b0:431:7dde:6fb5 with SMTP id
 h4-20020a056402280400b004317dde6fb5mr30470190ede.379.1654976093605; Sat, 11
 Jun 2022 12:34:53 -0700 (PDT)
MIME-Version: 1.0
From: "Electronic Consult" <electronicconsult1@gmail.com>
Date: Sat, 11 Jun 2022 20:34:42 +0100
Message-ID: <CAGUWaEH_RpydQc_gJic1RCGrDsPvCa08OVZzr-dbhH8_-tHjbQ@mail.gmail.com>
Subject: Creating a macro in Bitbake for autotools #bitbake
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002bd1df05e13126b6"

--0000000000002bd1df05e13126b6
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm working with a Bitbake recipe & having issues trying to get it to
create a macro.

The idea is that the PR of the Yocto build will be visible to the end user
in my C++ based GUI application, in C/ C++ it would be something like:

#define YOCTO_BUILD_PR "1.1"

My C++ GUI application is built using autotools & in my Bitbake recipe I've
tried things like:

CPPFLAGS += "-DYOCTO_BUILD_VERSION=0.19.${PR}"
EXTRA_OEMAKE += "-DYOCTO_BUILD_VERSION=0.19.1"
EXTRA_OEMAKE += "-DYOCTO_BUILD_VERSION=\"0.19.1\""
TARGET_CFLAGS += "YOCTO_BUILD_VERSION=\"0.19.1\""
TARGET_CFLAGS += "-DYOCTO_PR_VERSION=${PR}"

But without success. Could you point me in the correct direction please?

Many thanks,

--0000000000002bd1df05e13126b6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I&#39;m working with a Bitbake recipe &amp; =
having issues trying to get it to create a macro.<br><br>The idea is that t=
he PR of the Yocto build will be visible to the end user in my C++ based GU=
I application, in C/ C++ it would be something like:<br><br>#define YOCTO_B=
UILD_PR &quot;1.1&quot;<br><br>My C++ GUI application is built using autoto=
ols &amp; in my Bitbake recipe I&#39;ve tried things like:<br><br>CPPFLAGS =
+=3D &quot;-DYOCTO_BUILD_VERSION=3D0.19.${PR}&quot;<br>EXTRA_OEMAKE +=3D &q=
uot;-DYOCTO_BUILD_VERSION=3D0.19.1&quot;<br>EXTRA_OEMAKE +=3D &quot;-DYOCTO=
_BUILD_VERSION=3D\&quot;0.19.1\&quot;&quot;<br>TARGET_CFLAGS +=3D &quot;YOC=
TO_BUILD_VERSION=3D\&quot;0.19.1\&quot;&quot;<br>TARGET_CFLAGS +=3D &quot;-=
DYOCTO_PR_VERSION=3D${PR}&quot;<br><br>But without success. Could you point=
 me in the correct direction please?<br><br>Many thanks,</div>

--0000000000002bd1df05e13126b6--
