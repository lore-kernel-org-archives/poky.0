Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02BD6CA5FBA
	for <webhook@archiver.kernel.org>; Wed, 30 Sep 2026 10:30:57 +0000 (UTC)
Received: from mail-ed2-f32.google.com (mail-ed2-f32.google.com [74.125.228.96])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10382.1790764247106678437
 for <poky@lists.yoctoproject.org>;
 Wed, 30 Sep 2026 03:30:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=PWfUvQHG;
 spf=pass (domain: linuxfoundation.org, ip: 74.125.228.96, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-ed2-f32.google.com with SMTP id 4fb4d7f45d1cf-6ad186afdf4so1410270a12.0
        for <poky@lists.yoctoproject.org>; Wed, 30 Sep 2026 03:30:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1790764245; x=1791369045; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=UTUEmneajr1yVLtH4KQmeuCPhqQd2O7WKFKDW/gwEdM=;
        b=PWfUvQHGYAanCLmC+Yj8lrflQBElCyBN1TLC6pdhc+5XOBRXnitNRbarsReX2QkYr8
         7AKV4TkFWXkrnEYz9E3FGlaMl4avk7B4uAt8WkA3VsAud49bl0k/tqBtepSNbsMSduMo
         BnLZbxUsoPDMTquZTuiUT8bdvGJtvPaWjG9s0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790764245; x=1791369045;
        h=mime-version:user-agent:content-transfer-encoding:content-type
         :references:in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UTUEmneajr1yVLtH4KQmeuCPhqQd2O7WKFKDW/gwEdM=;
        b=0v3Zic+6AaxfkHNSbultpGaAQIptOZvJ4Y2LdIy1t1Dn3yHW2++GaI3SekVdbl1BUR
         prEyQM+6rGbbRDF961P+oyS/9tbI8yg7BP9UKWHHfcDA9G8CsL2Kfh4BLGj30T01F9cd
         YKNC00O9yccW+MqfQOQh/yjNodaR2H+tkzPcAoQOhQEzqgxLKHJQIbVpA4En5c7VmL3o
         RfJNpu875ImzSXPRt2Bei/CfFfV1TIVnsPv0+2WIFa+egyx0AKyrKHINB8ayjagqHyvy
         OOnejsCXvpRHnzFfvQfd2+GkzmnBAKzRkASPOBoI4MiWghG75HHfgic4ilu7D2946DYQ
         ORsw==
X-Forwarded-Encrypted: i=1; AKwUvBzyhag6MFEoV2M+cBoyKjF7++RL/Is9Z0QVIwRrwMhSxUrM3EcLH+gM5qd1EY4kt3E9J9cg@lists.yoctoproject.org
X-Gm-Message-State: AFq9FYLC+FHFBZJOwgNirSmY8jI6czHH5XH9qcQaFppzHXhCJ9VHLd9c
	lj6I5a5rAcsB2qx2i0II8mLN+tALTwsxIKPBqM2H+KRbKF3K11Vy9UU/9Nhk8uetDuQ=
X-Gm-Gg: AYBFou3LBY1q6XJY+UbpOsoS2kbhzDUpKhGcirVizf3f97evmyVnKXE7qiJBH4icYmm
	GzpXfBRFm2OZn2RCEzQwPu+rB9RKCSf84iCSmwYtCkUV2T/tPLtccxpg4goakewusLCESoAi3fI
	I8kpozdweIwKzpY/qNTRJ9DxkLXU6FWKJfiQ/8F3iC5WBAkI8grrbqLOAohgibEGMgIchGsZoaj
	9Quxo1N5vCoqYvKhB+sZY2MBozwurtZIatEhPh+arGIOS8jSuTBbtRraFOtPEyx+hHDO79f5IHd
	49oSKJgm+4+ytZfAB8KapFfbo/oL+EPC8/ZQs0GnQz3rUVrE87MMk6BOgDACWYbaTkDYAIKZKpx
	T+u5/mzlFHx77GgcHxp8K+99nAIkjLSucgEY5OmZS/EFGbOJ2YcSewwKGBoGfjQAl3/eC6YON6N
	svVypUrJOVjFYpNO0ZfNPEemyFqsiRkRtzjcz8YRQctULpNWNZ8QR/nVJL2OJdDpKX5kRayIBPP
	7gWW/8DrM0EyGVfNfRMbI2aWyfTYZsigDZWKpzSW6uy+1hBYKyRHrIcMRY1
X-Received: by 2002:a05:6402:44c2:b0:6aa:97b8:aabf with SMTP id 4fb4d7f45d1cf-6ae19903e83mr482526a12.10.1790764241741;
        Wed, 30 Sep 2026 03:30:41 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:349:f135:e106:4c82? ([2001:8b0:aba:5f3c:349:f135:e106:4c82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ae156a2090sm597170a12.28.2026.09.30.03.30.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2026 03:30:40 -0700 (PDT)
Message-ID: <eb29fe2e31f0d2604dd4ad14911ad9a9c398d659.camel@linuxfoundation.org>
Subject: Re: [poky] [PATCH] poky: Add fedora-45 in SANITY_TESTED_DISTROS
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: mathieu.dubois-briand@bootlin.com, poky@lists.yoctoproject.org
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Date: Wed, 30 Sep 2026 11:30:40 +0100
In-Reply-To: <20260930-mathieu-fedora45-v1-1-061d0ec59378@bootlin.com>
References: <20260930-mathieu-fedora45-v1-1-061d0ec59378@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 30 Sep 2026 10:30:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13972

On Wed, 2026-09-30 at 10:57 +0200, Mathieu Dubois-Briand via lists.yoctopro=
ject.org wrote:
> Fedora 45 is out and now available on the autobuilder.

It isn't actually released yet, we're testing a pre-release version.
Also, it doesn't actually build, there are segfaults in do_package. So
this is a little premature :/.

Cheers,

Richard

