Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.121.1671229747886518080
 for <poky@lists.yoctoproject.org>;
 Fri, 16 Dec 2022 14:29:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qeAdp6Ep;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: rustyhowell@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id a19so3650673ljk.0
        for <poky@lists.yoctoproject.org>; Fri, 16 Dec 2022 14:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3eyDtpZIbK9TWGWpROrkAVLCTbg0lRAU9unkJ9NVe5Y=;
        b=qeAdp6EpHKBSGkIs2R/RVGupiYpkI87Boa2RLuNRXEt5URNur9QV9XqFsUQ5Ki7m89
         5e75PupV2k7q7hm7ISHFa/xan0AZZWQrNTK3gOng6bqhrLkEJTuFtdA31n48GJN0HI3f
         h1/785yp6DA7LxplI/9MW1S23gnHTRd4kQB5q/xjcuUFWnXEHLMe81NJfPmb7w61Mdor
         hk9YZUSE7ZtmfrwfjPrLOnt2AXSUhsuZXc82+Nl1vHhW/dIxodd83zso10oF9uWFroVF
         6PQ5lYtgWPHADPnIOLY0pjcu+UdhKOthyCXCZHkTu18lhnTyzEZXU5bJJzXHfBKvQYac
         NOiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3eyDtpZIbK9TWGWpROrkAVLCTbg0lRAU9unkJ9NVe5Y=;
        b=enroVymfp4SdTddmy3HjHWmSYp0y4v7wWSvy5BFocpkCsIhYfimhZeEDftG1NZBgCf
         ZeaOH9GSWLnqARwAA+1csxnljQQTQM5f2yVwKQQsp4IjeK77Mq3rDlPUoCX+O17Qh+iM
         rO2rOwac5ubmcvlUeL7CKKyBBdDi7x+0gDUf44keim5/gb50vnNH/2woI6OJK2SizUJ2
         OV6TE0ChinX0d7eKe/SspSPEuSypQHcQ94O2/zcf5G00ppCxfLdtW87S52FFVh9nxhBg
         6BcugwWP68iC75ExhO2+TudKOQ53kGynbS+fwp1ThokExp5T35UayqqTKDkYHGEsKIKO
         9FrA==
X-Gm-Message-State: ANoB5pmGpgCqvzK2gnYd/QT4tUIqgwVuABqg9Xf+RFj2y4zVFhvZnV2E
	LzmQNYCf/BJa6eP1T+nRngiWNJ7TpVTOEOadDPLVKvhR
X-Google-Smtp-Source: AA0mqf63WhZ541jWHtrBxRRYCJejJyH+L5t8fS0XLNrCg5oU4sWnABGOvTBLSUH50L9LbBEda2Fr7pUa6gWQyr38MJw=
X-Received: by 2002:a05:651c:2211:b0:26c:66c1:87f9 with SMTP id
 y17-20020a05651c221100b0026c66c187f9mr27048800ljq.47.1671229745505; Fri, 16
 Dec 2022 14:29:05 -0800 (PST)
MIME-Version: 1.0
From: "Rusty Howell" <rustyhowell@gmail.com>
Date: Fri, 16 Dec 2022 15:28:49 -0700
Message-ID: <CAE+BM3kDvMmpuh3H_d9PpsaDSfTvxRjef1oC++oPS7aHMCAuMA@mail.gmail.com>
Subject: pr-server improvements
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000051aae105eff97f7c"

--00000000000051aae105eff97f7c
Content-Type: text/plain; charset="UTF-8"

I have made some changes/improvements to the preserver that I needed for
work.   One was to expose the hist/nohist option on the bitbake-prserv
command line util. Another was to add self tests to the preserver
(bitbake-selftest prserv.tests.preserver).

The main change that I did was to make the preserver "OS version aware".
The problem arises because we are frequently working two or more versions
of our OS at the same time.  One release may be nearing release, one may be
nearing feature complete, while the other is still in heavy development.

Queries to the prserver include the OS version (as an int). OS version is
provided through a new variable PRSERV_OS_VERSION ??=0.  Our build system
just sets PRSERV_OS_VERSION in the local.conf appropriately based on the
build params.   The os_version added to the getPR() query and is stored as
a column in the database.   When the PRAUTO value is calculated, the prauto
value for the provided pkgversion/pkgarch/os_version tuple is going to be
greater than any matching tuple (pkgversion, pkgarch, os_version <
this_version).   In cases where the os_versions differ but the checksums
match, we use the same prauto value to avoid unnecessary pkg upgrades.

The changes have some self tests around them, but I should add some more I
think.

Is this something that would be of interest to others?  I'd happily
contribute it if it would be useful.
Rusty Howell

--00000000000051aae105eff97f7c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have made some changes/improvements to the preserve=
r that I needed for work.=C2=A0=C2=A0 One was to expose the hist/nohist opt=
ion on the bitbake-prserv command line util. Another was to add self tests =
to the preserver=C2=A0 (bitbake-selftest prserv.tests.preserver).<br></div>=
<div><br></div><div>The main change that I did was to make the preserver &q=
uot;OS version aware&quot;.=C2=A0 The problem arises because we are frequen=
tly working two or more versions of our OS at the same time.=C2=A0 One rele=
ase may be nearing release, one may be nearing feature complete, while the =
other is still in heavy development.</div><div><br></div><div>Queries to th=
e prserver include the OS version (as an int). OS version is provided throu=
gh a new variable PRSERV_OS_VERSION ??=3D0.=C2=A0 Our build system just set=
s PRSERV_OS_VERSION in the local.conf appropriately based on the build para=
ms. =C2=A0 The os_version added to the getPR() query and is stored as a col=
umn in the database.=C2=A0=C2=A0 When the PRAUTO value is calculated, the p=
rauto value for the provided pkgversion/pkgarch/os_version tuple is going t=
o be greater than any matching tuple (pkgversion, pkgarch, os_version &lt; =
this_version).=C2=A0=C2=A0 In cases where the os_versions differ but the ch=
ecksums match, we use the same prauto value to avoid unnecessary pkg upgrad=
es.</div><div><br></div><div>The changes have some self tests around them, =
but I should add some more I think.<br></div><div><br></div><div>Is this so=
mething that would be of interest to others?=C2=A0 I&#39;d happily contribu=
te it if it would be useful.</div><div>Rusty Howell<br></div></div>

--00000000000051aae105eff97f7c--
