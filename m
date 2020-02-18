Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web10.4871.1582037006263262172
 for <poky@lists.yoctoproject.org>;
 Tue, 18 Feb 2020 06:43:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=iv3wbP5k;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: champagne.guillaume.c@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id a141so9816813qkg.6
        for <poky@lists.yoctoproject.org>; Tue, 18 Feb 2020 06:43:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=UKgHk8QHzNZ5aHOQgaqmSasBWFDvTPBgajxbnzIUVcE=;
        b=iv3wbP5k+/0M5phQuLGXeonXMcLmfGsH9xF+HPloF6HqSdR1iVM3N2E1Zgvq5XyG+V
         IgaDQ0Ih8emneTql1DjP1HTwxPIKqEVsVfmn3OxNnaYWKzDZEZBwTe4zlGI4ttrjnydb
         yKRctbAFpTyUsHNyfkRSI+kHYr0ISLQQ8D+Q9VK/P9WL/C4VnI3WcjkeoENWGRKfJ03M
         5+8RQ50d7Prnfqb/FOoW1tVhCA/sjsNDutlVWDD6zvAnYPudU9DORmKNVQTOrkkJS55p
         pta3IaieBZIdGlUSxkWHA1RG2FxSBNh7YQeOlvR0yRkKGzp47GoBh/iKiYu2Mwcs432z
         zOCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=UKgHk8QHzNZ5aHOQgaqmSasBWFDvTPBgajxbnzIUVcE=;
        b=f9Z1U0OnF6M3co5oaja7z3XkcAQQ1FCVZG1dnC0xBHagxxUvbNFO245/x7W+BvAGOa
         BnaAr6rjzinSGH3TIwomjD1ednvm6FO+OHMfY3qJpfWf5y/dDI+mgPNW5cBYHXVqCzaO
         M4udFiT0ul0THSs/woaxN95PjCDj16TxxVtTMYPMjTIEvEfqn5+nsiFFc2jNNOBiBgPG
         8K4VpvDanbDPUfC45x7qsoneHx7qUX/R3hsQyHOB6BDaCXsjChRU+cS4pzcdDLIfUgUQ
         el3T737jEXDQwwusLEfAmj2ps4Hi9wKiqr3gsgJIwTc5mzhIHx9IfACIVvJtauvspMbm
         +R5A==
X-Gm-Message-State: APjAAAUNtjnuuaLn6tusdGaMIVkXVccst0r22mZNM2sg+6IAyv5m0nMP
	SKVcM8F/Qnq555oBs+K17o4dJ8kChFthUofYoipcMxmNp10=
X-Google-Smtp-Source: APXvYqz1gJYewSV50phx1YqU0i2wHoWcvreVlA1OQrZ908ERgXG/UgcSOW/UAV/SfMlICI28ZBeEaz7mTS078Nz3GpE=
X-Received: by 2002:ae9:c316:: with SMTP id n22mr18441323qkg.72.1582037005254;
 Tue, 18 Feb 2020 06:43:25 -0800 (PST)
MIME-Version: 1.0
From: "Guillaume Champagne" <champagne.guillaume.c@gmail.com>
Date: Tue, 18 Feb 2020 09:43:14 -0500
Message-ID: <CAHSN6OeyfB-PYE=+Uk9o1=dCNu=a8Vb10Q8y8GHzuFg7oNXx0w@mail.gmail.com>
Subject: pkg_postinst_ontarget scriptlets without pkg_postinst content
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b84637059edab128"

--000000000000b84637059edab128
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

Is it possible for a postinst scriplets to have two steps, one ran at
do_rootfs time and a second deferred to first boot? I considered using
pkg_postinst_ontarget, but the resulting scriptlet deferred to first boot
is concatenated with `pkg_postinst` instead of containing only the
`pkg_postinst_ontarget` part.

Using postint_ontarget directly (when it is defined) in
meta/classes/package.bbclass::process_postinst_on_target would produce the
behavior I want, but I'm not sure this would be the way to go. Is there a
better way to achieve this?

Thank you,
Guillaume

--000000000000b84637059edab128
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>Is it possible =
for a postinst scriplets to have two steps, one ran at do_rootfs time and a=
 second deferred to first boot? I considered using pkg_postinst_ontarget, b=
ut the resulting scriptlet deferred to first boot is concatenated with `pkg=
_postinst` instead of containing only the `pkg_postinst_ontarget` part.</di=
v><div><br></div><div>Using postint_ontarget directly (when it is defined) =
in meta/classes/package.bbclass::process_postinst_on_target would produce t=
he behavior I want, but I&#39;m not sure this would be the way to go. Is th=
ere a better way to achieve this?<br></div><div><br></div><div>Thank you,</=
div><div>Guillaume<br></div></div>

--000000000000b84637059edab128--
