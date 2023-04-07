Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web11.8958.1680876684281576660
 for <poky@lists.yoctoproject.org>;
 Fri, 07 Apr 2023 07:11:24 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112 header.b=aiFZd7H4;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.41, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f41.google.com with SMTP id d22-20020a17090a111600b0023d1b009f52so1467695pja.2
        for <poky@lists.yoctoproject.org>; Fri, 07 Apr 2023 07:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112; t=1680876683; x=1683468683;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=RUotOS6DtCRC5WqCRgDlN1S57dCC/ao4/y1wDaOJOJg=;
        b=aiFZd7H42I0laKWqN+8OMhLAU2hgQrtW+R7fIcfb63SK+ynVJi1qPEGST/eqy/GeGK
         3romSvcRvEjIBv5wyCikFgRkVzZ4Z05HaIhyBpsjkueA0hHpUNFVZu0ePzfCn6440K7d
         ZB5b3glxfCF0PyorRr/KZgP5iqGaEfekRsHNGtTWEsXSQau8SKHCrJvyXG7uCRbAc40Y
         YMmkOjENZReBC5uWvAq1j/TkEvAKArXB6Z2EDd+x6Sh3A3TRG5jZw1VxSd9U/hmWAtxN
         HJCq9PeCDE/d6YfLN+CvkD4DGkNUNaS8iF87m93sWqQX+Qw+z/S/D1WI8/wNemUV/AT6
         naGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680876683; x=1683468683;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RUotOS6DtCRC5WqCRgDlN1S57dCC/ao4/y1wDaOJOJg=;
        b=2sABANGtuJgEyKCE6ZMJgxQ8C6cCBOcDJkenDmZy75HU1cLjhdlsG4Sxv98XMBj+vA
         HQIy6Nc+keTcVQur0yNHV6Ybg2sgksCze7UWrgZvxvFI7qcH6vmffZGGZ0eg4iZQEZzg
         t12dwYsjkMS77o69A1Chte+1S/J+ldf3tveRYW5G0DAvCGxAjM6WeJUBOE0H3pAKSL6a
         npzdx0ixD/iEMItMkcIypdvcDAws7dXr2UgNk8qbDXERT18N3SLV+2YYIECw3qco1hTr
         epWotzlSjWQBBStfvhigFrqS8F0nCVxcWJ3/efr1fYgM1f89H7Xa1dT+44Q3hAJ81MK6
         xiRA==
X-Gm-Message-State: AAQBX9ewFTBfsIkAw6AtEE5m9zGz+V8sNaHIYzTBS4xHOenbaw/07kA4
	sFH4/6h+L6LJgWlri8dkAYYgQsp0ENGN85ioSuA=
X-Google-Smtp-Source: AKy350YV/x3TYvb3vBh41WvEiOsvjJvcVNsF1+Eo32KCPfKMT8QG/YJuNGviVgr463igSfEVvIZcWA==
X-Received: by 2002:a17:90b:1e10:b0:233:e9a7:209e with SMTP id pg16-20020a17090b1e1000b00233e9a7209emr2659084pjb.28.1680876683086;
        Fri, 07 Apr 2023 07:11:23 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from hexa.router0800d9.com (dhcp-72-253-4-112.hawaiiantel.net. [72.253.4.112])
        by smtp.gmail.com with ESMTPSA id y8-20020a17090a86c800b0022335f1dae2sm438857pjv.22.2023.04.07.07.11.22
        for <poky@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 07:11:22 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: poky@lists.yoctoproject.org
Subject: [meta-yocto][kirkstone 0/1] Pull request (cover letter only)
Date: Fri,  7 Apr 2023 04:11:11 -1000
Message-Id: <cover.1680876558.git.steve@sakoman.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The following changes since commit 2903a4ac643f390bc0ca0899187b89ecd346d294:

  poky.conf: bump version for 4.0.8 (2023-02-27 23:38:26 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/meta-yocto contrib/kirkstone-next
  http://git.yoctoproject.org/cgit.cgi/meta-yocto/log/?h=contrib/kirkstone-next

Steve Sakoman (1):
  poky.conf: bump version for 4.0.9

 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.34.1

