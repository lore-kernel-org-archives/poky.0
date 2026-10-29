Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.9240.1793271727499092104
 for <poky@lists.yoctoproject.org>;
 Thu, 29 Oct 2026 04:02:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20260707 header.b=ON8jLLiz;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: toertel@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-91c905d7b6bso8396836d6.2
        for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2026 04:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1793271726; cv=none;
        d=google.com; s=arc-20260327;
        b=PoIIk3er2DVCjnHiT2+QoVZfh0nv77ZR4bEzIo+/0tAjWT2LR1XS5BxgiXFCfCOME7
         Uv6s6rTvs00rICQGIRpx+dFTQuTV3Q5P/XOJeQwe38uSgdQa541zMbmG02wpXvyKZTO5
         es8mRFiOxAnDiGAsTVj30Fviwg29izBrjQYNEPo7Amsz3wG6MtXRFm2v4AF72qDgXqm1
         B3JH26zSRYiT9vFJUF1F9T/A4EvDrjMt+Egv0RAshlQ3FRDLBIeSnDA382Z+6Js89brn
         WYuNGf2FuagD3lL4yQ587OxeZU6bHwFrzROjlj5cgsBNIVsOE5zlNuOARFk3TYBGnITs
         FJdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=puB8NKqzJlTJ7AKCVkZFD9RgKNVu7jFlX5YY9Tq/Y0A=;
        fh=6H53hPu7OPY42BZh0JHICTVWKu2lZkF4u5GyBUU2Tlg=;
        b=KmIbZZH10bdbirmRTTTAylj1IxXKsVhbVHQnouj8s7W7ZdY/AnMiyRWSedKyikCJEn
         hEreqiK6qCEswYzU8KPOkX2Q2sIPdRcv90b0WzfHRMN6oEw7jTYcCy53YEt6cdrQSESq
         uXcZrKe4nuFMHX/avdFLxe7zoQPLcOIoiq8AYn72hQLWHYbS68wAugUEKFZVbEnf5AwA
         TR7K6BXf0NxYloE/xkOedQrvr9J7+4KLSriltkzNhUeF647DJpIwzY+j27hCSEFLA5HM
         sCac0I6+J6kouFXzDR40a2FbPkpjL8pZmZsKgxO6e9jvQPKIUb8Z7J+aKmUefts49NmK
         WTYA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793271726; x=1793876526; darn=lists.yoctoproject.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=puB8NKqzJlTJ7AKCVkZFD9RgKNVu7jFlX5YY9Tq/Y0A=;
        b=ON8jLLizO98f8PhCnahTmS/02mY0XHyuYaG98gvIBAUu3Kwpc/vLx0Dpj/KxGTICzP
         0zHTohC/phMIR4RP0E50CVJpUxqo5vcPY8YlpwYMG/W9qrW58eQSmITibVShpVwNEhwK
         f4UMT8uUNcDXSB0HNJ0v2WEkKuZmNFZgauKkG88Fopx37UevVxa4JWIirTVlkLDr/4lR
         brwEikXaerP7LOvuTVa04Mv7pPwQPwscQc9xzi/OOIupt789RbQLceKWa9ND8rCPDC8G
         CE/btO4qIezk/yoaesgkvPfeGCU/J8R2SYckXhm1YZqBFLFRSioJlVn0PRcgzBCwnhr1
         36cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793271726; x=1793876526;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=puB8NKqzJlTJ7AKCVkZFD9RgKNVu7jFlX5YY9Tq/Y0A=;
        b=Oq3pK+C3kDUQSQtPTeetXXnfeegEgXfXdQqcVNRg3ixRLgNszF7I2vapwcMZr093Yy
         /3w0ECgP8Th9ik0jwykiEd0+t6fociT4MZtjy5mX8s3mETAruSs9kTbq8lGoWYeKV8oy
         kRIJOxP87rK92LIT8yHz/KU/sBGn4F2LJOwX7LLQwkmrvuln9O3Qj+n2S1MgNIApZzmz
         6D/eanb/cNKj2cP/PIX2rc6alI6lKAB43GzRVYjGpyV4EaSvCvD14ZEdKnWTSnvgZla1
         A2sC1cIY3bGoSIwoxGplsRulagj4Y3cC/IzWaWql2c+vwSXbwH6AjoJdNOIgvJpJowMJ
         Xdyg==
X-Gm-Message-State: AFq9FYJVrwgF7pDYALqVLcPEuv5wLbBnyC2y84LJZeec6yegfFf0BeQp
	YWfoERTWIcR7WH4CJV+rrW1H9wdWuPaCwKSBrSAyISfe9p2tc4wsBBac2pjxD/WfksTG+H5Vb/4
	H5vzBa3EcVOV+4BSIhTuPLyq/Qesbd76PcOZZ
X-Gm-Gg: AYBFou2B3h/NRQUcNLd7Y/bHxlYiLx6yo4WtTzmXhNhqAMAprcNp37aaRdr+pe3D6Y1
	N8Y/0Q8vOjaHHPRV5jmtPe9U3ihh9wMsdph3Zn9PKp/uCRQj8KUZwkNq83uNTpj6edDxHztRkGs
	QKKZBCgkwYSjDhDJEB9S2vgciNwg+PAViCplqvzI73k94AHVojxqz1BzWZ5zCDVmn9KzN/0Xjt/
	bhhoBpteBYr1U31OHgb0zsa1S2KCAPsGAQhVN7jEO0ryWLPgP6/xolsF9zO06Ce8D6hfJxva/S+
	Ky+I6IcbXCX2TBnPhLgSRGeKkI6TmkTgv0sbLuZWA78dr9+F86eorWY3mbz2mheI2KHlq0TfhGj
	kWSXxqIOFzVIE3+Jaz11PCzapIKEUJTAbNAFBqTvtyVRjq0OuwyL950Iyi55cyvE50TGRXWPvAG
	M1LwyVfzGPnP55wg==
X-Received: by 2002:a05:6214:300e:b0:91c:305:a955 with SMTP id
 6a1803df08f44-91c7d19e496mr82603376d6.31.1793271726360; Thu, 29 Oct 2026
 04:02:06 -0700 (PDT)
MIME-Version: 1.0
From: Mark Jonas <toertel@gmail.com>
Date: Thu, 29 Oct 2026 12:01:50 +0100
X-Gm-Features: AclHuK8lUG4mptDS2TF46DSmQQfAKXXiMt4fcSnMre_AQ7r5E2G9VkJPqHuwX9A
Message-ID: <CAEE5dN3xQa1VqFfCHASNVTpQhfyWeLi+wN8WNYuwPsxr+6abZw@mail.gmail.com>
Subject: [meta-yocto] LICENSE file does not reflect repository contents
To: poky@lists.yoctoproject.org
Cc: Ricardo Ungerer <ungerer.ricardo@gmail.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <poky@lists.yoctoproject.org>; Thu, 29 Oct 2026 11:02:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13978

Hi,

When reading the LICENSE file in meta-yocto I notice that it
references the following directories:

bitbake/COPYING (GPLv2)
meta/COPYING.MIT (MIT)
meta-extras/COPYING.MIT (MIT)

Yet, I do not see these directories in the repository. Is it possible
that the LICENSE file is out of date?

The same is true for meta-yocto-contrib.

Cheers,
Mark
