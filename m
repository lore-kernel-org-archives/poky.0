Return-Path: <cgwalters@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88ACB4C80044
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 09:46:20 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so294824wyb.35
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 07:46:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:date:x-google-sender-auth
	:message-id:subject:from:to:content-type;
	bh=xL0z6H6krDerY7CCCkKeZ5ej8HbUj2uFDRQj5KFT4pk=;
	b=uIYBBYs87cZYYvf6+FSWdefPhvCo6Qn0OHmT0PFBbzY4gDuDRKkzDJEpMTN12A0QX5
	eQu5U5TrH/L+EWyOYtQkPyTyvVECtcINsw21udSF2y6CGkdFffT6c60rFEyfKTqfj7b9
	DcHBLzsSQbt1IhfK/RfgD99VS4m7tKPv67kVA=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	b=pL8Eyt84OY7FQn7Dzi/rPXPfqyqDUwXE7DMjaps1FunpHK0uhMlNxW9+U3lwC5cZGB
	MFo9tG+PX8O0WdkpZNIG290sxzJZ+4ce+7tL8SjBMCIaT1NfxjYBsiGChqH4Q74Qur0a
	W5eb8VijkrEjSKiT5NrOqI6ckqZS34qCH1WNc=
MIME-Version: 1.0
Received: by 10.216.240.3 with SMTP id d3mr4187961wer.51.1301409835173; Tue,
	29 Mar 2011 07:43:55 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.49.20 with HTTP; Tue, 29 Mar 2011 07:43:55 -0700 (PDT)
Date: Tue, 29 Mar 2011 10:43:55 -0400
X-Google-Sender-Auth: XTT2ykUfCAwn0f57xHn8ZBlE_44
Message-ID: <AANLkTi=zGTsBJ4t6MR=7pp2cSjwNFhSMJC=xQGy_mMBF@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: poky@yoctoproject.org
Subject: [patch] autotools: Remove .la files by default
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
X-List-Received-Date: Tue, 29 Mar 2011 14:46:20 -0000
X-Groupsio-MsgNum: 4938
Content-Type: multipart/mixed; boundary=e0cb4e385316eec84f049fa0166f

--e0cb4e385316eec84f049fa0166f
Content-Type: text/plain; charset=UTF-8

See attached patch.

--e0cb4e385316eec84f049fa0166f
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-autotools-Remove-.la-files-by-default.patch"
Content-Disposition: attachment; 
	filename="0001-autotools-Remove-.la-files-by-default.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gluxt1vz0

RnJvbSA0ODc3NTNmMWJiZWYwODVjNTU4YmVmYmE3ZjAzYjZiNGYwMWYzOTJkIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDb2xpbiBXYWx0ZXJzIDx3YWx0ZXJzQHZlcmJ1bS5vcmc+CkRh
dGU6IFR1ZSwgMjkgTWFyIDIwMTEgMTA6NDE6MzQgLTA0MDAKU3ViamVjdDogW1BBVENIXSBhdXRv
dG9vbHM6IFJlbW92ZSAubGEgZmlsZXMgYnkgZGVmYXVsdAoKVGhleSBhcmUgaW5zdGFsbGVkIGJ5
IGxpYnRvb2wgb25seSB0byBtYWtlIGF1dG9tYWtlJ3MgIm1ha2UgdW5pbnN0YWxsIgp3b3JrOyBi
dXQgd2UgZG9uJ3QgY2FyZSBhYm91dCB0aGF0LCBzaW5jZSBubyBvbmUgc2FuZSBiYXNlcyBhbgpv
cGVyYXRpbmcgc3lzdGVtIHVwZ3JhZGUvdW5pbnN0YWxsIHByb2NlZHVyZSBvbiBhdXRvbWFrZS4g
IFNhbmVyCnBlb3BsZSB1c2UgaGlnaGVyIGxldmVsIGFic3RyYWN0aW9ucyBsaWtlICJwYWNrYWdl
cyIgb3IgcHVyZSBpbWFnZQpiYXNlZCBzeW5jaHJvbml6YXRpb24uCgpUaGV5IGFyZSBvdGhlcndp
c2UgdW5uZWNlc3NhcnkgYW5kIGFjdHVhbGx5IGNhbiBicmVhayB0aGluZ3M7IHNlZToKaHR0cHM6
Ly9saXZlLmdub21lLm9yZy9Hbm9tZVNoZWxsL1JlbW92aW5nTGFGaWxlcwpodHRwOi8vd2lraS5k
ZWJpYW4ub3JnL1JlbGVhc2VHb2Fscy9MQUZpbGVSZW1vdmFsCi0tLQogbWV0YS9jbGFzc2VzL2F1
dG90b29scy5iYmNsYXNzIHwgICAgNSArKysrKwogMSBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbWV0YS9jbGFzc2VzL2F1dG90b29s
cy5iYmNsYXNzIGIvbWV0YS9jbGFzc2VzL2F1dG90b29scy5iYmNsYXNzCmluZGV4IDdlYmY4MzMu
LjFmNzcyMTIgMTAwNjQ0Ci0tLSBhL21ldGEvY2xhc3Nlcy9hdXRvdG9vbHMuYmJjbGFzcworKysg
Yi9tZXRhL2NsYXNzZXMvYXV0b3Rvb2xzLmJiY2xhc3MKQEAgLTE2Myw2ICsxNjMsMTEgQEAgYXV0
b3Rvb2xzX2RvX2luc3RhbGwoKSB7CiAJaWYgWyAtZSAiJHtEfSR7aW5mb2Rpcn0vZGlyIiBdOyB0
aGVuCiAJCXJtIC1mICR7RH0ke2luZm9kaXJ9L2RpcgogCWZpCisJIyBBbHNvIGtpbGwgb2ZmIC5s
YSBmaWxlczsgdGhleSBhcmUgd2hvbGx5IHVubmVjZXNzYXJ5IGFuZCBhY3R1YWxseSBjYW4KKwkj
IGJyZWFrIHRoaW5nczsgc2VlOgorCSMgaHR0cHM6Ly9saXZlLmdub21lLm9yZy9Hbm9tZVNoZWxs
L1JlbW92aW5nTGFGaWxlcworCSMgaHR0cDovL3dpa2kuZGViaWFuLm9yZy9SZWxlYXNlR29hbHMv
TEFGaWxlUmVtb3ZhbAorCWZpbmQgJHtEfSR7bGliZGlyfSAtbmFtZSAnKi5sYScgLWRlbGV0ZQog
fQogCiBpbmhlcml0IHNpdGVjb25maWcKLS0gCjEuNy40Cgo=

--e0cb4e385316eec84f049fa0166f--
