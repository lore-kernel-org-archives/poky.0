Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web09.3448.1605340241361211780
 for <poky@lists.yoctoproject.org>;
 Fri, 13 Nov 2020 23:50:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bitshift-dynamics-com.20150623.gappssmtp.com header.s=20150623 header.b=cNYJXB/p;
 spf=pass (domain: bitshift-dynamics.com, ip: 209.85.208.47, mailfrom: nassian@bitshift-dynamics.com)
Received: by mail-ed1-f47.google.com with SMTP id v4so13495870edi.0
        for <poky@lists.yoctoproject.org>; Fri, 13 Nov 2020 23:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bitshift-dynamics-com.20150623.gappssmtp.com; s=20150623;
        h=from:mime-version:subject:message-id:date:to
         :content-transfer-encoding;
        bh=+YVvCqJWGd9u/i/VVEWrpjuTxiz/Wgw8/A6Xmm8co/U=;
        b=cNYJXB/pkgLCiTCH4Sw8ZtuZ1g7/VKb+VzUlN0PTIUo4KyeMMdWYSnNdIPlDjdpRa5
         wPIO30eGIJBTc0gFi3MljWjzTGHlAbaWvEdF1mS6Uut5HAhJmR6K557M8uwMpcSpcAkd
         QM4qtvKJsWC8kp7mnA/vUnO6qcKQYSeEMYoOZ9RQv54tYeEtng9hrTzsch0PZqyNkf2S
         eU2Y2fB3nPBgOVQpB4dffm37qNRGrP3rt4HI3t4Pzf5stWRfJhCj+6pYJkttfLK1smIF
         aSo3K9qdbzFReavoq0/dF4sl7G2dH5A+2Ta8i1Ak7wmnlUOLkT12M2RuR+731Z7SJaSt
         TWGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:mime-version:subject:message-id:date:to
         :content-transfer-encoding;
        bh=+YVvCqJWGd9u/i/VVEWrpjuTxiz/Wgw8/A6Xmm8co/U=;
        b=PUYv77FM4RewGorD1gjPBpU3hhMBaYxXiL3V/9zoj+lAWGR3DF+w1nM95x4xa2Zw8v
         LgofsufYTSGKCT9tlM7/iFGiyuwuzUWUZ0sIfg7wZY3+FRQ3mhTlhGZEfgF/9bU4Tu5J
         Vv7Lnqa0mKkVJ7m/0dWNPI2u5aMJ2LOtb64uKnELIV5ZgXwSu3NkylaLiM9EfBbtie60
         +xWxRy20M9NBGE4yWMAqYY3D6pzNY7eRJIOEXWLGDTLI5lYdQK8DxXyFKKPvcQ3TOQtf
         L8BA12brv1/FrrCALePy2ygMP942JhOVg/GorVsYd0wy87A9ZtwxI0Pmhn2lk+LwayWS
         oN4A==
X-Gm-Message-State: AOAM530ZQp1vGayjmeGBb51xEWliP9RcI7GbWvb4S4+ove+GYEzEa6tv
	ijHhekx89ganU3RNSNxaq+zMR4rV0tSwt298TiN4azdQheOrmHJSgmYMKK9VBC7IQwt55rt7HWU
	5+txW9GZh1pg6Bs3TN9tX4LWznxV9SXjNcnkx4hOvbHw5IBlV0xnXsyJ87LQYZT2m0oNoLdwJEQ
	p59DV2zuvOJDeFJs4Faes=
X-Google-Smtp-Source: ABdhPJzCpsyjCaiugJY+UNwOpxck4Cy/7fc3mKeHa8o08RIeY0yQQSrdqLl7ccQD1PSsnxU3gWPvFQ==
X-Received: by 2002:a05:6402:3056:: with SMTP id bu22mr6353686edb.252.1605340239139;
        Fri, 13 Nov 2020 23:50:39 -0800 (PST)
Return-Path: <nassian@bitshift-dynamics.com>
Received: from alexanders-air.localdomain (b2b-37-24-167-90.unitymedia.biz. [37.24.167.90])
        by smtp.gmail.com with ESMTPSA id s25sm5752014ejc.29.2020.11.13.23.50.38
        for <poky@lists.yoctoproject.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Nov 2020 23:50:38 -0800 (PST)
From: "Alexander Nassian" <nassian@bitshift-dynamics.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.20.0.2.21\))
Subject: Adding S3 as option for sstate
Message-Id: <63DA0CC5-889D-4A42-BA28-31EEBD45BF07@bitshift-dynamics.com>
Date: Sat, 14 Nov 2020 08:50:37 +0100
To: poky@lists.yoctoproject.org
X-Mailer: Apple Mail (2.3654.20.0.2.21)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi together,

We would like to extend poky to be able to write and read sstate packages n=
ot only from HTTP and FILE but also S3 buckets which would fit our CI setup=
 much better than our current =E2=80=9Ezip everything and upload to S3=E2=
=80=9C in terms of incremental speed up builds. I already did some research=
 if there is something read-to-use but didn=E2=80=99t find anything.

My two questions are:=20
1. Do you have any hint where to hook into? I already went through runqueue=
.py but I=E2=80=99m just a extensive user of poky, never worked on itself.
2. Would that change have any chance to be accepted upstream, or is this so=
mething too special for the project?

Best regards,
Alexander
--=20













=E2=80=94


bitshift dynamics GmbH
Neudorfer Str. 1, 79541 L=C3=B6rrach
Registergericht: Amtsgericht Freiburg i. Breisgau,=C2=A0HRB 713747
Gesch=C3=A4ftsf=C3=BChrer: Alexander Nassian,=C2=A0Markus Pfaffinger


http://www.bitshift-dynamics.de <http://www.bitshift-dynamics.de/>

Zentrale: +49 762158673 - 0
Fax: +49 7621 58673 - 90


Allgemeine Anfragen:=20
info@bitshift-dynamics.com <mailto:info@bitshift-dynamics.com>
Technischer=20
Support: support@bitshift-dynamics.com=20
<mailto:support@bitshift-dynamics.com>
Buchhaltung:=20
invoice@bitshift-dynamics.com <mailto:invoice@bitshift-dynamics.com>
