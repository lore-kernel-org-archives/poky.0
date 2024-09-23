Return-Path: <thomas.epperson@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14549CF9C6F
	for <webhook@archiver.kernel.org>; Mon, 23 Sep 2024 15:08:45 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.38961.1727104120629880871
 for <poky@lists.yoctoproject.org>;
 Mon, 23 Sep 2024 08:08:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VUWj5Ns0;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: thomas.epperson@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2d8a7c50607so2893181a91.1
        for <poky@lists.yoctoproject.org>; Mon, 23 Sep 2024 08:08:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727104120; x=1727708920; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8ZRxXBw0kTZHpeKoYkO72gTMpUNze3hBYwk3cOsY64c=;
        b=VUWj5Ns0ePjyJghD+BeZecC6KjKdezt1DQ6ZzwAtQntoV5VauLAtzXzqsXIMZPycG0
         dqJDhpylXOKvD7WVZs55P4pKvCulEW8QKNMYpiXCMJNn/CYO3nfHmHxp8fR78KUNa7vu
         o5YwdP2Zu0ZqpdfAuCGew+vuq06n7rJ8XXEdqd3jHqVOv/uXsSTTyhFFyc5M1b+CGLAj
         bLN4j9prs8tEuNAisYyrKLcPXWQ06/bId1ywXXLuhuQpu4zdLZqAit1CIBVKRH7H/7e4
         dPRBrZQxrglJSnkt8+nmXyLbG6Ow52chPfFv2RlR4t+78qmjPT9x9rMZwq3Ui7lAVg+P
         fSjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727104120; x=1727708920;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8ZRxXBw0kTZHpeKoYkO72gTMpUNze3hBYwk3cOsY64c=;
        b=vmrgoa6om1yBMUD6wI9JPArnzlyZXap6JWKCVx2I/PgY0DvZd6kytOoKciyszptAiL
         H/+B42xbG6Y4CJ+RL5cj8qRuSsMLTpGLhyFEXSdNvVTS8XpW9Ach22zhFzmeTSXVsrnm
         wn99IkSzaEo30Q/e9+hHdv3o5HhSo7jngg+GStm/YjDjR3Q7pRWlNsEKuZ224DvFD/sG
         7AAp5f4mnzDMSdNi96N/V7oZeUjVglaszryYOpBcRs09Zw7VhH5ps4Za/et3UZ3WoGFq
         Yp+B44tOa11qCQnkohoyDV4mGrZ7lLe3ey7c21JQhduakbENA8Oxp/7jhY7CSX433b3g
         Mk8Q==
X-Gm-Message-State: AOJu0YwMXaTz9Qch5IxltbX1OOuzOeJgF1aXbmIYSnFMmPc6PJw0lsFO
	bfuGNE/1mppaCrSThtLtT9HtLamnQYDYLe1DkL1qsaPAmLrlXyxPYjwvMPJvSjN1zEWT8qcXxp1
	RdUw3P0rFwvr7G1eiJoJWVaD3eoZk+GQw
X-Google-Smtp-Source: AGHT+IHPEAwz/Uqt420OjiNPwRTmCyi9zhL/yuBYhbODcrAfmiRzq1FpwC48YYaNcER8leYz/OJ4sQOe1Mt9gB/qaK0=
X-Received: by 2002:a17:90b:4a8d:b0:2d3:ce76:4af2 with SMTP id
 98e67ed59e1d1-2dd80c4cb43mr13745290a91.18.1727104119703; Mon, 23 Sep 2024
 08:08:39 -0700 (PDT)
MIME-Version: 1.0
From: Thomas Epperson <thomas.epperson@gmail.com>
Date: Mon, 23 Sep 2024 10:08:28 -0500
Message-ID: <CAKHbFk2SJ9nGjbVkqG-birNnPzK=Rx9j8b+BJsCOqLT=yRxyMQ@mail.gmail.com>
Subject: cargo patch override
To: poky@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="0000000000008bb7da0622cac35e"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 23 Sep 2024 15:08:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13443

--0000000000008bb7da0622cac35e
Content-Type: multipart/alternative; boundary="0000000000008bb7d90622cac35c"

--0000000000008bb7d90622cac35c
Content-Type: text/plain; charset="UTF-8"

Some crates when built from git require additional handling in the
cargo_common bbclass because there is more than one crate in the git
repository (egui and related crates in my case).

I'm open to the special variable being a different name if something else
makes more sense.

I wanted to get initial thoughts before I added the documentation updates
for the class change.


-- 
Thomas Epperson
Build a man a fire, and he'll be warm for a day. Set a man on fire, and
he'll be warm for the rest of his life. - Terry Pratchett.

--0000000000008bb7d90622cac35c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Some crates when built from git require additional ha=
ndling in the=20
cargo_common bbclass because there is more than one crate in the git=20
repository (egui and related crates in my case).</div><div><br></div><div>I=
&#39;m open to the special variable being a different name if something els=
e makes more sense.<br></div><div><br></div><div>I wanted to get initial th=
oughts before I added the documentation updates for the class change.<font =
color=3D"#888888"><br></font></div><br clear=3D"all"><br><span class=3D"gma=
il_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature">Thomas Epperson<br>Build a man a fire=
, and he&#39;ll be warm for a day. Set a man on fire, and he&#39;ll be warm=
 for the rest of his life. - Terry Pratchett.</div></div>

--0000000000008bb7d90622cac35c--

--0000000000008bb7da0622cac35e
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-cargo-Add-ability-to-override-the-patch-elements.patch"
Content-Disposition: attachment; 
	filename="0001-cargo-Add-ability-to-override-the-patch-elements.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_m1f56w9v0>
X-Attachment-Id: f_m1f56w9v0

RnJvbSBjMTY2MDM1YWIwOGZhZWFiM2NlZTc5Y2RkYWE0Y2E1OWI2MGFlYzcxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBUaG9tYXMgRXBwZXJzb24gPHRob21hcy5lcHBlcnNvbkBnbWFp
bC5jb20+CkRhdGU6IE1vbiwgMjMgU2VwIDIwMjQgMDk6NTg6MDYgLTA1MDAKU3ViamVjdDogW1BB
VENIXSBjYXJnbzogQWRkIGFiaWxpdHkgdG8gb3ZlcnJpZGUgdGhlIHBhdGNoIGVsZW1lbnRzCgot
LS0KIG1ldGEvY2xhc3Nlcy1yZWNpcGUvY2FyZ29fY29tbW9uLmJiY2xhc3MgfCAxMSArKysrKysr
KystLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9tZXRhL2NsYXNzZXMtcmVjaXBlL2NhcmdvX2NvbW1vbi5iYmNsYXNzIGIvbWV0
YS9jbGFzc2VzLXJlY2lwZS9jYXJnb19jb21tb24uYmJjbGFzcwppbmRleCBjNTI4YWU3ZjM5Li5j
OWQxODExZDM1IDEwMDY0NAotLS0gYS9tZXRhL2NsYXNzZXMtcmVjaXBlL2NhcmdvX2NvbW1vbi5i
YmNsYXNzCisrKyBiL21ldGEvY2xhc3Nlcy1yZWNpcGUvY2FyZ29fY29tbW9uLmJiY2xhc3MKQEAg
LTE1Niw4ICsxNTYsMTUgQEAgcHl0aG9uIGNhcmdvX2NvbW1vbl9kb19wYXRjaF9wYXRocygpIHsK
ICAgICB3aXRoIG9wZW4oY2FyZ29fY29uZmlnLCAiYSsiKSBhcyBjb25maWc6CiAgICAgICAgIGZv
ciBrLCB2IGluIHBhdGNoZXMuaXRlbXMoKToKICAgICAgICAgICAgIHByaW50KCdcbltwYXRjaC4i
JXMiXScgJSBrLCBmaWxlPWNvbmZpZykKLSAgICAgICAgICAgIGZvciBuYW1lIGluIHY6Ci0gICAg
ICAgICAgICAgICAgcHJpbnQobmFtZSwgZmlsZT1jb25maWcpCisgICAgICAgICAgICBzcGVjaWFs
ID0gZC5nZXRWYXIoJ1JVU1RTUEVDSUFMQ1JBVEVTXyVzJyAlIGspCisgICAgICAgICAgICBpZiBz
cGVjaWFsIGlzIG5vdCBOb25lOgorICAgICAgICAgICAgICAgIHNwZWNpYWxzID0gc3BlY2lhbC5z
cGxpdCgnLCcpCisgICAgICAgICAgICAgICAgZm9yIHMgaW4gc3BlY2lhbHM6CisgICAgICAgICAg
ICAgICAgCXNzID0gcy5zcGxpdCgnOicpCisgICAgICAgICAgICAgICAgCXByaW50KCclcyA9IHsg
cGF0aCA9ICIlcyIgfScgJSAoc3NbMF0sIG9zLnBhdGguam9pbih3b3JrZGlyLCBkZXN0c3VmZml4
LCBzc1sxXSkpLCBmaWxlPWNvbmZpZykKKyAgICAgICAgICAgIGVsc2U6CisgICAgICAgICAgICAg
ICAgZm9yIG5hbWUgaW4gdjoKKyAgICAgICAgICAgICAgICAgICAgcHJpbnQobmFtZSwgZmlsZT1j
b25maWcpCiAKICAgICBpZiBub3QgcGF0Y2hlczoKICAgICAgICAgcmV0dXJuCi0tIAoyLjM0LjEK
Cg==
--0000000000008bb7da0622cac35e--

