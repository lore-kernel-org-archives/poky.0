Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 694A0C3DA42
	for <webhook@archiver.kernel.org>; Mon,  8 Jul 2024 10:56:47 +0000 (UTC)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web10.77000.1720436199976987387
 for <poky@lists.yoctoproject.org>;
 Mon, 08 Jul 2024 03:56:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=hU0HK/EM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-36798ea618bso2431233f8f.0
        for <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 03:56:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1720436198; x=1721040998; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aQ2hfTd0P8tLD4Djb4iyoRu+dm1Oyz8eXoP33/ug3n8=;
        b=hU0HK/EMMcqJQDcPtXUwSbTl0ffrPrVsiIbYuXIwqIKpbMyB0eoRL7eMApXnsf9orI
         /oEkBALwmb2FaKdO58xWzLgDnqD1q/mni8tjtkX39eOERXd/I8veY6rVxbGn8XmySzIJ
         7LmYPJg7nxSo/U6Z0tiuZtNb9XexeMuyWoYLg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720436198; x=1721040998;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=aQ2hfTd0P8tLD4Djb4iyoRu+dm1Oyz8eXoP33/ug3n8=;
        b=RUDaF35RBeF+GwwX1n8uLtZmsNsy0g5jxIzlc48U3rSGz9J4aDsH9exjW8YgCIeDKv
         7CADm9yCbUtUrERnF+lRvXaVAkA6bEIHHZpeiyZnwSflHRVBbCxcoTPQ+5XDpNOqyX0O
         mkB9Rcu+LSkK/MIrgQGeCn46BYl8Os6aKsjqkTAVKGSfe5IFJcsvJx9f5EDwj6Zya4l2
         OfMTJxpNCKtnW8UOIHids53rKFM7JzNIma+opmCKvTw1BWLMRM9Mc/UPPS2GJN4j+OJG
         NRLk+8wGetuM16iTzok27JSERp1KZRtHHzxiDXfte+ASyqaUDLvd9Hm5e4hingBQjSIn
         yoyw==
X-Forwarded-Encrypted: i=1; AJvYcCWkQqTQnY9M/PivG7tL3SjbS6ecp1AqUj6pkRLU/5ht/gwZ+3wjgxIuoVqhUAaIpQjLyxM/RMnU82cR/cqjF8jNxONJjAECe1LBtZY=
X-Gm-Message-State: AOJu0YyNTB1hOjL9GPK3y55H2QuCWc3Kohic8KvRM79yGC4gi3FO1mM8
	uT7xAGDNnzjBLPCHapKncva5wFU3FBYPUUmYB9BO7Qw0aMJjehs/AUE2Xp9xrKs=
X-Google-Smtp-Source: AGHT+IGgGG/mtIItIBOx7BlxryExxDddHRt1qXnIUUXMfvgxJNeA3s6f4dwz+iCN9xZpNvntyHrC9g==
X-Received: by 2002:a05:6000:12c3:b0:367:9bc8:f3ee with SMTP id ffacd0b85a97d-3679dd0d302mr7669341f8f.4.1720436197982;
        Mon, 08 Jul 2024 03:56:37 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:1a38:17b2:9986:6eea? ([2001:8b0:aba:5f3c:1a38:17b2:9986:6eea])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367900fd1e5sm13981966f8f.63.2024.07.08.03.56.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jul 2024 03:56:37 -0700 (PDT)
Message-ID: <fc84d485caf7ebcc549256d3916a2164c968916a.camel@linuxfoundation.org>
Subject: Re: [poky] Licence error in openssh
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: chris.vd.kruit@certhon.com, poky@lists.yoctoproject.org
Date: Mon, 08 Jul 2024 11:56:36 +0100
In-Reply-To: <nauN.1720433331746704508.jsS2@lists.yoctoproject.org>
References: <nauN.1720433331746704508.jsS2@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64
User-Agent: Evolution 3.52.0-1build2 
MIME-Version: 1.0
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 08 Jul 2024 10:56:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13413

T24gTW9uLCAyMDI0LTA3LTA4IGF0IDAzOjA4IC0wNzAwLCBjaHJpcy52ZC5rcnVpdCB2aWEgbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZyB3cm90ZToKPiBJJ20gbm90IHN1cmUgaWYgdGhpcyBpcyB0aGUg
Y29ycmVjdCBwbGFjZSB0byByZXBvcnQgdGhpcy4gSSBnb3QgYW4gZXJyb3IgbWVzc2FnZSBidWls
ZGluZyBvcGVuc3NoLTkuOFAxLXIwLCByZWdhcmRpbmcgdGhlIGxpY2Vuc2UgZmlsZS4gSXQgc2Vl
bXMgbGlrZSB0aGUgTUQ1U1VNIGluIHRoZSByZWNpcGUgZmlsZSBpcyB3cm9uZy4KPiAKPiBJIGdv
dCB0aGUgZm9sbG93aW5nIGVycm9yIGR1cmluZyBidWlsZC4KPiAKPiBFUlJPUjogb3BlbnNzaC05
LjhwMS1yMCBkb19wb3B1bGF0ZV9saWM6IFFBIElzc3VlOiBvcGVuc3NoOiBUaGUgTElDX0ZJTEVT
X0NIS1NVTSBkb2VzIG5vdCBtYXRjaCBmb3IgZmlsZTovL0xJQ0VOQ0U7bWQ1PThiYWYzNjU2MTRj
OWJkZDYzNzA1ZjI5OGM5YWZiZmI5Cj4gb3BlbnNzaDogVGhlIG5ldyBtZDUgY2hlY2tzdW0gaXMg
MDcyOTc5MDY0ZTY5MWQzNDIwMDJmNDNjZDg5YzAzOTQKPiBvcGVuc3NoOiBIZXJlIGlzIHRoZSBz
ZWxlY3RlZCBsaWNlbnNlIHRleHQ6Cj4gdnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2
dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dnZ2dsKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgCj4gVGhpcyBmaWxlIGlzIHBhcnQgb2YgdGhlIE9wZW5TU0ggc29mdHdhcmUuwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAKPiBUaGUgbGljZW5jZXMgd2hpY2ggY29tcG9uZW50
cyBvZiB0aGlzIHNvZnR3YXJlIGZhbGwgdW5kZXIgYXJlIGFzwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAKPiBmb2xsb3dzLsKgIEZpcnN0LCB3ZSB3aWxsIHN1bW1hcml6
ZSBhbmQgc2F5IHRoYXQgYWxsIGNvbXBvbmVudHPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAKPiBhcmUgdW5kZXIgYSBCU0QgbGljZW5jZSwgb3IgYSBsaWNlbmNl
IG1vcmUgZnJlZSB0aGFuIHRoYXQuCj4gCj4gSSBnZW5lcmF0ZWQgdGhlIE1ENVNVTSBvZiB0aGUg
TElDRU5DRSBmaWxlIGFuZCBpdCBpcyB0aGUgbnVtYmVyIHJlcG9ydGVkIGluIHRleHQgYWJvdmUs
IHNvIGkganVzdCBjaGFuZ2VkIHRoZSByZWNpcGUgYW5kIHRoZW4gaXQgd29ya2VkLsKgCj4gTWF5
YmUgdGhlIHNvdXJjZSBuZWVkcyB0byBiZSBjaGFuZ2VkLCBidXQgaSBkb24ndCBrbm93IGhvdyB0
byBkbyB0aGlzLgoKV2Ugc3RpbGwgaGF2ZSA5LjdwMSBpbiBtYXN0ZXIgd2l0aCBhIGJhY2twb3J0
IGZvciB0aGUgcmVjZW50IENWRS4gV2hlcmUKZGlkIHlvdSBnZXQgOS44cDEgZnJvbT8gQXQgdGhl
IHNhbWUgdGltZSBpdCB3YXMgdXBncmFkZWQsIGl0IHdvdWxkCmxpa2VseSBuZWVkIHRoZSBsaWNl
bnNlIGNoZWNrc3VtIGZpeC4KCkNoZWVycywKClJpY2hhcmQKCg==


