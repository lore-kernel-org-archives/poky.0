Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD084C36010
	for <webhook@archiver.kernel.org>; Fri,  4 Apr 2025 18:58:55 +0000 (UTC)
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
 by mx.groups.io with SMTP id smtpd.web11.5054.1743793126926147335
 for <poky@lists.yoctoproject.org>;
 Fri, 04 Apr 2025 11:58:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WSuCEzbn;
 spf=pass (domain: gmail.com, ip: 209.85.222.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7c5aecec8f3so334503885a.1
        for <poky@lists.yoctoproject.org>; Fri, 04 Apr 2025 11:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743793126; x=1744397926; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NBCmhPFdxVJyhpcqWFvT3+a+9lZTGytdMMbhyj4RUtI=;
        b=WSuCEzbn3LUU2Vw5TZ5vXWfjrsWf8BDnkTRVOG0hadall2ffafkYKI7qaBXJDU5ORc
         bVF21V+mmxKwYeMzmek1JSo6sWN11NhLF/ICFlj9hFZ71DEFbHgg273OwfmUfbwP6jqI
         hiwvjqCSw0jUazSK1kqrv7No9S8IXzNwokGnDhPaj3M4NxlKi10ngMuB4zbhx02JSb4t
         m/7X4k63enfLTLWu6GHoi9gBZCcFJHO2MFBv4xr8pdnITpdTpAKwkUHAtPl6Mv75duCK
         C5Y4usSLfyT9WxRRvb117Ts0cDysJjaXLtLWFKP8mms1+uP0P6Pz5jTfTKM7C7J44RJ1
         te5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743793126; x=1744397926;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NBCmhPFdxVJyhpcqWFvT3+a+9lZTGytdMMbhyj4RUtI=;
        b=DbKiQelEPyGqcGfbTsCCcVDzr+PWbTXqt73pqQUM5JXmrJqFBZzMpgISI5BMBTc5RN
         JyLnHHD7stGHUW3Nu/YW+GgGoOQCyDMHDj1IDOpQqnd8JcPIwlW3JAnI1GkKcVAfpM/s
         2mK47qTNBMwGPTm1cih/ER0Vtij6oVrcM0fjBb2fZy1sTZwFH+PqCnpjk2s1fc7+Yr0W
         H5dvnMkM3amtXdlsdgpNq+J71LhXxNq4zqbQBUaNnldxlEdzKrZP1y13BXyHNNGZC1rT
         qmT2EAxtRJhMd2mIeswOuQSdwZll7VDo+svWvMBON8ECKppBMBR/nSEJ0eCCHhMyRNdV
         CEsg==
X-Gm-Message-State: AOJu0YyefOc+W+2iz+Jwj1goQoNciCM/UIxSgLybkN0Kdh3cFg1QCZ/E
	9O0D/7Unp5XtQMBZrTczn3aih9DBXMJuQbMt49qFu9SFvH7vRgpiQEuSCQz290QpEg3gwIsQ6wr
	VTnwGcr2k3kpQPn/JnEmr0/cOGBA=
X-Gm-Gg: ASbGncsDEWdTxFDij/i2zSr5JVVcoJV3yko7Zi34tk+VwWjAmW/zK5VFpAN7wDBkll1
	cwBgHr4wmanqNX1nP9btBNCs1IQ4r/pq9oINKholDb6x8fUhoOL3JwqbVKO1plzqwdLZBvsEKgW
	1JKvM7yw12e1utsE1iNsPRX+LYTj9HN5lNqvddLgMLnUx8RuGSjGPvgaHwDVLH
X-Google-Smtp-Source: AGHT+IFr/TO+88YyWnUthTByrioIjcOjluLQRDWnJ6V95TuED1gy8blgxNrw13cuD+Rc5Dw3VZggbCg3yJ1TBDnahRc=
X-Received: by 2002:a05:620a:370b:b0:7c7:6c20:1ae0 with SMTP id
 af79cd13be357-7c774dd6ee1mr579721485a.35.1743793125980; Fri, 04 Apr 2025
 11:58:45 -0700 (PDT)
MIME-Version: 1.0
References: <1HoH.1743770357950104311.rsrM@lists.yoctoproject.org>
In-Reply-To: <1HoH.1743770357950104311.rsrM@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 4 Apr 2025 20:58:33 +0200
X-Gm-Features: ATxdqUHxsbPQlsZObG-uCv8gFlfb3Jl9rNIowDkEm33_7-036AcgMtLDy_GfgJs
Message-ID: <CANNYZj83TB35LP=uTQCjW2GkicXzc-_450_eHay6GiL86HUnPg@mail.gmail.com>
Subject: Re: [poky] systemd-systemctl-native broken after update to walnascar
 #poky #yocto
To: jan.kircher@leica-microsystems.com
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 04 Apr 2025 18:58:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13588

On Fri, 4 Apr 2025 at 14:39, Jan Kircher via lists.yoctoproject.org
<jan.kircher=3Dleica-microsystems.com@lists.yoctoproject.org> wrote:
> when we upgrade poky to walnascar, our builds fail due to systemd-systemc=
tl-native (please find the log attached).
>
> As a workaround we disabled Werror-nonnull with a simple .bbappend:
> BUILD_CFLAGS +=3D "-Wno-error=3Dnonnull"
>
> We managed to narrow down the issue to our use of DEBUG_BUILD=3D1 in loca=
l.conf. Images can be built again when we remove it. However, we struggle t=
o solve this issue on our own. Is it possible for anyone to reproduce this =
issue? Adding DEBUG_BUILD=3D1 to local.conf should be enough, then bitbake =
systemd-systemctl-native should fail.

Works for me :-/ What host compiler and distro are you using?

$ gcc --version
gcc (Debian 12.2.0-14) 12.2.0
Copyright (C) 2022 Free Software Foundation, Inc.
$ cat /etc/os-release
PRETTY_NAME=3D"Debian GNU/Linux 12 (bookworm)"

The actual issue is:

In file included from /usr/include/string.h:548,
                 from ../git/src/systemd/sd-id128.h:22,
                 from ../git/src/shared/creds-util.c:9:
In function =E2=80=98memcpy=E2=80=99,
    inlined from =E2=80=98encrypt_credential_and_warn=E2=80=99 at
../git/src/shared/creds-util.c:1090:17:
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:10: error:
argument 2 null where non-null expected [-Werror=3Dnonnull]
   29 |   return __builtin___memcpy_chk (__dest, __src, __len,
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   30 |                                  __glibc_objsize0 (__dest));
      |                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:10: note: in
a call to built-in function =E2=80=98__builtin___memcpy_chk=E2=80=99
In function =E2=80=98memcpy=E2=80=99,
    inlined from =E2=80=98encrypt_credential_and_warn=E2=80=99 at
../git/src/shared/creds-util.c:1091:17:
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:10: error:
argument 2 null where non-null expected [-Werror=3Dnonnull]
   29 |   return __builtin___memcpy_chk (__dest, __src, __len,
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   30 |                                  __glibc_objsize0 (__dest));
      |                                  ~~~~~~~~~~~~~~~~~~~~~~~~~~
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:10: note: in
a call to built-in function =E2=80=98__builtin___memcpy_chk=E2=80=99

You can probably see how that argument ends up being null, and submit
a patch to systemd upstream?

Alex

