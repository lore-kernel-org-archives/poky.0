Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web12.30453.1595775861714352766
 for <poky@lists.yoctoproject.org>;
 Sun, 26 Jul 2020 08:04:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RWAtQsrH;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: moustafa.i.saleh@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id m20so818540eds.2
        for <poky@lists.yoctoproject.org>; Sun, 26 Jul 2020 08:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=saD7JDY79Bl6bon3sCyv3TUtEpYSCHNM4K6BBhRSeL8=;
        b=RWAtQsrHQmtuhmJU6ao1zg4e/8ShjeXn6p7OlEYvVVzMxzBfRxSJ78PLMjrLAxPb88
         hafKVp67TeUU4MhSqAeGWrldVM76yQ7FrPn/HrXbuR+9Nj/4nNLYs/oaYXTaAgaHlCZu
         /Jna5e9jn/o3UWpxpW8S448iKTqFI61vz//773D0oxoQOGp/KdQSDg4tiEChD7XEHu9K
         f7WlRAAk8EoI58MHDn8NYMlkRc4yGS7XF0mCLf1qrOgb9Db7/bjiZe0zoJEpPh6DE5uI
         VihPq3lJ1Lgd5dq/Wl3Yxqw8tbueBj9Tc7stNId/ulSJLnapdAi0fsYrzdF3M92uQC8/
         sVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=saD7JDY79Bl6bon3sCyv3TUtEpYSCHNM4K6BBhRSeL8=;
        b=EmEptITCxl1okzuQF2yc2FREzP5Yow67H5jsXyFTUp/uajE4uGYjpQbiTHXt4onDl4
         k9WauQfOfe8FVZcFccFFe4uYiiCs+vUf4ZlBsrFCr75XlPostrsvyXDgf2RcS1prs1F8
         SYVnrZtPTunPlZz6CDC8dyt7G6NQXulnJV2eot/Y1KO78YG4bC1tMyI/uFc6TT5j0EJx
         wmMs2iDOO8puJiSJF0QGFSxHAFv9hJg5b0TH21mzpdFoZixQolVOkz+X1bQkM/tYcQ+w
         J2nzQ/cGPer0h2CFTbA2uPuzvM0n/1OwZ9NHM31WXRYatnx5+c4XQ3vbEG/hCQicqXDS
         J1NQ==
X-Gm-Message-State: AOAM532dgRYhvtYSzUoI21CJ/VFQDvSD5KKgw3iASE1fXraBtx5DbH/+
	LH9EteWlw8BFTQBqkFUE2jRD4rNkNF5uVRx9yFiR5asrRGG4Eg==
X-Google-Smtp-Source: ABdhPJz8agUncJrb+rw86bvDb4/Lu9pOtIzFDRbrVgmPCWZ+LgkCfKaZJ+umm0verfkZVmCTaMnsuoshF4Z7BxuQ6vU=
X-Received: by 2002:aa7:c3d6:: with SMTP id l22mr17443547edr.148.1595775859824;
 Sun, 26 Jul 2020 08:04:19 -0700 (PDT)
MIME-Version: 1.0
From: "Mostafa Saleh" <moustafa.i.saleh@gmail.com>
Date: Sun, 26 Jul 2020 17:04:08 +0200
Message-ID: <CAOGZMk5hLZ5aHTUrwbKmDuH6TTkRJfr6=94G51E8e7c5iZxeZQ@mail.gmail.com>
Subject: [poky][recipes-multimedia] gstreamer-1.0-omx LICENSE_FLAGS
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000441b0105ab59852c"

--000000000000441b0105ab59852c
Content-Type: text/plain; charset="UTF-8"

Hello All,

I was wondering why the "gstreamer-1.0-omx" recipe has
LICENSE_FLAGS="commercial", although gst-omx has LGPLv2.1 license as
mentioned in the source code ?

-- 
Best Regards,

Mostafa Saleh

--000000000000441b0105ab59852c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>I was wondering=C2=A0why the=
 &quot;gstreamer-1.0-omx&quot; recipe has LICENSE_FLAGS=3D&quot;commercial&=
quot;, although gst-omx has LGPLv2.1 license as mentioned in the source cod=
e ?=C2=A0<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><=
div dir=3D"ltr"><div>Best Regards,</div><div><br></div>Mostafa Saleh<br><br=
></div></div></div></div></div></div>

--000000000000441b0105ab59852c--
