Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web11.25551.1599753430759099252
 for <poky@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 08:57:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kG1C4mLO;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: thomas.besemer@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id r7so4402536ybl.6
        for <poky@lists.yoctoproject.org>; Thu, 10 Sep 2020 08:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=96RBcEicEGZvHYJKsk18TWmMq34GZCemhWEf4U6zEXw=;
        b=kG1C4mLOB1j9hsurP/FU1JE6LTFtwKB0rlWUR4sG+Dree6Y3GOgEQnGJVh+oSnCWTf
         T4ZBZDKKF2vvVj2VO49Zyd5i9YewM4xaEVeXIyWpmFPOwoPtt6Po0w9T2mZdy8IkotvX
         pSPT8E3vP2jKEUrAUzvheQtOdheuLCjgL5K5nNgGheGgOFLTwVrnEXgNzZue10nT5wd3
         7vIE75gul0gsFJWADijSiPdfWpzbatSicmq9L07sI6Uku6Gph9MvlyHVbJvBGK+guTLP
         ZUDxnqw0WcVBFoiNU0vY6u0Od74AVNBV9lZExLzF2A3+yQa60SxOVRySp34iK5Jm0Kiw
         AEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=96RBcEicEGZvHYJKsk18TWmMq34GZCemhWEf4U6zEXw=;
        b=pBmExJ9kFR81aiQ/DX8CSxb20RXGeX3dfNx28FBbt0vxfK9N2qjQvbFtGbo89vn295
         hV/CZf79Xh21J8eE26K659/mCczoT07JDAnHnXVN0mtacTkq39WpnQflKfujivMhwTkx
         9Yfph/hb1Xzo6UixmF+/sDTRwh5+mYfTZlfnkND7k41HQdvTAO5dM85JIJ85R6weUlfa
         5Daq2I1R4raBfDUZsn+d2psd+COaE1VpRx5kj1fkFN33OjC02+Io0lpAfTCGarTq/8OK
         XzHFaeSd1t6oYEJ6zylMpfIbVYLPePl4/bZOgOxWV2fqMOdeI88tEYf3Mw4bv/ymHXv4
         KFSw==
X-Gm-Message-State: AOAM5333fjBjtn4xvBjzEhVg5VBtcyeb0o+WYFLaq/7upDRA17I77kaN
	WrMlv0OHmOe9/GcrL20ubf28Mp3zFWdcwj8FpOzDx7tnqaw=
X-Google-Smtp-Source: ABdhPJxTglZcNcI0iemSdI4pml9qa0jH9sfA+7Z8JD8mpAy39kb1ScJo5Op8+Z1xSSjBbl8NEgmhuK8KyloTqIEmepI=
X-Received: by 2002:a25:6555:: with SMTP id z82mr15349749ybb.472.1599753429553;
 Thu, 10 Sep 2020 08:57:09 -0700 (PDT)
MIME-Version: 1.0
From: "Thomas Besemer" <thomas.besemer@gmail.com>
Date: Thu, 10 Sep 2020 08:56:58 -0700
Message-ID: <CAO7m3AmVswxx-TgxO9k3t1tRDratP39ZMi9YURqk5FJ0Y6FWCw@mail.gmail.com>
Subject: ABI Compliance Checker
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e5966905aef79e84"

--000000000000e5966905aef79e84
Content-Type: text/plain; charset="UTF-8"

Does anybody know of a meta-layer or .bb recipe for the
ABI Compliance Checker to install in SDK, and be
used as part of the host tools for?:

https://github.com/lvc/abi-compliance-checker

Or, can anybody suggest a .bb recipe that I can
start with as a template to put this in the SDK?  It
is simply a set of perl scripts that are only used
on the host, as well as by application code using
the SDK.

Thanks,
tom

--000000000000e5966905aef79e84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Does anybody know of a meta-layer or .bb recipe=C2=A0for t=
he<div>ABI Compliance Checker to install in SDK, and be</div><div>used as p=
art of the host tools for?:</div><div><br></div><div><a href=3D"https://git=
hub.com/lvc/abi-compliance-checker">https://github.com/lvc/abi-compliance-c=
hecker</a><br></div><div><br></div><div>Or, can anybody suggest a .bb recip=
e that I can</div><div>start with as a template to put this in the SDK?=C2=
=A0 It</div><div>is simply a set of perl scripts that are only used</div><d=
iv>on the host, as well as by application=C2=A0code using</div><div>the SDK=
.</div><div><br></div><div>Thanks,</div><div>tom</div></div>

--000000000000e5966905aef79e84--
