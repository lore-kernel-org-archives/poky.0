Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web12.4198.1598668142296099820
 for <poky@lists.yoctoproject.org>;
 Fri, 28 Aug 2020 19:29:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@emacinc-com.20150623.gappssmtp.com header.s=20150623 header.b=fKZmXhZE;
 spf=pass (domain: emacinc.com, ip: 209.85.167.176, mailfrom: mgloff@emacinc.com)
Received: by mail-oi1-f176.google.com with SMTP id z22so2387636oid.1
        for <poky@lists.yoctoproject.org>; Fri, 28 Aug 2020 19:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=emacinc-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to;
        bh=y8FZxK+lITY2RHaQYA0FXXA3kxYL3sKuMNHww8GPL/M=;
        b=fKZmXhZEqRMTWg+sWlbG7d06s3h1sAJ4rPfiEx42K3RwTuRH02Pr+HwFPIUUwSmkxo
         dhBBqyc6Db4YwjnBmwwSCgvOp3nJBsrnDtRTjo/C6IEAh9mHHiKaeGVKdj4WIOCtogu9
         HiHlm00JJGqSVG5zUj9xtFuzvuj4KdYCvrW6deTQIDjNRmxdlpr0DW4cGsBjeLfxHYJ6
         nEvpij63Fq3bn1v8ZttkjEyFZjDJhJqrRgOGVBBi8UO6daHOPzwDK76zHiW9f1ep19pH
         inTMeqMEpwYMi3ZflHhtCu2cSBbvDVbxM2bZj+lTbwClgpsl0Lfnjbk3CWNUuXWhFr+R
         dHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=y8FZxK+lITY2RHaQYA0FXXA3kxYL3sKuMNHww8GPL/M=;
        b=Wf2GUeXbY+sWU3G63vcE2SKzlHJaxQRxkICb+VvZHJTlxAL4Ju34GSnzpqVxi8Br7y
         +uOHeUlZJvUqqQri5PPDeniQv7leJ98u9MFOW5ja9iSg0pSD39OuRtT7R2ocaSYNglbh
         M6UbTf+edaslRVSyPejOcVtw3Nu7VPG3BYYJF93Sy5Xz05MXR2UfBYXDjtoTglV2Enk7
         VcMotpTi76av3XZXKLTJn0yEe9bk/Szv8eecq8io3fSIDf5Dhjp2SyAbI5kKxuKbwbLe
         /CQOaAnTsI0vMXEBFQK8wa1XS/S0WS4Q8k+EuwXge0sVFYeSQ2VGHZNxlTUTAbBHJ33j
         IeIQ==
X-Gm-Message-State: AOAM5313S4mYJKOuKrq9EGUq3KdoTMcQG2FbfSplA7W7bYpg7DYGFIuM
	OBFtg7q7j9jOSomyCYgxfMWaLSO62WD75l3tXYDhBzt9mZlmfQ==
X-Google-Smtp-Source: ABdhPJx1Kf6X7K9avgC+aRtIBeHURvk4+HAxCzoVyc8KHODk35FA4Nk6/ffXhUtg3dlNTv9a/M3Q8/FhxeLu8WRn2vU=
X-Received: by 2002:a54:4518:: with SMTP id l24mr1152677oil.8.1598668141318;
 Fri, 28 Aug 2020 19:29:01 -0700 (PDT)
MIME-Version: 1.0
From: "Michael Gloff" <mgloff@emacinc.com>
Date: Fri, 28 Aug 2020 21:28:25 -0500
Message-ID: <CALXw4G7uT+tbVtuMHWLscWqDy1HDzWN6Q+kt6Fp6qTgU1d=2Kw@mail.gmail.com>
Subject: poky-bleeding.conf
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ad695a05adfaee33"

--000000000000ad695a05adfaee33
Content-Type: text/plain; charset="UTF-8"

Just came across:
meta-poky/conf/distro/poky-bleeding.conf

Is this useful any longer or should it be removed? If it is still useful,
the versions specified are anything but bleeding edge. The same goes for
the included  conf/distro/include/poky-floating-revisions.inc
I know there used to be a lot more _git recipes alongside release versions,
so this is probably leftover. I can send a patch to remove these two if
that is the consensus.


Michael Gloff

--000000000000ad695a05adfaee33
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Just came across:</div><div>meta-poky/conf/distro/pok=
y-bleeding.conf</div><div><br></div><div>Is this useful any longer or shoul=
d it be removed? If it is still useful, the versions specified are anything=
 but bleeding edge. The same goes for the included=C2=A0 conf/distro/includ=
e/poky-floating-revisions.inc</div><div>I know there used to be a lot more =
_git recipes alongside release versions, so this is probably leftover. I ca=
n send a patch to remove these two if that is the consensus.</div><div><br>=
</div><div><br></div><div>Michael Gloff</div><div><br></div></div>

--000000000000ad695a05adfaee33--
