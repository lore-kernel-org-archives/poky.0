Return-Path: <coder.callahan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5108CC7618E
	for <webhook@archiver.kernel.org>; Sun, 23 Apr 2023 01:16:12 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.20144.1682212567514960716
 for <poky@lists.yoctoproject.org>;
 Sat, 22 Apr 2023 18:16:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=JrNVLhbZ;
 spf=pass (domain: gmail.com, ip: 209.85.208.179, mailfrom: coder.callahan@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2a8aea2a610so29152921fa.3
        for <poky@lists.yoctoproject.org>; Sat, 22 Apr 2023 18:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682212565; x=1684804565;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=w9x3sAZExQztnMXT79tkrOhUk1r7E1OhXuKAWf+Yey4=;
        b=JrNVLhbZ9W7G9vLbtwU06wNFS6RfK657s5286CMM3Uon51ngX1gJBqMe1UcCLT5+Bj
         YLXeACbEQ/vJo/pukt24KYmYAB3GCyrujlYLdoarRb6qrmSjnSiytr6UjmYk0i///Mr2
         cJI9PK94fYY3xsy40Wgljeln2TgupnywRGT25fL+LJZNxMVIh8ejs5HAk7pGUywaivxb
         yGaTQEnITXHXTKuxKIWRtKa1vMNkZALIoSULnSm299Rwhjndg7T3n3HGBFtBgRJmfAmQ
         kPdl7oQkUsjCn41Au6a/WenmylCQLai9R9H0JP202HX2iLoip7qNhsv7gNiltEX9HtiY
         XKQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682212565; x=1684804565;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w9x3sAZExQztnMXT79tkrOhUk1r7E1OhXuKAWf+Yey4=;
        b=ATmEprvA9G7ElC14lRrmKI1nd8GVipyAf01c4zy1/NRkR01uXM2ePVMTMf5qKWgfrZ
         ig5+VpYNMkH+IG8b5nzn7S5qsi1eebdvqXZh9L1ti5r2AJ83yTR/896myUFcY/YaDBio
         wOjuDcx16sGGVl4IqOl4GKpp/epEST9JUgWK7LzLHNygQgFeYg6KNUONhh2pWB+GWwbv
         39M8caME64qmqZMli75I0f1iiukX+FRnre5dYbJLceZZd5ps92Fz0JSUXHjusauPAswe
         C39PvCoCpQVkf5IVxWjVGlL9KhoHbkIq6yH48fF/BBIrVhQv4QWPUVnpWHlDbQWAxqNr
         bPqg==
X-Gm-Message-State: AAQBX9fs676YtVfILSZa1VaJF0usozjP6NQN00Z4jgb3HSxakRXIbfw4
	7nAhwNdRcaKTF99VQNK3an9FEwgvwVOe/miD0DVz+Cj1
X-Google-Smtp-Source: AKy350ZIYco98kQ3mXDOf7bsifNn0ELzbMYEwNsr10mIoQVCl19H8R3JRWMR1wR4bwcygRy/UyzOJh2nEaYsAW5i3Xg=
X-Received: by 2002:a2e:9bd3:0:b0:2aa:41a1:cd6c with SMTP id
 w19-20020a2e9bd3000000b002aa41a1cd6cmr1502275ljj.23.1682212565201; Sat, 22
 Apr 2023 18:16:05 -0700 (PDT)
MIME-Version: 1.0
From: Michael Callahan <coder.callahan@gmail.com>
Date: Sat, 22 Apr 2023 19:15:52 -0600
Message-ID: <CADm5WxNHOOJw6N+8bwnsZa50j7A2dPC+dawzR+1QsDHx-yutXA@mail.gmail.com>
Subject: [PATCH] zstd: update 1.5.4 -> 1.5.5
To: poky@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="00000000000062c9c405f9f6a22a"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Sun, 23 Apr 2023 01:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13058

--00000000000062c9c405f9f6a22a
Content-Type: text/plain; charset="UTF-8"

Update zstd to 1.5.5 for a rare corruption fix.

--00000000000062c9c405f9f6a22a
Content-Type: text/x-patch; charset="US-ASCII"; name="0001-zstd-upgrade-1.5.4-1.5.5.patch"
Content-Disposition: attachment; 
	filename="0001-zstd-upgrade-1.5.4-1.5.5.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_lgspx2mn0>
X-Attachment-Id: f_lgspx2mn0

RnJvbSBjNzliZmEzZjM0MGMwZWU3YzM2NDMzY2ZjOGY4ZmRiYjMyY2M2ZWU1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNaWNoYWVsIENhbGxhaGFuIDxjb2Rlci5jYWxsYWhhbkBnbWFp
bC5jb20+CkRhdGU6IFNhdCwgMjIgQXByIDIwMjMgMTc6MjM6MzUgLTA2MDAKU3ViamVjdDogW1BB
VENIXSB6c3RkOiB1cGdyYWRlIDEuNS40IC0+IDEuNS41CgpGaXggYSByYXJlIHRvIHRyaWdnZXIg
Y29ycnVwdGlvbiBidWcgYW5kIHNvbWUgbWlub3IgaW1wcm92ZW1lbnRzLgoKQ2hhbmdlbG9nOgpo
dHRwczovL2dpdGh1Yi5jb20vZmFjZWJvb2svenN0ZC9yZWxlYXNlcy90YWcvdjEuNS41CgpTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWVsIENhbGxhaGFuIDxjb2Rlci5jYWxsYWhhbkBnbWFpbC5jb20+Ci0t
LQogbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3pzdGQve3pzdGRfMS41LjQuYmIgPT4genN0ZF8xLjUu
NS5iYn0gfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKIHJlbmFtZSBtZXRhL3JlY2lwZXMtZXh0ZW5kZWQvenN0ZC97enN0ZF8xLjUuNC5iYiA9PiB6
c3RkXzEuNS41LmJifSAoOTYlKQoKZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1leHRlbmRlZC96
c3RkL3pzdGRfMS41LjQuYmIgYi9tZXRhL3JlY2lwZXMtZXh0ZW5kZWQvenN0ZC96c3RkXzEuNS41
LmJiCnNpbWlsYXJpdHkgaW5kZXggOTYlCnJlbmFtZSBmcm9tIG1ldGEvcmVjaXBlcy1leHRlbmRl
ZC96c3RkL3pzdGRfMS41LjQuYmIKcmVuYW1lIHRvIG1ldGEvcmVjaXBlcy1leHRlbmRlZC96c3Rk
L3pzdGRfMS41LjUuYmIKaW5kZXggYzJlOTYyMjVlNC4uNDg3NDY1YjZjNyAxMDA2NDQKLS0tIGEv
bWV0YS9yZWNpcGVzLWV4dGVuZGVkL3pzdGQvenN0ZF8xLjUuNC5iYgorKysgYi9tZXRhL3JlY2lw
ZXMtZXh0ZW5kZWQvenN0ZC96c3RkXzEuNS41LmJiCkBAIC0xMiw3ICsxMiw3IEBAIExJQ19GSUxF
U19DSEtTVU0gPSAiZmlsZTovL0xJQ0VOU0U7bWQ1PTA4MjJhMzJmN2FjZGJlMDEzNjA2NzQ2NjQx
NzQ2ZWU4IFwKIAogU1JDX1VSSSA9ICJnaXQ6Ly9naXRodWIuY29tL2ZhY2Vib29rL3pzdGQuZ2l0
O2JyYW5jaD1yZWxlYXNlO3Byb3RvY29sPWh0dHBzIgogCi1TUkNSRVYgPSAiOTQ1ZjI3NzU4YzBm
ZDY3YjYzNjEwM2EzOGRiZjA1MDI2NmM2YjkwYSIKK1NSQ1JFViA9ICI2Mzc3OWM3OTgyMzczNDZj
MmIyNDVjNTQ2YzQwYjcyYTVhNTkxM2ZlIgogVVBTVFJFQU1fQ0hFQ0tfR0lUVEFHUkVHRVggPSAi
dig/UDxwdmVyPlxkKyhcLlxkKykrKSIKIAogQ1ZFX1BST0RVQ1QgPSAienN0YW5kYXJkIgotLSAK
Mi4zNC4xCgo=
--00000000000062c9c405f9f6a22a--

