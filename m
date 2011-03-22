Return-Path: <cgwalters@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A2E74C800AC
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 08:56:17 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so8690211wyb.35
	for <poky@yoctoproject.org>; Tue, 22 Mar 2011 06:56:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:date:x-google-sender-auth
	:message-id:subject:from:to:content-type;
	bh=EtyQbWSo9nb2PsMb/Y2Ft8zJf9YEqLmuYtKMK2T+Aq0=;
	b=U+JTqTFDc7vBIqai5MN1cvpXjohdyGJKhn2h/Id6LmnyLoJrs05ru6K82CB17gtV3F
	XdXPMEZeVDWSVVBZJwDGSh7bMeDzfMYO3Us9r6tmgMjmZCKMGmNf9eX6wb+YQwymviaA
	+2TOUx3r7kXE6b3GA1FqwG1rJEQtDpHo7G8Cs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	b=Q6u4sqe3Lejt9PY5YIbY3oGO36w6D53uxmB2bETkr/p4vPwBQxRNFvfrL321BWueMp
	vB6WMmgiuXr59njmnFjSGYO5ZM4dFCYTGu4e21ut907K+2VxDqeHcxc86bsPIaf3OcKj
	r31q7d0swLID3lPltTPrNuVxM7AQi0+2gjhY8=
MIME-Version: 1.0
Received: by 10.216.190.40 with SMTP id d40mr5292883wen.34.1300802176545; Tue,
	22 Mar 2011 06:56:16 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.155.76 with HTTP; Tue, 22 Mar 2011 06:56:16 -0700 (PDT)
Date: Tue, 22 Mar 2011 09:56:16 -0400
X-Google-Sender-Auth: Tk-beiR9_1GWO-S240zY_VUs-NQ
Message-ID: <AANLkTinuDFXe2XPFAYBMeY67u3LvuN5-NBhbMwW0=rJ5@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: poky@yoctoproject.org
Subject: [patch] qemu.inc: Don't reimplement pkg-config
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
X-List-Received-Date: Tue, 22 Mar 2011 13:56:18 -0000
X-Groupsio-MsgNum: 4860
Content-Type: multipart/mixed; boundary=001485f27b3aa7f47a049f129b83

--001485f27b3aa7f47a049f129b83
Content-Type: text/plain; charset=UTF-8

I don't see a strong reason not to have pkg-config as a host
dependency, given the size of the other requisite dependencies (git,
python, gcc, automake, subversion, etc.).

While this just replaces lame code with less lame code, in the future
when e.g. Debian's multiarch stuff lands, the /lib64 hacks here will
break.  pkg-config abstracts that for us.

--001485f27b3aa7f47a049f129b83
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-qemu.inc-Don-t-reimplement-pkg-config.patch"
Content-Disposition: attachment; 
	filename="0001-qemu.inc-Don-t-reimplement-pkg-config.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_glkvwhzy0

RnJvbSA1ZTVjMjM1YzE3MjcyZTNjNDUyNmE0YThkNTRlZTZiNzM2YzBlMzVhIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDb2xpbiBXYWx0ZXJzIDx3YWx0ZXJzQHZlcmJ1bS5vcmc+CkRh
dGU6IFR1ZSwgMjIgTWFyIDIwMTEgMDk6Mzg6MTggLTA0MDAKU3ViamVjdDogW1BBVENIXSBxZW11
LmluYzogRG9uJ3QgcmVpbXBsZW1lbnQgcGtnLWNvbmZpZwoKQ2hlY2tpbmcgZm9yIGUuZy4gZ2wu
cGMgaW5zdGVhZCBvZiBhIGhhcmRjb2RlZCBwYXRoIHRvIGxpYkdMLnNvIGlzCmJvdGggbW9yZSBy
ZWxpYWJsZSBhbmQgYSBzbWFsbGVyIGFtb3VudCBvZiBjb2RlLgotLS0KIG1ldGEvcmVjaXBlcy1k
ZXZ0b29scy9xZW11L3FlbXUuaW5jIHwgICAyMiArKysrKysrKystLS0tLS0tLS0tLS0tCiAxIGZp
bGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3FlbXUvcWVtdS5pbmMgYi9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvcWVtdS9xZW11LmluYwppbmRleCAyYzZiMTE0Li4zNmQ4MTY2IDEwMDY0NAotLS0gYS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvcWVtdS9xZW11LmluYworKysgYi9tZXRhL3JlY2lwZXMtZGV2
dG9vbHMvcWVtdS9xZW11LmluYwpAQCAtOCwyMiArOCwxOCBAQCBFWFRSQV9PRUNPTkYgPSAiLS10
YXJnZXQtbGlzdD1hcm0tbGludXgtdXNlcixhcm0tc29mdG1tdSxpMzg2LWxpbnV4LXVzZXIsaTM4
Ni1zbwogCiBpbmhlcml0IGF1dG90b29scwogCi0jIEZvciBvdXIgZ2wgcG93ZXJlZCBRRU1VIHlv
dSBuZWVkIGxpYkdMIGFuZCBTREwgaGVhZGVycworIyBGb3Igb3VyIGdsIHBvd2VyZWQgUUVNVSB5
b3UgbmVlZCBsaWJHTCBhbmQgU0RMCiBkb19jb25maWd1cmVfcHJlcGVuZF92aXJ0Y2xhc3MtbmF0
aXZlKCkgewotICAgIGxpYmdsPSdubycKLSAgICBsaWJzZGw9J25vJwotCi0gICAgdGVzdCAtZSAv
dXNyL2xpYi9saWJHTC5zbyAtYSAtZSAvdXNyL2xpYi9saWJHTFUuc28gJiYgbGliZ2w9J3llcycK
LSAgICB0ZXN0IC1lIC91c3IvbGliNjQvbGliR0wuc28gLWEgLWUgL3Vzci9saWI2NC9saWJHTFUu
c28gJiYgbGliZ2w9J3llcycKLQotICAgIHRlc3QgLWUgL3Vzci9saWIvcGtnY29uZmlnL3NkbC5w
YyAtbyAtZSAvdXNyL2xpYjY0L3BrZ2NvbmZpZy9zZGwucGMgLW8gLWUgL3Vzci9pbmNsdWRlL1NE
TC9TREwuaCAmJiBsaWJzZGw9J3llcycKLQotCi0gICAgaWYgWyAiJGxpYnNkbCIgIT0gJ3llcycg
LW8gIiRsaWJnbCIgIT0gJ3llcycgXTsgdGhlbgotICAgICAgIGVjaG8gIllvdSBuZWVkIGxpYkdM
LnNvIGFuZCBsaWJHTFUuc28gdG8gZXhpc3QgaW4geW91ciBsaWJyYXJ5IHBhdGggYW5kIHRoZSBk
ZXZlbG9wbWVudCBoZWFkZXJzIGZvciBTREwgaW5zdGFsbGVkIHRvIGJ1aWxkIHFlbXUtbmF0aXZl
LgotICAgICAgIFVidW50dSBwYWNrYWdlIG5hbWVzIGFyZTogbGliZ2wxLW1lc2EtZGV2LCBsaWJn
bHUxLW1lc2EtZGV2IGFuZCBsaWJzZGwxLjItZGV2IgorICAgIGlmICEgcGtnLWNvbmZpZyAtLWV4
aXN0cyBnbCBnbHU7IHRoZW4KKyAgICAgICBlY2hvICJZb3UgbmVlZCBnbC5wYyBhbmQgZ2x1LnBj
IHRvIGJ1aWxkIHFlbXUtbmF0aXZlLgorICAgICAgIFVidW50dSBwYWNrYWdlIG5hbWVzIGFyZTog
bGliZ2wxLW1lc2EtZGV2LCBsaWJnbHUxLW1lc2EtZGV2IgogICAgICAgIGV4aXQgMTsKICAgICBm
aQorICAgIGlmICEgcGtnLWNvbmZpZyAtLWV4aXN0cyBzZGw7IHRoZW4KKyAgICAgIGVjaG8gIllv
dSBuZWVkIHNkbC5wYyBpbnN0YWxsZWQgdG8gYnVpbGQgcWVtdS1uYXRpdmUuCisgICAgICBVYnVu
dHUgcGFja2FnZSBuYW1lIGlzOiBsaWJzZGwxLjItZGV2IgorICAgICAgZXhpdCAxOworICAgIGZp
CiB9CiAKIGRvX2NvbmZpZ3VyZSgpIHsKLS0gCjEuNy40Cgo=

--001485f27b3aa7f47a049f129b83--
