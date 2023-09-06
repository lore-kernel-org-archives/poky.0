Return-Path: <henryzhang62@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE5AEE14A9
	for <webhook@archiver.kernel.org>; Wed,  6 Sep 2023 21:58:25 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.2889.1694037496284320366
 for <poky@lists.yoctoproject.org>;
 Wed, 06 Sep 2023 14:58:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=mdLQiVpP;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: henryzhang62@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2bd001539bdso1174081fa.1
        for <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 14:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694037494; x=1694642294; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z7IfAXUVbbaOpJIzrdbSlWxF4xm9PrnrPF2spj4AY9Y=;
        b=mdLQiVpPFH6WFcZkXDQYhKRujwbeGVUR7OTb2NtTSmP/BSrZHKYRdpVgi/b5UELK+0
         6jEje+VpR+IuBg5fhwOXg4zM41lvo7RXCFU3cWaEd37cP5CpVlGC4URJUca9mfga68n5
         O0D/5wX4h+8Xl7VaNN2Vd/30wTdoxezFm6MUVW9M7EyV4KBMAQFOqJoPwaq35ypW/z5j
         2h9tjBlHrcYJABkZO+3FeHPd3jkZNpi7vYUMj2XcNfHt7D8DZaQ0fbTEIIs8yW9xBIzZ
         0ieFDtsGgZ2k6YUtnSeESAJpRbrPmguwp4LPZ0gEbU2aYdRiManP/u2Zg4ohhEFHHuVP
         2RZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694037494; x=1694642294;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z7IfAXUVbbaOpJIzrdbSlWxF4xm9PrnrPF2spj4AY9Y=;
        b=Wxmc/MrUNJApJA63MW9mEljYsnBaHyHKu7WedhEPI8AgqfCafogJe6vs5ijd6CIAo/
         OWWM06AAfbtUFmxaWL/YMkjAFdc+1DVJZ6e67YrOLW8ayZ//M8FHnCHWbpxzPbyIT7eQ
         PRYFQACMj61WaN8xQyhxyb6O5pcL9wTS3fVxguzrHoP3HWvEwir2A+tGp7wW8WbzBIXo
         w/05lCmkNsr2ISb/W8VWp8PpJEXnWlLqun22dtiKnDqDYpJrRLb0Xz4OgmHomfliMvXe
         P1n+RUVSwl/OYOhiBpwY3ZsYsjHujjVTipcjYbKk0PcQcZd7WSQKmzbTUmG0ekeiLaov
         jAqQ==
X-Gm-Message-State: AOJu0YzWaUkC6TBnJ19d35ALdwEM2Af1MFAmXmKCGis8nDF7+IjVA4em
	tw8BuZ011PcZbMv2JNYwq7dHy1pvOB56Skbaemk8Y/4nh+8=
X-Google-Smtp-Source: AGHT+IFQZAlSS51jLlvnQo0oaL/dLmP7mTccl2u4mYpFB5Ts2A9sLDZZ/IgzrtbdpMWyptGS3IPQD1aOUUschu9Wio8=
X-Received: by 2002:a2e:1415:0:b0:2bc:fc2e:766c with SMTP id
 u21-20020a2e1415000000b002bcfc2e766cmr10624005ljd.3.1694037493679; Wed, 06
 Sep 2023 14:58:13 -0700 (PDT)
MIME-Version: 1.0
From: Henry Zhang <henryzhang62@gmail.com>
Date: Wed, 6 Sep 2023 14:58:02 -0700
Message-ID: <CANTW0yoo2OpJrT8TA1T7_O--btbQCuKtuHL+ET0Xhu62OfZ0DQ@mail.gmail.com>
Subject: errors of "already stripped" when build busybox
To: poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000c0c830604b7d751"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Wed, 06 Sep 2023 21:58:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13155

--0000000000000c0c830604b7d751
Content-Type: text/plain; charset="UTF-8"

I want to use busybox in SELinux and need to enable INDIVIDUAL feature.
CONFIG_BUILD_LIBBUSYBOX=y
CONFIG_FEATURE_INDIVIDUAL=y
CONFIG_FEATURE_SHARED_BUSYBOX=y
$ bitbake busybox
returns errors regarding "already stripped":

WARNING: busybox-1.24.1-r0 do_populate_sysroot: File
'/usr/lib/libbusybox.so.1.24.1' from busybox was already stripped, this
will prevent future debugging!
ERROR: busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/ifup.busybox'
from busybox was already stripped, this will prevent future debugging!
[already-stripped]
ERROR: busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/insmod.busybox'
from busybox was already stripped, this will prevent future debugging!
[already-stripped]
ERROR: busybox-1.24.1-r0 do_package: QA Issue: File '/sbin/swapoff.busybox'
from busybox was already stripped, this will prevent future debugging!
[already-stripped]
..................................................................................

Where should I modify it to get rid of "already stripped"?

Thanks.

---henry

--0000000000000c0c830604b7d751
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I want to use busybox in SELinux and need to enable I=
NDIVIDUAL feature.<br>CONFIG_BUILD_LIBBUSYBOX=3Dy<br>CONFIG_FEATURE_INDIVID=
UAL=3Dy<br>CONFIG_FEATURE_SHARED_BUSYBOX=3Dy<br>$ bitbake busybox<br></div>=
<div>returns errors regarding &quot;already stripped&quot;:<br><br>WARNING:=
 busybox-1.24.1-r0 do_populate_sysroot: File &#39;/usr/lib/libbusybox.so.1.=
24.1&#39; from busybox was already stripped, this will prevent future debug=
ging!<br>ERROR:
 busybox-1.24.1-r0 do_package: QA Issue: File &#39;/sbin/ifup.busybox&#39; =
from=20
busybox was already stripped, this will prevent future debugging!=20
[already-stripped]<br>ERROR: busybox-1.24.1-r0 do_package: QA Issue:=20
File &#39;/sbin/insmod.busybox&#39; from busybox was already stripped, this=
 will
 prevent future debugging! [already-stripped]<br>ERROR:=20
busybox-1.24.1-r0 do_package: QA Issue: File &#39;/sbin/swapoff.busybox&#39=
;=20
from busybox was already stripped, this will prevent future debugging!=20
[already-stripped]<br>.....................................................=
.............................<br><br></div><div>Where should I modify it to=
 get rid of &quot;already stripped&quot;?<br><br></div><div>Thanks.</div><f=
ont color=3D"#888888"><div><br></div><div>---henry</div></font></div>

--0000000000000c0c830604b7d751--

