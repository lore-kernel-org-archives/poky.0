Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
 by mx.groups.io with SMTP id smtpd.web09.62.1663956927855387875
 for <poky@lists.yoctoproject.org>;
 Fri, 23 Sep 2022 11:15:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jzGMCq3B;
 spf=pass (domain: gmail.com, ip: 209.85.160.50, mailfrom: jan.vermaete@gmail.com)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-12803ac8113so1347588fac.8
        for <poky@lists.yoctoproject.org>; Fri, 23 Sep 2022 11:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:from:to:cc:subject:date;
        bh=lF2F3xZtDotI3Sl6m3mDT6CXhpYcAyq+hS5A6cpEBBA=;
        b=jzGMCq3B/9xvRmqmAVsEP+xAuTPixtKRORAcYdGwQvbatGah5715vHmuAqstahrhE+
         pxoKIz1Y0B97MMVIskSJUbkmzyGPMRkeBz35GKbElFCpZ+Z1mxugWKz05zEsczX0melc
         4egyRrHc+WRLSsEn5TnOgPlwCMD4PtPeaXmpCyxQjjxQ26+LcwPohUK7CK5i8MfpiIEn
         YpVMDYjpUZBgN8BTVh97Q3zONrXZS91Lx69ftsHCl10yuOVLYllLX7QXZRC4gfFKHVip
         vR7qsCD6VYyT62mTP0UfQhDi0A+mdpWhpyaMHdKpaSNgwEyXK5Yijl+oTbJ7PX1Y7eQp
         C0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=lF2F3xZtDotI3Sl6m3mDT6CXhpYcAyq+hS5A6cpEBBA=;
        b=ERYv5X/1T3a2RCR8xutZMkEsuKQkrZJTMhe13CfVcz4PO449rZ+8f+8Igvh/cI79tu
         8VIvhWCpGJAiwKQrYcZxI+zrkS5H/DEI4ZoGwjl7N57T4WktB+khdAwX4nCt3dxM2TSN
         AkJTR8u3B0aFEe9mKeNuSip2aEm+PDs0FblcQ25xggRGSZvxnc/LKp0ePA07f4VyEZUs
         /zbdJZk8wa96vnNO79mxMytiV5PABWMbeXAYYqdZ/OuaB9Xzz/ienrlRGMgihqES00sy
         zv3TRzCavWHw2iCfVHF6wr16K/qb4ihVk1BV5L3wgHrkX/vH8gEpnXFXTM60eLcLiBVY
         /gdw==
X-Gm-Message-State: ACrzQf1/5pKap6z429eRFuV1gDk0bOYWuhwMjZiqpIu8D6tRbJcTrHj8
	/SlqLzYPmXtayyJssgL/BLMzOjIBz3wEJLiBA5VrFxuDa3Y=
X-Google-Smtp-Source: AMsMyM63OitTSTO+DG3woBSyy+YnKWuo4Wp9KM7jD8AHNvmV9IBDsTQQDsTNuohH9Anq7DOwIpfcwUy9PG3OZxi1vsc=
X-Received: by 2002:a05:6871:713:b0:122:2ea9:4d1f with SMTP id
 f19-20020a056871071300b001222ea94d1fmr6036896oap.61.1663956927037; Fri, 23
 Sep 2022 11:15:27 -0700 (PDT)
MIME-Version: 1.0
From: "Jan Vermaete" <jan.vermaete@gmail.com>
Date: Fri, 23 Sep 2022 20:15:16 +0200
Message-ID: <CABF_=yg3sT5aYojUcpqFJ2ZR4LHdx0xbnWfW=t50RyF=ePj0vg@mail.gmail.com>
Subject: image-live.bbclass: LABELS_LIVE not used?
To: poky@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Could it be that the variable 'LABELS_LIVE' in the image-live.bbclass
is not used at all?

I can't find it in any (used) layer. But they are there in grub when
booting from USB.

I'm kind of lost, for now...

--=20
Jan Vermaete
=E2=80=9CSuccess is a self-correcting phenomenom.=E2=80=9D -- Gary Hamel
