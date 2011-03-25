Return-Path: <cgwalters@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id B95024C800A0
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 07:42:03 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyb40 with SMTP id 40so1381775wyb.35
	for <poky@yoctoproject.org>; Fri, 25 Mar 2011 05:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	bh=sXjundjrpKgiSAFtOwc7XiDk8O3ALsD3EHCEpzYqSr8=;
	b=x1m53GPanAxk+nki4Y1d0apC+Nusw4ZVesUh46SuEOqESlYrqI7TGWVts6E6FAsUaj
	OQkZEEZo+uUdznEkiwF4rOjzPDFUUi9nDPqVe3Y4CCEabMHAUfqqLNPXfjuh7ii8beJ3
	BuAqWomBkMuvZ9NGtrrhe2GYxx5J4MpJsLRRU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type;
	b=qbQaRjVAUUQH5dyEhriU/ktUZJer7ULaJXlqet9wmBm5eeDs2he6+NH/Rn16VT4/eC
	dZpt4d+Kxt67m2Zd8S+AQZbVJTPRmdmjd0CILFrMDC2KrDl8XbdpZmzB1aWuJohSPTId
	QKZRTWRJ+tgwaG9u2nPSsTXufAluUNp2w4uaE=
MIME-Version: 1.0
Received: by 10.216.64.201 with SMTP id c51mr685941wed.6.1301056917476; Fri,
	25 Mar 2011 05:41:57 -0700 (PDT)
Sender: cgwalters@gmail.com
Received: by 10.216.49.20 with HTTP; Fri, 25 Mar 2011 05:41:57 -0700 (PDT)
In-Reply-To: <20110324031944.GC20796@sakrah.homelinux.org>
References: <AANLkTikeUs9N=0-q_TPFr-xsQZTmAh5PORHYtrSMpf8u@mail.gmail.com>
	<20110324031944.GC20796@sakrah.homelinux.org>
Date: Fri, 25 Mar 2011 08:41:57 -0400
X-Google-Sender-Auth: OrO0JVygsD84UHjQcUUwOSUixIQ
Message-ID: <AANLkTi=KnuGEbCL9SQFX6he5BU7v0+ygtAAL7HQwSDCT@mail.gmail.com>
From: Colin Walters <walters@verbum.org>
To: Colin Walters <walters@verbum.org>, poky@yoctoproject.org
Subject: Re: [patch] autotools: Override do_compile to specify V=1 if project uses AM_V_GEN
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
X-List-Received-Date: Fri, 25 Mar 2011 12:42:04 -0000
X-Groupsio-MsgNum: 4890
Content-Type: multipart/mixed; boundary=000e0ce0d90e66219c049f4debe8

--000e0ce0d90e66219c049f4debe8
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 23, 2011 at 11:19 PM, Khem Raj <raj.khem@gmail.com> wrote:

> usually package which use silent-rules they have --disable-silent-rules
> Did you try to pass this option ? May be try it with EXTRA_OECONF and
> see if that helps

You're right, that's much better.  New patch attached:

--000e0ce0d90e66219c049f4debe8
Content-Type: text/x-patch; charset=US-ASCII; 
	name="0001-autotools-Pass-disable-silent-rules-to-configure.patch"
Content-Disposition: attachment; 
	filename="0001-autotools-Pass-disable-silent-rules-to-configure.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_glp3owp10

RnJvbSAxZmE1M2EyZjFjNDU3ZWYwZmIwZGY3YWRhNTNjNjdkZDg3ZDE4NDQ4IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBDb2xpbiBXYWx0ZXJzIDx3YWx0ZXJzQHZlcmJ1bS5vcmc+CkRh
dGU6IFdlZCwgMjMgTWFyIDIwMTEgMTg6Mjg6MzYgLTA0MDAKU3ViamVjdDogW1BBVENIXSBhdXRv
dG9vbHM6IFBhc3MgLS1kaXNhYmxlLXNpbGVudC1ydWxlcyB0byBjb25maWd1cmUKCk5vbi12ZXJi
b3NlIGxvZ3MgYXJlIHJlYWxseSBhbm5veWluZyB3aGVuIHRyeWluZyB0byBkZWJ1ZyBhIGJ1aWxk
CmZhaWx1cmUuICBBIGxvdCBvZiBwcm9qZWN0cyBhcmUgY29weWluZyBpbiB0aGUgZmxhZyB0byB1
c2UKQU1fU0lMRU5UX1JVTEVTIHdoaWNoIGF1dG9tYWtlIGdhaW5lZCByZWNlbnRseS4gIFdlIG5l
ZWQgdG8gdW5kbwp0aGlzLgoKV2UnbGwgZ2V0IGEgd2FybmluZyBmcm9tIGNvbmZpZ3VyZSBpZiBp
dCdzIG5vdCByZWNvZ25pemVkLCBidXQgdGhhdCdzCmZpbmUuCi0tLQogbWV0YS9jbGFzc2VzL2F1
dG90b29scy5iYmNsYXNzIHwgICAgMSArCiAxIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9ucygr
KSwgMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9tZXRhL2NsYXNzZXMvYXV0b3Rvb2xzLmJi
Y2xhc3MgYi9tZXRhL2NsYXNzZXMvYXV0b3Rvb2xzLmJiY2xhc3MKaW5kZXggYmM4OTFmOS4uN2Vi
ZjgzMyAxMDA2NDQKLS0tIGEvbWV0YS9jbGFzc2VzL2F1dG90b29scy5iYmNsYXNzCisrKyBiL21l
dGEvY2xhc3Nlcy9hdXRvdG9vbHMuYmJjbGFzcwpAQCAtNjMsNiArNjMsNyBAQCBDT05GSUdVUkVP
UFRTID0gIiAtLWJ1aWxkPSR7QlVJTERfU1lTfSBcCiAJCSAgLS1vbGRpbmNsdWRlZGlyPSR7b2xk
aW5jbHVkZWRpcn0gXAogCQkgIC0taW5mb2Rpcj0ke2luZm9kaXJ9IFwKIAkJICAtLW1hbmRpcj0k
e21hbmRpcn0gXAorCQkgIC0tZGlzYWJsZS1zaWxlbnQtcnVsZXMgXAogCQkgICR7QGFwcGVuZF9s
aWJ0b29sX3N5c3Jvb3QoZCl9IgogCiBvZV9ydW5jb25mICgpIHsKLS0gCjEuNy40Cgo=

--000e0ce0d90e66219c049f4debe8--
