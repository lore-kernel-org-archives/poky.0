Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
 by mx.groups.io with SMTP id smtpd.web09.4917.1639128275456245927
 for <poky@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 01:24:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EuDwvWvK;
 spf=pass (domain: gmail.com, ip: 209.85.208.50, mailfrom: bewithsathish@gmail.com)
Received: by mail-ed1-f50.google.com with SMTP id y12so27329400eda.12
        for <poky@lists.yoctoproject.org>; Fri, 10 Dec 2021 01:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=G2zLB4uLZcfyDR/obVqODWj/HlPM+pMO+3N1yv/OVOc=;
        b=EuDwvWvKtBLyFC4fGAd0a8HaBz6eOMu3ZEZlSZaa8y5H73sAiVIWz7Q8CBWsnlEPmL
         GGh1S/ZV6g7A04RC0/BpX86p2kWfeeJu5Ja2g3h0pfynSNTWZRYYLpVlAfgXsloNPVvz
         ZREdfj9fYLq3s7nlpfN56gzRXiNjuyttnIfEJDWCSEwvAn4C+lNiRi0IBLmcAMjhlmru
         wnPVSvesOaXbhYpiptMJYRMZwhgIl4m7vUZMG0+D8sBKnH5Htk4VQ2M9X1/h/49mY9Lo
         uAnPgTHy52kH7fb1g/OTmXJa4y3ygRq+dWXQUEHKuPloaoWbacXWsi9dAalMKImTefk3
         zSzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=G2zLB4uLZcfyDR/obVqODWj/HlPM+pMO+3N1yv/OVOc=;
        b=P929Sg648UcKGoI3fzgpPO+7fkiMWirbSyPfC97jDcCR0DIktAQiobabvON3naXxwO
         SfPzQVFyTyUCdzf9ijIr1NJtjOEqVdSklVEzoS/Gahj2foyDwqwAZdLFGdq7G2F8srU7
         iTx99VLH4TXwBmF4k3l+C1kRfijmVLPLaaV6y68DdAaOBJpB4P6hjlx9vQV2gnNeVIdd
         kmdYcJZe99Qh4Ajct7IJvid6mAplyCOeqkx+MJuo/c3bA34afFzJPeT/X4FaPY4OVcdQ
         8E1h78kqSpFXWLQXad1kgaCFGlpk13929szxK3V6SoM3wG12wW1urouDc//4kayoAeS6
         HB/Q==
X-Gm-Message-State: AOAM530k3TNjMHYpY6vMVB51dxOzhNAlFg4jcdISzPAkNxF8HU3KZ/4e
	k15ByQm5wcThWIcY/Izpr79IP6K4+rO/OMhbwNt/eTTSbVI=
X-Google-Smtp-Source: ABdhPJyKcB33RAItjcx4Tsrk9C99dqza2toT1LJgkmChy68BD6xw2mgg02x+zsf6kvNRaxMIdRYmk1b61e91p7PRqOE=
X-Received: by 2002:a17:906:5f94:: with SMTP id a20mr22776154eju.256.1639128273532;
 Fri, 10 Dec 2021 01:24:33 -0800 (PST)
MIME-Version: 1.0
From: "Sathishkumar Duraisamy" <bewithsathish@gmail.com>
Date: Fri, 10 Dec 2021 14:54:22 +0530
Message-ID: <CANJvwR9F1Dpw6WUwXm1vV=0V_u51Y7huoAZiBP4YpF56L_peKg@mail.gmail.com>
Subject: Linux time is initialized as build time
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007c3a8205d2c74a27"

--0000000000007c3a8205d2c74a27
Content-Type: text/plain; charset="UTF-8"

Hi,

The time in the hardware is initialized as build time. How to change this,
say set it to 1970/01/01 during yocto build.

Thank you in advance.

Regards,
Sathishkumar D

--0000000000007c3a8205d2c74a27
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>The time in the hardware is initial=
ized as build time. How to change this, say set it to 1970/01/01 during yoc=
to build.</div><div><br></div><div>Thank you in advance.=C2=A0</div><div><b=
r></div><div>Regards,</div><div>Sathishkumar D</div></div>

--0000000000007c3a8205d2c74a27--
