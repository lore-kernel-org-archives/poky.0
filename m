Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web12.6758.1598939160686241252
 for <poky@lists.yoctoproject.org>;
 Mon, 31 Aug 2020 22:46:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=d83iJLNM;
 spf=pass (domain: gmail.com, ip: 209.85.128.50, mailfrom: msgboardpana@gmail.com)
Received: by mail-wm1-f50.google.com with SMTP id w2so172765wmi.1
        for <poky@lists.yoctoproject.org>; Mon, 31 Aug 2020 22:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=h4HI0sRU0E6hMrKNl05ByoFjf3GZAY+nw754ImC6iVs=;
        b=d83iJLNMj82yBR/7d4sWxz2uhRmSeh7LDTSXG2dvjF0XxNZ0lB7tWvdG4uxLrjkvLg
         Gc+QU36NLXEbMaGo7f3CoCGOklqEV052XwRCUw54CAAceySkMHkYzh7fXpA7C6DEN8eQ
         ygQMe3slMeC9kj0auatRRUuKnWm81CjpP890LABPtm3xsoxB1WpTue2TVhOOEbbS6xYh
         tEHRuwp8P3tj10U1wzMbf+l1zy+q5zGN6mmXpEbNhlhWVOJMfO7HXciw+p3QIhOTqrRF
         j1fCN+F2sP3B6IQqC0GMbS/6CAX2s7P3Zy0TBPfm8my+XFDIP2LAyk0bFJven6ewZ8Di
         Bk2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=h4HI0sRU0E6hMrKNl05ByoFjf3GZAY+nw754ImC6iVs=;
        b=AovSU1S1/XrAngiNQ33pgFVjgYdyK5qJoJ7lHW7Py7Np7ZQbP1D6jgqUUU7FlV3bns
         pVLoouHGZvZVf9bmEJHHAwYyysxM+aDaINHUxASYw/TOEYHgxqUvSuGYSKb39R4cGxC/
         K1jQBGl16JD1h1HToDN6xjcNa82AX3kXuDUboucirXF9WrcAFGoD5MY1hWGXk+pIgnyP
         10wAUNZuBnAE7FXxCrAgoszhX6CMCP4dbRpJhMO766MikZAx4K7wvpOTKnwzOcT/WTkp
         C0UQZpok2wbooraWVw8fm8SjqobW10BT9A6OLrCZIFeXKOozr3uNqH3uD0wruy9Dm5Jy
         IIAQ==
X-Gm-Message-State: AOAM532D/6TdVBxH984ENgmveajMEzUhUkCVPiFaUVcMNMTWPhsiKrZU
	6fVZF/h8MmWff7StNaaO7p8+o0F22zJqy6idyHQyxgv7
X-Google-Smtp-Source: ABdhPJwhP+VAFcNCUSC8S0kv9VzLyx7VLVGttZmRLodyDXm+jHIjVlWsoC+ik8KB/n7kYCT+qrADYj4tiRyGNSUuycQ=
X-Received: by 2002:a1c:2501:: with SMTP id l1mr80308wml.16.1598939158586;
 Mon, 31 Aug 2020 22:45:58 -0700 (PDT)
MIME-Version: 1.0
From: "msg board" <msgboardpana@gmail.com>
Date: Mon, 31 Aug 2020 22:45:47 -0700
Message-ID: <CAJRqWa_cdQY+kPZkzN=4GVbNanJQ6E2KUKvXs0Nw-OxEgmGhow@mail.gmail.com>
Subject: poky booting over PXE, but asks root user password even if debug-tweaks enabled
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000090aa2305ae3a081b"

--00000000000090aa2305ae3a081b
Content-Type: text/plain; charset="UTF-8"

Hello,

I generated a distro based on poky and am PXE booting the distro. The
rootfs is mounted over NFS. The same distro when installed on actual device
does not have password for root user. i.e. after the actual hardware device
has fully booted then user can type 'root' as username and no password is
asked for root user. (debug-tweaks is enabled in local.conf)

However, the same distro booted over PXE boot with same rootfs mounted over
NFS asks for password for root user. The distro has systemd as init manager
and many init services fail during boot when booting over PXE. One such
service which fails is systemd-logind.service . I wonder if there is
anything related to this failing service.

thank you

--00000000000090aa2305ae3a081b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I generated a distro based on po=
ky and am PXE booting the distro. The rootfs is mounted over NFS. The same =
distro when installed on actual device does not have password for root user=
. i.e. after the actual hardware device has fully booted then user can type=
 &#39;root&#39; as username and no password is asked for root user. (debug-=
tweaks is enabled in local.conf)</div><div><br></div><div>However, the same=
 distro booted over PXE boot with same rootfs mounted over NFS asks for pas=
sword for root user. The distro has systemd as init manager and many init s=
ervices fail during boot when booting over PXE. One such service which fail=
s is systemd-logind.service . I wonder if there is anything related to this=
 failing service.=C2=A0</div><div><br></div><div>thank you</div></div>

--00000000000090aa2305ae3a081b--
