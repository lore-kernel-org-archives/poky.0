Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1918.1610567423436380882
 for <poky@lists.yoctoproject.org>;
 Wed, 13 Jan 2021 11:50:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@srin-me.20150623.gappssmtp.com header.s=20150623 header.b=xSzdaGz/;
 spf=none, err=SPF record not found (domain: srin.me, ip: 198.145.29.25, mailfrom: s@srin.me)
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5659238C0962
	for <poky@yoctoproject.org>; Wed, 13 Jan 2021 19:50:21 +0000 (UTC)
Received: by mail-ed1-f54.google.com with SMTP id p22so3229965edu.11
        for <poky@yoctoproject.org>; Wed, 13 Jan 2021 11:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=srin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=sj96AJhw7F0lKEl4cRHp9pE1UF9OVZj53vtoNAvfWq4=;
        b=xSzdaGz/+xTREtTfXakbW+6BYMjhpcioEkujYHUYVn4PrVGBRyOrm5pFTcAApA/+K5
         RdHQcERneg9BcRLtg8836k/4EkI50JNSYNUVYZ/qykvLz8MNxYnwM1ROVDuLMUkKlwfM
         tNxOrECxAaEDqSSObf7qSzWij2q4vxom6S1/oMdC9C33MrVgAgVcHCe5Q/jyC+SEOSI2
         NOiWN3ggsNp02xnDvc6CXwAEqdmKPmkd5nIxH2BvYD87wpX8lIEoV3aa8tzAdVzoievg
         cGy7kcalQos9kMrJu5wGz6H1MFap4pM1QiEcPMaMcM6Ca9gcTFHW9ZaTuiBSwJSYZOl5
         uexw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=sj96AJhw7F0lKEl4cRHp9pE1UF9OVZj53vtoNAvfWq4=;
        b=G4FCihl9Ta8N2s5uie9t24Q6qAw+6UGw+En2nx5Mv/fIa5sgDnPgMLekm+WoGYsyYh
         E7WLfFziBBQZk3z8cA5gm6iIQizSy/xLvbUVZi+AZ0av21sUjeNFxzVeVdpBojT/JNdi
         rElTB8Eg9/72w4QsTzJeI9L8uagcxnY5t+kHS/VZLCJC7yMgJ0uD/Cydq87KltrziP0M
         ssyJ5E/Xd6elHJLb178qy4L78+uBB8vdWcXvYx2yeIJ3yFa4saKPMlwESb4lXzztztCM
         6YdrzWdCjS4WqHVn/6+dhEcUb/OEYOogudZjRABn6q6zcXlG5TIz2Dcclij5j4Zd4W8L
         /C5w==
X-Gm-Message-State: AOAM533PIwzfr7jgMWdbJ4harYm3DZLPlvrw+csVoxevM4vf7cHrrTWG
	1v5QQ1yf+1cWNq9yJu/nFvT4o73rRVTfpcpTBIM55gNiD3oeSA==
X-Google-Smtp-Source: ABdhPJy1qwPDIoDVkIZLRbopPxsG7nzYtUvnVZ/yjjFOkkSrc11GfxXyWDLaQ43796EF2jwvmgv25BA3yO2trfoLjl8=
X-Received: by 2002:aa7:ca03:: with SMTP id y3mr3181781eds.87.1610567419345;
 Wed, 13 Jan 2021 11:50:19 -0800 (PST)
MIME-Version: 1.0
From: "R Srinivasan" <s@srin.me>
Date: Wed, 13 Jan 2021 14:50:08 -0500
Message-ID: <CAGNn0hY2j87K+xkdsozRgqEvOJO+JndRhGZy3BLJw5SLwtsWMQ@mail.gmail.com>
Subject: installation help
To: poky@yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ead2de05b8cd7231"

--000000000000ead2de05b8cd7231
Content-Type: text/plain; charset="UTF-8"

all

want to seek some ideas. My target is an SBC with an SSD on it. Our normal
yocto build produces the image which we copy to a USB stick (balena etcher)
and execute on my target SBC.

as the next step, upon boot from the USB stick,i want to setup the SBC with
initing the SSD and then copying the entire image to the SSD. perhaps
reformatting the SSD with multiple partitions and so on.

any guidance on how to make this will be appreciated.

thanks, srini

--000000000000ead2de05b8cd7231
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>all</div><div><br></div><div>want to seek some ideas.=
 My target is an SBC with an SSD on it. Our normal yocto build produces the=
 image which we copy to a USB stick (balena etcher) and execute on my targe=
t SBC. <br></div><div><br></div><div>as the next step, upon boot from the U=
SB stick,i want to setup the SBC with initing the SSD and then copying the =
entire image to the SSD. perhaps reformatting the SSD with multiple partiti=
ons and so on.</div><div><br></div><div>any guidance on how to make this wi=
ll be appreciated.</div><div><br></div><div>thanks, srini<br></div></div>

--000000000000ead2de05b8cd7231--
