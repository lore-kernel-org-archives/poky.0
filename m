Return-Path: <cgwalters@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 605074C800A3
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 08:50:33 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so3596413wyb.35
	for <poky@yoctoproject.org>; Fri, 15 Apr 2011 06:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:date:x-google-sender-auth
	:message-id:subject:from:to:content-type;
	bh=ASKsMTzC9t2FLiIO3Gs7dRDRyPR0KiudE/PTxd92nMo=;
	b=xnjJa+csLo2hqtc15xDkuczcHQxMX0ZN486TGg6iWyE1MlmYHrd1mk4c2B6UIqZDT4
	g9O8l+ryTxmTIofG9uYA6U3kNpnIIDd2RZ9JBigqF0Ar/Ivs9JAJzceBDOcrw9TjP7cn
	S85HsU4WIGRWguq8X5eaIvQjMsHkCIeFj3ZFQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	b=WihBRD5+vV/GQjwg8aMkaDHGsvJlYLdFGREpKoOPBUrZ0iBY0h5TDBZ/nFTE0z26aK
	wHkRvJjSBc7EdFoehg8Tizg6kZzzb2b4fCkfuGbPGD4wySdBhWyeWDbMMhLPaMuQtbEz
	6W7mk+Gpfg0CIozu64rsomWhTTxiS48S+pCs0=
MIME-Version: 1.0
Received: by 10.216.205.139 with SMTP id j11mr2058144weo.28.1302875432301;
	Fri, 15 Apr 2011 06:50:32 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.254.42 with HTTP; Fri, 15 Apr 2011 06:50:32 -0700 (PDT)
Date: Fri, 15 Apr 2011 09:50:32 -0400
X-Google-Sender-Auth: lEKO2z4FBWWhpoYjl3n8gqkHogs
Message-ID: <BANLkTik2tXVqLPZUf9kf7WW6hrNpVbFWEQ@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: poky <poky@yoctoproject.org>
Subject: [patch] yocto-project-qs.xml: Add a title
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 15 Apr 2011 13:50:33 -0000
X-Groupsio-MsgNum: 5329
Content-Type: multipart/mixed; boundary=0016e6d972bf5433f704a0f5534c

--0016e6d972bf5433f704a0f5534c
Content-Type: text/plain; charset=UTF-8

We didn't have an <info> section, and thus the generated HTML at least
had <title></title> which is lame to see in a browser.

--0016e6d972bf5433f704a0f5534c
Content-Type: text/x-diff; charset=US-ASCII; 
	name="0001-yocto-project-qs.xml-Add-a-title.patch"
Content-Disposition: attachment; 
	filename="0001-yocto-project-qs.xml-Add-a-title.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gmj5vo6r0

RnJvbSAwOTA4OTAzMmM5ZDBmNTUxOTk2ZTkxM2ExYmRjY2U5MDgwYjBkOWQ0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDb2xpbiBXYWx0ZXJzIDx3YWx0ZXJzQHZlcmJ1bS5vcmc+CkRh
dGU6IEZyaSwgMTUgQXByIDIwMTEgMDk6MzQ6MzUgLTA0MDAKU3ViamVjdDogW1BBVENIXSB5b2N0
by1wcm9qZWN0LXFzLnhtbDogQWRkIGEgdGl0bGUKCldlIGRpZG4ndCBoYXZlIGFuIDxpbmZvPiBz
ZWN0aW9uLCBhbmQgdGh1cyB0aGUgZ2VuZXJhdGVkIEhUTUwgYXQgbGVhc3QKaGFkIDx0aXRsZT48
L3RpdGxlPiB3aGljaCBpcyBsYW1lIHRvIHNlZSBpbiBhIGJyb3dzZXIuCi0tLQogLi4uL3lvY3Rv
LXByb2plY3QtcXMveW9jdG8tcHJvamVjdC1xcy54bWwgICAgICAgICAgfCAgICAzICsrKwogMSBm
aWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZG9jdW1lbnRhdGlvbi95b2N0by1wcm9qZWN0LXFzL3lvY3RvLXByb2plY3QtcXMueG1sIGIv
ZG9jdW1lbnRhdGlvbi95b2N0by1wcm9qZWN0LXFzL3lvY3RvLXByb2plY3QtcXMueG1sCmluZGV4
IGYwMTFmMDkuLjgzZmNkZmIgMTAwNjQ0Ci0tLSBhL2RvY3VtZW50YXRpb24veW9jdG8tcHJvamVj
dC1xcy95b2N0by1wcm9qZWN0LXFzLnhtbAorKysgYi9kb2N1bWVudGF0aW9uL3lvY3RvLXByb2pl
Y3QtcXMveW9jdG8tcHJvamVjdC1xcy54bWwKQEAgLTMsNiArMyw5IEBACiAKIDxhcnRpY2xlIGlk
PSdpbnRybyc+CiAgICA8aW1hZ2VkYXRhIGZpbGVyZWY9ImZpZ3VyZXMveW9jdG8tcHJvamVjdC10
cmFuc3AucG5nIiB3aWR0aD0iNmluIiBkZXB0aD0iMWluIiBhbGlnbj0icmlnaHQiIHNjYWxlPSIy
NSIgLz4KKyAgIDxpbmZvPgorICAgICA8dGl0bGU+WW9jdG8gUHJvamVjdCBRdWljayBTdGFydDwv
dGl0bGU+CisgICA8L2luZm8+CiAKIDxzZWN0aW9uIGlkPSdmYWtlLXRpdGxlJz4KICAgICA8dGl0
bGU+WW9jdG8gUHJvamVjdCBRdWljayBTdGFydDwvdGl0bGU+Ci0tIAoxLjcuMQoK

--0016e6d972bf5433f704a0f5534c--
