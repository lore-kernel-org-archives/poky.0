Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDBB2E0027D
	for <poky@yoctoproject.org>; Mon, 16 Jul 2012 06:21:22 -0700 (PDT)
Received: by weyu3 with SMTP id u3so3824862wey.35
	for <poky@yoctoproject.org>; Mon, 16 Jul 2012 06:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=i/kbPv5C0tlpM9r05FPtOKTQVKD6Kf7XvVPJ63nsCsg=;
	b=uWDg0E81pIzmy++TVlW/JMm4VNXHoaqHHy2P3Cjo6iVALawlZDNqTv6iILffUUOyW6
	xlkQ0gZb64qqb4uPv6uFXKt7Vrx0cIFHR60HHUfCZctVxySFvhM0Uy5KOhqMYpU+xgXw
	GOvLk9RJ2H3RpnWbKL4KU6uLmN48zGuajkfeuN1GnW3e9iIWbaRHbvuJzA3nZcv0dR+O
	LDJIMje9jHp5eYQeLi89HhjqIu26Ofmt/RsAZo9SyEx/EjUpk50rGm74QCjm3SnfkpKw
	43k6i/wUC/IL6y6AgWNxIo7PihN+KQX8zNs04ZcQzurCkiqJoWxpL/kHyFX0PCOrnSIn
	VAbg==
MIME-Version: 1.0
Received: by 10.180.100.37 with SMTP id ev5mr18231696wib.5.1342444881447; Mon,
	16 Jul 2012 06:21:21 -0700 (PDT)
Received: by 10.180.109.227 with HTTP; Mon, 16 Jul 2012 06:21:21 -0700 (PDT)
Date: Mon, 16 Jul 2012 18:51:21 +0530
Message-ID: <CABRtByNGNXAdyzdeLoVe2JbZdry2i4w832oedPEunJs6JO11ow@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: ERROR : libtimedate-perl-native-1.20-r3: task do_compile: Failed
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
X-List-Received-Date: Mon, 16 Jul 2012 13:21:23 -0000
X-Groupsio-MsgNum: 8054
Content-Type: multipart/mixed; boundary=f46d041826d64a0b2b04c4f24ea8

--f46d041826d64a0b2b04c4f24ea8
Content-Type: multipart/alternative; boundary=f46d041826d64a0b2204c4f24ea6

--f46d041826d64a0b2204c4f24ea6
Content-Type: text/plain; charset=ISO-8859-1

Hi ,

I am building poky working on bernard branch on Ubuntu 10.10 ,64 bit host.
I'm getting the error while building mythtv in the package
libtimedate-perl_1.20.bb which is one of its dependency.
The error is as follows:

**************************************
| NOTE: make -e MAKEFLAGS=
PASTHRU_INC=-isystem/home/xbmc_11jul/poky_xbmc_12july/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/include
-O2
CCFLAGS=-isystem/home/xbmc_11jul/poky_xbmc_12july/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/include
-O2 LD=gcc
| make: *** No rule to make target
`/home/xbmc_11jul/poky_xbmc_12july/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/perl/None/Config.pm',
needed by `Makefile'.  Stop.
| FATAL: oe_runmake failed
| ERROR: Function 'do_compile' failed (see
/home/xbmc_11jul/poky_xbmc_12july/poky_xbmc_09Mar2012/build/tmp/work/i686-linux/libtimedate-perl-native-1.20-r3/temp/log.do_compile.20054
for further information)
NOTE: package libtimedate-perl-native-1.20-r3: task do_compile: FAILED
****************************************
Can anyone help me out of this error .
Attaching the error log for more reference .

Thanks in advance,
Regards,
Sonu Vishwakarma

--f46d041826d64a0b2204c4f24ea6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span><span><div>Hi ,</div></span><span><div><span><br></span></div>I am bu=
ilding poky working on bernard branch on Ubuntu 10.10 ,64 bit host.</span><=
/span><div><div><span>I&#39;m getting the error while building mythtv in th=
e package <a href=3D"http://libtimedate-perl_1.20.bb">libtimedate-perl_1.20=
.bb</a> which is one of its dependency.<br>
The error is as follows: <br></span><br>***********************************=
***<br>| NOTE: make -e MAKEFLAGS=3D PASTHRU_INC=3D-isystem/home/xbmc_11jul/=
poky_xbmc_12july/poky_xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/incl=
ude -O2 CCFLAGS=3D-isystem/home/xbmc_11jul/poky_xbmc_12july/poky_xbmc_09Mar=
2012/build/tmp/sysroots/i686-linux/usr/include -O2 LD=3Dgcc<br>
| make: *** No rule to make target `/home/xbmc_11jul/poky_xbmc_12july/poky_=
xbmc_09Mar2012/build/tmp/sysroots/i686-linux/usr/lib/perl/None/Config.pm&#3=
9;, needed by `Makefile&#39;.=A0 Stop.<br>| FATAL: oe_runmake failed<br>| E=
RROR: Function &#39;do_compile&#39; failed (see /home/xbmc_11jul/poky_xbmc_=
12july/poky_xbmc_09Mar2012/build/tmp/work/i686-linux/libtimedate-perl-nativ=
e-1.20-r3/temp/log.do_compile.20054 for further information)<br>
NOTE: package libtimedate-perl-native-1.20-r3: task do_compile: FAILED<br>*=
***************************************</div>

</div><div><span><div>Can anyone help me out of this error .<br>Attaching t=
he error log for more reference .<br><br></div>
<div>Thanks in advance,</div><div>Regards,</div><div>Sonu Vishwakarma</div>=
</span></div>

--f46d041826d64a0b2204c4f24ea6--

--f46d041826d64a0b2b04c4f24ea8
Content-Type: application/octet-stream; name="libtimedate-perl_1.20.bb"
Content-Disposition: attachment; filename="libtimedate-perl_1.20.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_h4pl072m0

REVTQ1JJUFRJT04gPSAiVGltZURhdGUgLSBwYXJzZXIgZm9yIGFic29sdXRlIHRpbWVzIgpTRUNU
SU9OID0gImxpYnMiCiMgWW91IGNhbiByZWRpc3RyaWJ1dGUgaXQgYW5kL29yIG1vZGlmeSBpdCB1
bmRlciB0aGUgc2FtZSB0ZXJtcyBhcyBQZXJsIGl0c2VsZi4KTElDRU5TRSA9ICJBcnRpc3RpY3xH
UEx2MSsiClBSID0gInIzIgoKClNSQ19VUkkgPSAiaHR0cDovL3NlYXJjaC5jcGFuLm9yZy9DUEFO
L2F1dGhvcnMvaWQvRy9HQi9HQkFSUi9UaW1lRGF0ZS0ke1BWfS50YXIuZ3oiCgpTID0gIiR7V09S
S0RJUn0vVGltZURhdGUtJHtQVn0iCgppbmhlcml0IGNwYW4KCkJCQ0xBU1NFWFRFTkQ9Im5hdGl2
ZSIKClJERVBFTkRTXyR7UE59X3ZpcnRjbGFzcy1uYXRpdmUgPSAiIgpSREVQRU5EU18ke1BOfSAr
PSAicGVybC1tb2R1bGUtY2FycCBwZXJsLW1vZHVsZS1leHBvcnRlciBwZXJsLW1vZHVsZS1zdHJp
Y3QgcGVybC1tb2R1bGUtdGltZS1sb2NhbCIKUEFDS0FHRV9BUkNIID0gImFsbCIKClNSQ19VUklb
bWQ1c3VtXSA9ICI3ZGE3NDUyYmNlNGM2ODRlNDIzOGU2ZDA5YjM5MDIwMCIKU1JDX1VSSVtzaGEy
NTZzdW1dID0gImY4MjUxYTc5MWY2NjkyYzY5OTUyYjRhZjY5N2MwMWRmOTM5ODFhZDFhYjEzMzI3
OWQwMzQ2NTZhMDNjZDM3NTUiCg==

--f46d041826d64a0b2b04c4f24ea8--
