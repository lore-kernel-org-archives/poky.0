Return-Path: <cgwalters@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88A174C800BB
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 17:30:46 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwk4 with SMTP id 4so6934789wwk.5
	for <poky@yoctoproject.org>; Wed, 23 Mar 2011 15:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:date:x-google-sender-auth
	:message-id:subject:from:to:content-type;
	bh=qG+SH3jlJ8cur/3gXo1WGTk2ZZbldrPqHtKP04g8Oug=;
	b=fhKuUyamzeKFLwAgpvOhlhFTa4TpWf4Ih1c3W4KdJ93Q9GNXURgZcRfvKVKF+8Xw2b
	vfRotFrS7VaIaOsH7XxL9JxcvNoGs26vupAtnNypCyObMm9taMXl+MXDyol7fr5Jz4pH
	5eQVGljMP6I5qXHnRu+BNpHaga16YgtgF0+wE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	b=XKiqmv3Wh1JZojmdslIq4aJcerY9gwMIVU8xb9TV42nKMiMaRpwNwF4TkLCKDQWhwj
	muj46MpBr76pJooK+WFWtnHsj3/tGiQE+nvmtsDzy3Pjn2vdQhMAyP5fBRsm+AifskAd
	1NQa6QYPv62Y8Nl4gc5ivX/1mX5nktrRT0xAw=
MIME-Version: 1.0
Received: by 10.216.190.40 with SMTP id d40mr6897129wen.34.1300919445120; Wed,
	23 Mar 2011 15:30:45 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.155.76 with HTTP; Wed, 23 Mar 2011 15:30:44 -0700 (PDT)
Date: Wed, 23 Mar 2011 18:30:44 -0400
X-Google-Sender-Auth: Rn5C9oSCQfT5HCiN3LenwoIWuM0
Message-ID: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: poky@yoctoproject.org
Subject: [patch] autotools: Override do_compile to specify V=1 if project uses AM_V_GEN
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
X-List-Received-Date: Wed, 23 Mar 2011 22:30:46 -0000
X-Groupsio-MsgNum: 4872
Content-Type: multipart/mixed; boundary=001485f27b3a687ca6049f2de992

--001485f27b3a687ca6049f2de992
Content-Type: text/plain; charset=UTF-8

    Non-verbose logs are really annoying when trying to debug a build
    failure.  A lot of projects are copying in the flag to use
    AM_SILENT_RULES which automake gained recently.  We need to undo
    this.

    Implement this by overriding do_compile in autotools to look for
    its signature, and specify V=1 to make if we find it.

--001485f27b3a687ca6049f2de992
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-autotools-Override-do_compile-to-specify-V-1-if-proj.patch"
Content-Disposition: attachment; 
	filename="0001-autotools-Override-do_compile-to-specify-V-1-if-proj.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_glmtu9ht0

RnJvbSBlYjc4NjljMWIzMDBiMWUwODE1NzA4Y2U0NGExMDhlNGI4YWRkMzJkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDb2xpbiBXYWx0ZXJzIDx3YWx0ZXJzQHZlcmJ1bS5vcmc+CkRh
dGU6IFdlZCwgMjMgTWFyIDIwMTEgMTg6Mjg6MzYgLTA0MDAKU3ViamVjdDogW1BBVENIXSBhdXRv
dG9vbHM6IE92ZXJyaWRlIGRvX2NvbXBpbGUgdG8gc3BlY2lmeSBWPTEgaWYgcHJvamVjdCB1c2Vz
IEFNX1ZfR0VOCgpOb24tdmVyYm9zZSBsb2dzIGFyZSByZWFsbHkgYW5ub3lpbmcgd2hlbiB0cnlp
bmcgdG8gZGVidWcgYSBidWlsZApmYWlsdXJlLiAgQSBsb3Qgb2YgcHJvamVjdHMgYXJlIGNvcHlp
bmcgaW4gdGhlIGZsYWcgdG8gdXNlCkFNX1NJTEVOVF9SVUxFUyB3aGljaCBhdXRvbWFrZSBnYWlu
ZWQgcmVjZW50bHkuICBXZSBuZWVkIHRvIHVuZG8KdGhpcy4KCkltcGxlbWVudCB0aGlzIGJ5IG92
ZXJyaWRpbmcgZG9fY29tcGlsZSBpbiBhdXRvdG9vbHMgdG8gbG9vayBmb3IKaXRzIHNpZ25hdHVy
ZSwgYW5kIHNwZWNpZnkgVj0xIHRvIG1ha2UgaWYgd2UgZmluZCBpdC4KLS0tCiBtZXRhL2NsYXNz
ZXMvYXV0b3Rvb2xzLmJiY2xhc3MgfCAgIDExICsrKysrKysrKystCiAxIGZpbGVzIGNoYW5nZWQs
IDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWV0YS9jbGFz
c2VzL2F1dG90b29scy5iYmNsYXNzIGIvbWV0YS9jbGFzc2VzL2F1dG90b29scy5iYmNsYXNzCmlu
ZGV4IGJjODkxZjkuLjA0ZDVlMmQgMTAwNjQ0Ci0tLSBhL21ldGEvY2xhc3Nlcy9hdXRvdG9vbHMu
YmJjbGFzcworKysgYi9tZXRhL2NsYXNzZXMvYXV0b3Rvb2xzLmJiY2xhc3MKQEAgLTE1Niw2ICsx
NTYsMTUgQEAgYXV0b3Rvb2xzX2RvX2NvbmZpZ3VyZSgpIHsKIAlmaQogfQogCisjIE92ZXJyaWRl
IGJhc2UgY29tcGlsYXRpb24gd2l0aCBvbmUgdGhhdCB1bmRvZXMgQU1fU0lMRU5UX1JVTEVTOyB3
ZQorIyB3YW50IHRoZSBmdWxsIGxvZ3MuCithdXRvdG9vbHNfZG9fY29tcGlsZSgpIHsKKwlpZiBn
cmVwIC1xIEFNX1ZfR0VOIE1ha2VmaWxlIDI+L2Rldi9udWxsOyB0aGVuCisJCUFNX1ZfT1ZFUlJJ
REU9IlY9MSIKKwlmaQorCSR7TUFLRX0gJHtBTV9WX09WRVJSSURFfSAke0VYVFJBX09FTUFLRX0g
IiRAIiB8fCBkaWUgIm9lX3J1bm1ha2UgZmFpbGVkIgorfQorCiBhdXRvdG9vbHNfZG9faW5zdGFs
bCgpIHsKIAlvZV9ydW5tYWtlICdERVNURElSPSR7RH0nIGluc3RhbGwKIAkjIEluZm8gZGlyIGxp
c3RpbmcgaXNuJ3QgaW50ZXJlc3RpbmcgYXQgdGhpcyBwb2ludCBzbyByZW1vdmUgaXQgaWYgaXQg
ZXhpc3RzLgpAQCAtMTY2LDQgKzE3NSw0IEBAIGF1dG90b29sc19kb19pbnN0YWxsKCkgewogCiBp
bmhlcml0IHNpdGVjb25maWcKIAotRVhQT1JUX0ZVTkNUSU9OUyBkb19jb25maWd1cmUgZG9faW5z
dGFsbAorRVhQT1JUX0ZVTkNUSU9OUyBkb19jb25maWd1cmUgZG9fY29tcGlsZSBkb19pbnN0YWxs
Ci0tIAoxLjcuNAoK

--001485f27b3a687ca6049f2de992--
