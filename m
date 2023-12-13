Return-Path: <tolvupostur@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE39C4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 15:58:13 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
 by mx.groups.io with SMTP id smtpd.web10.39806.1702483088048745174
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Dec 2023 07:58:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dz4jRPsz;
 spf=pass (domain: gmail.com, ip: 209.85.222.42, mailfrom: tolvupostur@gmail.com)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-7bb4b7eb808so1841889241.3
        for <poky@lists.yoctoproject.org>; Wed, 13 Dec 2023 07:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702483087; x=1703087887; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LPZiUrHxGWRX0GOYYRX8JdBLDGvLhXJ18IWetqonHUE=;
        b=dz4jRPszS6j5RJNEMzkRLMAucDDjEDT/W2Wdirs1eFdrnP/sK9r/Dj6u+pXdYInk4v
         2jqsRPGNTeOAiFJd4BdGxmqGvEf+qYqE3geZcimmkOGZ0HKOie+09ouGYuJR5bgxYTZy
         NU08cjYhXJiLPdJhwcWEsWXyILvWkTZSA9ArhV+5ldySfaBI4q1mtWILTdTwRlHdvvpu
         NRDVl6tAnJ5+UA1DAOueNTu7lgOpR6HkWTEhwbZ9u2zhQzRAnm5AiOhtMSuiW2uhpk4P
         /KA6yiaRW82Izy0o4pnQN26rBgvCXttY/sPf773bw9w3QTRoivoXA7fQKkCrErnQr6p9
         sN/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702483087; x=1703087887;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LPZiUrHxGWRX0GOYYRX8JdBLDGvLhXJ18IWetqonHUE=;
        b=w5Xgl9l+GZbA/vC6+RjNP8FOKTTxhRvXpYe0Kx3N3VuXvCUzgT8kcHHYqBM+azdRqr
         tnf7zLdZ2qTh06alSO/tW2IDAQcmvpULG+aHZL1UJjc0ox6OyQ8SWItkeQO1OGnmehRZ
         9b1puu5CerAxFeaEJNJtIArmipzWaz7IN+gL5w3H34NwMeCf4jx1KHihGfTIGu2cnZT5
         Lx5G9s4IcIc5eySZtv9suM6hmEj6PclwVodeuJFU20+HzfqRuaBWZZ2yeAlvJVBmzJwk
         eZ49vrck5ptjBcYggodkQFlU4MxCJXoG9Xqh0qpkbK/pF9GRCUkKixN0C8pO96vtqh+N
         YCzw==
X-Gm-Message-State: AOJu0YzaTfsFJZ/zGTAzHpmB+xISZVIOc2IV8fv1s/DLBXKA9a+5oeFX
	tuvf0d+PLJ56GVXNtKTTK3gns9kptO/OA9/PT+N7eZpFDgbiOZJw
X-Google-Smtp-Source: AGHT+IHA3QOnoD9SIguJv5xB2N0X3bLP0jeH+Y1bwpLnPPw69a3QTTiVCQF1fcpdv+n833X4zC5xMdhM/TBoYN3MtMU=
X-Received: by 2002:a05:6102:2047:b0:464:8a78:9c9e with SMTP id
 q7-20020a056102204700b004648a789c9emr5587136vsr.23.1702483086896; Wed, 13 Dec
 2023 07:58:06 -0800 (PST)
MIME-Version: 1.0
References: <CABhNV20HP8rNTkEfnUqbju43Z7K=LOHNanUc1nosnvHprxUa7A@mail.gmail.com>
In-Reply-To: <CABhNV20HP8rNTkEfnUqbju43Z7K=LOHNanUc1nosnvHprxUa7A@mail.gmail.com>
From: =?UTF-8?Q?Einar_J=C3=B3n?= <tolvupostur@gmail.com>
Date: Wed, 13 Dec 2023 16:57:55 +0100
Message-ID: <CABhNV21oUdDU7dULZOin11ex4UPGt5dLA0yoBkSQTbBaHw-abw@mail.gmail.com>
Subject: [question]: Creating tailored image without standard rootfs files?
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a17482060c663bc7"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 13 Dec 2023 15:58:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13214

--000000000000a17482060c663bc7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I basically want to be able to build an ext4 image for an extra partition
that is not a rootfs.

So I don't need the kernel, or /run /var /etc folders or anything like that=
.
Just a few packages are needed, but with a QT app on that partition, loads
of dependencies are pulled in and I end up with +80 entries in the manifest=
.

This was asked 10 years ago, but I still have the same issue now.
https://docs.yoctoproject.org/pipermail/yocto/2013-March/012804.html

This image would then be used by wic as well as swupdate, as a non-root
partition.
Are there some tweaks to actually build an image without pulling in
everything needed for a rootfs*?
I tried making my own tweaked version of image.bbclass, but I got lost in
the abstraction.


*) Building a basic container-test-image with a linux-dummy still has all
the folders /bin /boot /dev /etc /home /lib /media /mnt /proc /run /sbin
/sys /tmp /usr /var
and +20 entries in the manifest (17MB of stuff), just for a 12KB binary
(/usr/bin/theapp).

--
Regards
Einar J=C3=B3n

--000000000000a17482060c663bc7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">I bas=
ically want to be able to build an ext4 image for an extra partition that i=
s not a rootfs.</div><div dir=3D"auto"><br></div><div dir=3D"auto">So I don=
&#39;t need the kernel, or /run /var /etc folders or anything like that.</d=
iv><div dir=3D"auto">Just a few packages are needed, but with a QT app on t=
hat partition, loads of dependencies are pulled in and I end up with +80 en=
tries in the manifest.</div><div dir=3D"auto"><br></div><div dir=3D"auto">T=
his was asked 10 years ago, but I still have the same issue now.</div><div =
dir=3D"auto"><a href=3D"https://docs.yoctoproject.org/pipermail/yocto/2013-=
March/012804.html">https://docs.yoctoproject.org/pipermail/yocto/2013-March=
/012804.html</a></div><div dir=3D"auto"><br></div><div dir=3D"auto">This im=
age would then be used by wic as well as swupdate, as a non-root partition.=
</div><div dir=3D"auto">Are there some tweaks to actually build an image wi=
thout pulling in everything needed for a rootfs*?</div><div dir=3D"auto">I =
tried making my own tweaked version of image.bbclass, but I got lost in the=
 abstraction.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">*) Building a basic container-test-image with a linux-dum=
my still has all the folders /bin /boot /dev /etc /home /lib /media /mnt /p=
roc /run /sbin /sys /tmp /usr /var</div><div dir=3D"auto">and +20 entries i=
n the manifest (17MB of stuff), just for a 12KB binary (/usr/bin/theapp).</=
div><div dir=3D"auto"><br></div><div dir=3D"auto">--</div><div dir=3D"auto"=
>Regards</div><div dir=3D"auto">Einar J=C3=B3n=C2=A0</div></div>

--000000000000a17482060c663bc7--

