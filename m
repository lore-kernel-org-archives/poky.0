Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
 by mx.groups.io with SMTP id smtpd.web10.220.1669773704189276179
 for <poky@lists.yoctoproject.org>;
 Tue, 29 Nov 2022 18:01:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RJzSUGAT;
 spf=pass (domain: gmail.com, ip: 209.85.210.54, mailfrom: raj.khem@gmail.com)
Received: by mail-ot1-f54.google.com with SMTP id p8-20020a056830130800b0066bb73cf3bcso10351630otq.11
        for <poky@lists.yoctoproject.org>; Tue, 29 Nov 2022 18:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oNy0Xszos8C9Yue3SRsmQ3nU5ajMn/XnNEq+fTHuSTI=;
        b=RJzSUGATttqU+ZxMqHRnUH9fzdL+YvNAWHKsuUs7OTJalgCDrTS9raxdgLLR2k2psr
         uELpRzRgYia4GBKPiD4iTmJU+vRJ97k1HNK2rAzwxWq0OMGUu5X7zM3AeBrG6Y1TZwj8
         nKQ7viZ1bYMJyS6YLQ0OzFKhnbIss/9Sdm/ObRIv7jZVlqSE8ynTEngmZ3xOlqEr4aPO
         oZaGar6a7njng3J8JcVBRQUBpgBOHYoad9n6LxeFHww4ODMrOdObIGyEy8BNIrU1lt/B
         2PjYTLIJ6qPl3AzbP4oowkpzAKtSDvnuhPi3dkjjR1u1Cy506/8G1Gvvu97jHG4vO59V
         F4qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oNy0Xszos8C9Yue3SRsmQ3nU5ajMn/XnNEq+fTHuSTI=;
        b=pQd+PqZs89wLhh3o+AhLrbrVf43jPJTREpvmw5eXKLZYbwLFitkWXTuYdVlsmSer1d
         B9u2JX+87DwX+q+MegUuxipvyYDQjRgw0DzDah2oMhGIPxC1pRpAwdI9ujTMkR0G9hvw
         D2U1Z25nxf/ApSiUwgJuyTHMNWLXTdUrphK2pMfh7JMMZ3vSE6zH/K4mBkv18xBUGgtG
         Qpe+3Q/QyaNI/TSfc9ZwTqmOJxw4L4caEDll0+MR8RmjEw8bFH/7pBSoSLFH89hbcZY1
         Pw6sZVfoJIiL3ZpH1vb4EbW5qu9ulHY3J2bDbs2S1vAk7NGE8c7h7T9wUfSBdYRAKDKk
         0g5g==
X-Gm-Message-State: ANoB5plov+w3E46kWtF3V9dJeMow7GVtqnXPN33BH3BnT3rBn8ste6Yj
	msC8oggm/We5EnI7Yj6+PJIv7wgWQBgN8ZZz9Sw=
X-Google-Smtp-Source: AA0mqf6YElKtrf+hVih1DZx9QbeGFQaO4/f8FnCf3PvwxrQmte7zYslNlXIKP66mI46ZDOWfYfoBXtG62sw+U5SVCMs=
X-Received: by 2002:a9d:6486:0:b0:66d:ca7a:8b1a with SMTP id
 g6-20020a9d6486000000b0066dca7a8b1amr20659296otl.55.1669773703379; Tue, 29
 Nov 2022 18:01:43 -0800 (PST)
MIME-Version: 1.0
References: <oy3w.1669223320962012665.WVBs@lists.yoctoproject.org>
In-Reply-To: <oy3w.1669223320962012665.WVBs@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 29 Nov 2022 18:01:17 -0800
Message-ID: <CAMKF1sozCP6bcFdtQzPFugatp4wmrO8pS+_Kv+OAWiBX0OQq8Q@mail.gmail.com>
Subject: Re: [poky] stdout overwriting logger output for service units
To: jcmalek@lakeheadu.ca
Cc: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

maybe try

[Service]
StandardError=3Djournal
StandardOutput=3Djournal

as well in your service unit file, might help.

On Wed, Nov 23, 2022 at 9:08 AM <jcmalek@lakeheadu.ca> wrote:
>
> Hi there Poky team,
>
> I have recently noticed that some of the stdout output has been overwriti=
ng the logger output when I do a "journalctl -u service_name" on any of the=
 services. The systemd team has referred me to this project (my downstream =
distro) to look into the issue before they are willing to have a look. They=
 would ideally like this tested on a newer version of systemd. The steps to=
 reproduce the problem are fairly simple. I have hopefully included all the=
 relevant details below. Please let me know if there is anything else you n=
eed.
>
>
>
> systemd version the issue has been seen with
>
> 246
>
> Used distribution
>
> Poky (Yocto Project Reference Distro) 3.2.4 \n \l
>
> Linux kernel version used
>
> 5.12.10
>
> CPU architectures issue was seen on
>
> arm
>
> Component
>
> journalctl
>
> Expected behaviour you didn't see
>
> Expected both logger and standard output to appear in service unit logs:
>
> journalctl -f -u test
> Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 1
> Nov 16 15:05:08 c-00012 root[1650]: Logger: 1
> Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 2
> Nov 16 15:05:08 c-00012 root[1652]: Logger: 2
> Nov 16 15:05:09 c-00012 sh[1617]: Standard output: 3
> Nov 16 15:05:09 c-00012 root[1654]: Logger: 3
> Nov 16 15:05:10 c-00012 sh[1617]: Standard output: 4
> Nov 16 15:05:10 c-00012 root[1656]: Logger: 4
> Nov 16 15:05:11 c-00012 sh[1617]: Standard output: 5
> Nov 16 15:05:11 c-00012 root[1658]: Logger: 5
>
> Unexpected behaviour you saw
>
> I only get the standard output messages and every once and a while one of=
 the logger messages sneaks through:
>
> journalctl -f -u test
> Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 1
> Nov 16 15:05:08 c-00012 sh[1617]: Standard output: 2
> Nov 16 15:05:09 c-00012 sh[1617]: Standard output: 3
> Nov 16 15:06:09 c-00012 root[1654]: Logger: 3
> Nov 16 15:05:10 c-00012 sh[1617]: Standard output: 4
> Nov 16 15:05:11 c-00012 sh[1617]: Standard output: 5
>
> Steps to reproduce the problem
>
> test.service contents:
>
> [Unit]
> Description=3DTest
> DefaultDependencies=3Dno
>
>
> [Service]
> Type=3Doneshot
> ExecStart=3D/bin/sh /mytest.sh
> RemainAfterExit=3Dyes
>
> /mytest.sh contents:
>
> #!/bin/sh
> i=3D0
> while [ $i -le 100 ]; do
>   echo "Standard output: ${i}"
>   logger "Logger: ${i}"
>   sleep 1
>   i=3D$((i+1))
> done
>
> journalctl -f -u test
> systemctl start test
>
>
>=20
>
