Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C62EFE006F1; Thu, 24 May 2018 10:34:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nick83ola[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0908EE0044F
	for <poky@yoctoproject.org>; Thu, 24 May 2018 10:34:10 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id k17-v6so2195576oih.5
	for <poky@yoctoproject.org>; Thu, 24 May 2018 10:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=AHz2CD0HnxVIpNcqo3l5rmk3+OQ/qjLSx0ARfEHuosI=;
	b=tZuBN31Qw89XXXqsADOAw47PELPADrMXbM50k2emg3KWv/ZGSCG1J/9KYUG2Pagj4F
	0sVqIU0lPZ1VPsA3yYiRoaEwJ5j9SpWZeKCwfNpULlgkDmyO+DZsWsxTDfkW5IYU6/9G
	Pi5F9i9r7UeJaaxW+TrSAM7SPPEWK5TRyE+A/f5KMupywROsb4GpUSBavUl199E0svfJ
	/DFr8phXLxpDtA6DjdrvGpznwAisGOGcwKpHvSTqGvTXFdEPs+mTDoj78SHjtlUgBY6j
	LR6Ge90t2zSSN8O/jfuUgRpstvEdofpgK1bFCGBwLufP/UwkmLciGrHJOgsMARRfQ3BF
	pLVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=AHz2CD0HnxVIpNcqo3l5rmk3+OQ/qjLSx0ARfEHuosI=;
	b=eS2k6rOd/jxNh4sdUSeoQqj6P7mJvm754H7DYH94S98CkEobyzrrkc0YfQjPYb6q9S
	KGMrrBY8jtEteEs+zfqhb30Ja1joC0s/KlRzj7OJlpfEc6v3M7HPw1UOcNepPHlsv76/
	MmKM6rAY95w1fIXSsVrW1rYuMmlYLqSFcmZvvEUB+QkfBweCnZLYFe2mdZdI78mcs62a
	nMP1IdmepVD+FUhF06vcdCJkfsdzT6+DxNJw/nBVpsMIcI+Rd96H+JJTapPxomn5YKlu
	K2hcwz7RGZDPeCE7dM/kzcfm3p++u+S1oMS/o3j0KBBvVwaqPX/lfAQtiqZk4oDuw5II
	oNAA==
X-Gm-Message-State: ALKqPweP71Ss8b8SHUPajxTRBKhtxmA8OqDXfLtQqvDQ19kBT4Vg+gXL
	fg3LMyQwTywj3NEJIKQIs2rKuVd+aeM92vNl2TrgEQ==
X-Google-Smtp-Source: AB8JxZqhVWCwJfzgC/uKdGgdsI/P9v2ClehmVDxFeXsrG/j2uoE9tVuPoA1w6DkKZHc2ZP6HHQbVY0AzVLpEbGF/qbk=
X-Received: by 2002:aca:d48f:: with SMTP id
	l137-v6mr4672050oig.325.1527183249807; 
	Thu, 24 May 2018 10:34:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:2927:0:0:0:0:0 with HTTP; Thu, 24 May 2018 10:33:48
	-0700 (PDT)
From: nick83ola <nick83ola@gmail.com>
Date: Thu, 24 May 2018 18:33:48 +0100
Message-ID: <CABPh3UPT7qC+-pzVm6=4x2xu1b19QKEsFThMeAP-C+mtoZOTmQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [yocto][PATCH] U-Boot 2018.03 wrong SD card clock speed
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 24 May 2018 17:34:12 -0000
X-Groupsio-MsgNum: 11258
Content-Type: multipart/mixed; boundary="0000000000001cc073056cf70f8b"

--0000000000001cc073056cf70f8b
Content-Type: multipart/alternative; boundary="0000000000001cc06f056cf70f89"

--0000000000001cc06f056cf70f89
Content-Type: text/plain; charset="UTF-8"

This patch fixes a problem with U-Boot 2018.03.
Basically U-boot get for the sd card the wrong clock source and with the
latest firmware (that changes it) it hangs when it try to access the sd
card.
See this discussion

https://github.com/raspberrypi/firmware/issues/953

This patch has already been accepted in U-boot source tree and it will be
included in 2018.05 version.

====================================
Another consideration: the current structure of the u-boot recipe render
very difficult to create a bbappend to apply for example a patch.

$ ls
files
u-boot_2018.03.bb
u-boot-common_2018.03.inc
u-boot-fw-utils_2018.03.bb
u-boot.inc  u-boot-mkimage_2018.03.bb

$ cat u-boot-common_2018.03.inc
HOMEPAGE = "http://www.denx.de/wiki/U-Boot/WebHome"
SECTION = "bootloaders"

LICENSE = "GPLv2+"
LIC_FILES_CHKSUM =
"file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
PE = "1"

# We use the revision in order to avoid having to fetch it from the
# repo during parse
SRCREV = "f95ab1fb6e37f0601f397091bb011edf7a98b890"

SRC_URI = " \
    git://git.denx.de/u-boot.git \
    file://0001-mmc-use-core-clock-frequency-in-bcm2835-sdhost.patch \
"

S = "${WORKDIR}/git"


This because the SRC_URI is in the u-boot-common_2018.03.inc file and this
file is included by the other u-boot recipes

So for using a bbappend I have to create 3 bbappend for each of the recipe

u-boot_2018.03.bb  u-boot-fw-utils_2018.03.bb  u-boot-mkimage_2018.03.bb
Also why the .inc file has a version number?

I think that the best approach here would be to have only one recipe that
provides the
u-book-mkimage u-boot-fw-utils and u-boot packages
================================================

Best Regards

Nicola Lunghi

--0000000000001cc06f056cf70f89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This patch fixes a problem with U-Boot 2018.03.</div>=
<div>Basically U-boot get for the sd card the wrong clock source and with t=
he latest firmware (that changes it) it hangs when it try to access the sd =
card.</div><div>See this discussion</div><div><br></div><div><a href=3D"htt=
ps://github.com/raspberrypi/firmware/issues/953">https://github.com/raspber=
rypi/firmware/issues/953</a><br></div><div><br></div><div>This patch has al=
ready been accepted in U-boot source tree and it will be included in 2018.0=
5 version.</div><div><br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></=
div><div></div><div>Another consideration: the current structure of the u-b=
oot recipe render very difficult to create a bbappend to apply for example =
a patch.</div><div><br></div><div>$ ls</div><div>files</div><div><a href=3D=
"http://u-boot_2018.03.bb">u-boot_2018.03.bb</a></div><div>u-boot-common_20=
18.03.inc</div><div><a href=3D"http://u-boot-fw-utils_2018.03.bb">u-boot-fw=
-utils_2018.03.bb</a></div><div>u-boot.inc=C2=A0 <a href=3D"http://u-boot-m=
kimage_2018.03.bb">u-boot-mkimage_2018.03.bb</a><br></div><div><br></div><d=
iv>$ cat u-boot-common_2018.03.inc <br>HOMEPAGE =3D &quot;<a href=3D"http:/=
/www.denx.de/wiki/U-Boot/WebHome">http://www.denx.de/wiki/U-Boot/WebHome</a=
>&quot;<br>SECTION =3D &quot;bootloaders&quot;<br><br>LICENSE =3D &quot;GPL=
v2+&quot;<br>LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3Da2c678=
cfd4a4d97135585cad908541c6&quot;<br>PE =3D &quot;1&quot;<br><br># We use th=
e revision in order to avoid having to fetch it from the<br># repo during p=
arse<br>SRCREV =3D &quot;f95ab1fb6e37f0601f397091bb011edf7a98b890&quot;<br>=
<br>SRC_URI =3D &quot; \<br>=C2=A0=C2=A0=C2=A0 git://<a href=3D"http://git.=
denx.de/u-boot.git">git.denx.de/u-boot.git</a> \<br>=C2=A0=C2=A0=C2=A0 file=
://0001-mmc-use-core-clock-frequency-in-bcm2835-sdhost.patch \<br>&quot;<br=
><br>S =3D &quot;${WORKDIR}/git&quot;<br><br></div><div><br></div><div>This=
 because the SRC_URI is in the u-boot-common_2018.03.inc file and this file=
 is included by the other u-boot recipes</div><div><br></div><div>So for us=
ing a bbappend I have to create 3 bbappend for each of the recipe</div><div=
><br></div><div><a href=3D"http://u-boot_2018.03.bb">u-boot_2018.03.bb</a>=
=C2=A0 <a href=3D"http://u-boot-fw-utils_2018.03.bb">u-boot-fw-utils_2018.0=
3.bb</a>=C2=A0 <a href=3D"http://u-boot-mkimage_2018.03.bb">u-boot-mkimage_=
2018.03.bb</a><br></div><div>Also why the .inc file has a version number?</=
div><div><br></div><div>I think that the best approach here would be to hav=
e only one recipe that provides the <br></div><div>u-book-mkimage u-boot-fw=
-utils and u-boot packages</div><div></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div><br></div><div>Best Re=
gards</div><div><br></div><div>Nicola Lunghi</div><div><br></div></div>

--0000000000001cc06f056cf70f89--

--0000000000001cc073056cf70f8b
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-u-boot_2018.03-raspberrypi-fix-wrong-SD-card-frequen.patch"
Content-Disposition: attachment; 
	filename="0001-u-boot_2018.03-raspberrypi-fix-wrong-SD-card-frequen.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jhkt3ced0

RnJvbSBjMGJkNGE1NTdlODRlZTY0Y2QzZTMxZjJmMDYwNTg1NzVlNGJjM2I1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBOaWNvbGEgTHVuZ2hpIDxuaWNvbGEubHVuZ2hpQGpjaS5jb20+
CkRhdGU6IFRodSwgMjQgTWF5IDIwMTggMTg6MDI6NTcgKzAxMDAKU3ViamVjdDogW1BBVENIXSB1
LWJvb3RfMjAxOC4wMzogcmFzcGJlcnJ5cGkgZml4IHdyb25nIFNEIGNhcmQgZnJlcXVlbmN5Cgp3
aXRoIHRoZSBjdXJyZW50IGZpcm13YXJlIGZyb20gYnJvYWRjb20gdS1ib290IGhhbmdzIG9uIGJv
b3QKYmVjYXVzZSBpdCBnZXQgYSB3cm9uZyBjbG9jayBmcmVxdWVuY3kgZm9yIHRoZSBzZGNhcmQu
CgpTZWUgdGhlIHBhdGNoIGZvciBkZXRhaWxzLiBUaGlzIHBhdGNoIGhhcyBhbHJlYWR5IGJlZW4g
YXBwbGllZAp1cHN0cmVhbSwgYnV0IHdlIG5lZWQgaXQgZm9yIHYyMDE4LjAzLgoKVXBzdHJlYW0t
U3RhdHVzOiBBY2NlcHRlZApbaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC84ODcy
NTUvXQoKU2lnbmVkLW9mZi1ieTogTmljb2xhIEx1bmdoaSA8bmljb2xhLmx1bmdoaUBqY2kuY29t
PgotLS0KIC4uLnJlLWNsb2NrLWZyZXF1ZW5jeS1pbi1iY20yODM1LXNkaG9zdC5wYXRjaCB8IDEw
OCArKysrKysrKysrKysrKysrKysKIC4uLi91LWJvb3QvdS1ib290LWNvbW1vbl8yMDE4LjAzLmlu
YyAgICAgICAgICB8ICAgNSArLQogMiBmaWxlcyBjaGFuZ2VkLCAxMTIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IG1ldGEvcmVjaXBlcy1ic3AvdS1ib290
L2ZpbGVzLzAwMDEtbW1jLXVzZS1jb3JlLWNsb2NrLWZyZXF1ZW5jeS1pbi1iY20yODM1LXNkaG9z
dC5wYXRjaAoKZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1ic3AvdS1ib290L2ZpbGVzLzAwMDEt
bW1jLXVzZS1jb3JlLWNsb2NrLWZyZXF1ZW5jeS1pbi1iY20yODM1LXNkaG9zdC5wYXRjaCBiL21l
dGEvcmVjaXBlcy1ic3AvdS1ib290L2ZpbGVzLzAwMDEtbW1jLXVzZS1jb3JlLWNsb2NrLWZyZXF1
ZW5jeS1pbi1iY20yODM1LXNkaG9zdC5wYXRjaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwLi5jNmE2MDkzOTA1Ci0tLSAvZGV2L251bGwKKysrIGIvbWV0YS9yZWNpcGVzLWJz
cC91LWJvb3QvZmlsZXMvMDAwMS1tbWMtdXNlLWNvcmUtY2xvY2stZnJlcXVlbmN5LWluLWJjbTI4
MzUtc2Rob3N0LnBhdGNoCkBAIC0wLDAgKzEsMTA4IEBACitGcm9tIDhhZTFmODI5ODgyMGExOTM4
MGJhZmMwN2FkNTU0YmQ2MjljYzI3YmUgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCitGcm9tOiBK
b25hdGhhbiBHcmF5IDxqc2dAanNnLmlkLmF1PgorRGF0ZTogU2F0LCAxNyBNYXIgMjAxOCAxNjox
NTo0OCArMTEwMAorU3ViamVjdDogW1BBVENIXSBtbWM6IHVzZSBjb3JlIGNsb2NrIGZyZXF1ZW5j
eSBpbiBiY20yODM1IHNkaG9zdAorCitJbiByYXNwYmVycnlwaS1maXJtd2FyZSA3ZmRjZDAwZTAw
YTQyYTFjOTFlOGJkNmY1ZWI4MzUyZmU5MzU4NTU3IGFuZAorbGF0ZXIgc3RhcnQuZWxmIG5vdyBz
ZXRzIHRoZSBFTU1DIGNsb2NrIHRvIDIwMCBNSHouCisKK0FjY29yZGluZyB0byBQaGlsIEVsd2Vs
bCBpbgoraHR0cHM6Ly9naXRodWIuY29tL3Jhc3BiZXJyeXBpL2Zpcm13YXJlL2lzc3Vlcy85NTMK
K3RoZSBTREhvc3QgY29udHJvbGxlciBzaGFyZXMgdGhlIGNvcmUvVlBVIGNsb2NrIGFuZCBkb2Vz
bid0IHVzZQordGhlIEVNTUMgY2xvY2suCisKK1VzZSB0aGUgY29yZSBjbG9jayBpZCB3aGVuIGRl
dGVybWluaW5nIHRoZSBmcmVxdWVuY3kgdG8gYWxsb3cKK1UtQm9vdCB0byB3b3JrIHdpdGggcmVj
ZW50IHZlcnNpb25zIG9mIHJhc3BiZXJyeXBpLWZpcm13YXJlLgorT3RoZXJ3aXNlIFUtQm9vdCBo
YW5ncyBhdDoKKworVS1Cb290IDIwMTguMDMgKE1hciAxNCAyMDE4IC0gMjA6MzY6MDAgKzExMDAp
CisKK0RSQU06ICA5NDggTWlCCitSUEkgMyBNb2RlbCBCICgweGEwMjA4MikKK01NQzogICBtbWNA
N2UyMDIwMDA6IDAsIHNkaGNpQDdlMzAwMDAwOiAxCitMb2FkaW5nIEVudmlyb25tZW50IGZyb20g
RkFULi4uCisKK1NpZ25lZC1vZmYtYnk6IEpvbmF0aGFuIEdyYXkgPGpzZ0Bqc2cuaWQuYXU+CitT
aWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgR3JhZiA8YWdyYWZAc3VzZS5kZT4KKy0tLQorIGFyY2gv
YXJtL21hY2gtYmNtMjgzeC9pbmNsdWRlL21hY2gvbXNnLmggfCAzICsrLQorIGFyY2gvYXJtL21h
Y2gtYmNtMjgzeC9tc2cuYyAgICAgICAgICAgICAgfCA0ICsrLS0KKyBkcml2ZXJzL21tYy9iY20y
ODM1X3NkaGNpLmMgICAgICAgICAgICAgIHwgMiArLQorIGRyaXZlcnMvbW1jL2JjbTI4MzVfc2Ro
b3N0LmMgICAgICAgICAgICAgfCAzICsrLQorIDQgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25z
KCspLCA1IGRlbGV0aW9ucygtKQorCitkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1iY20yODN4
L2luY2x1ZGUvbWFjaC9tc2cuaCBiL2FyY2gvYXJtL21hY2gtYmNtMjgzeC9pbmNsdWRlL21hY2gv
bXNnLmgKK2luZGV4IDQ3OGIxZjFjNTAuLmQwNTU0ODBiYTEgMTAwNjQ0CistLS0gYS9hcmNoL2Fy
bS9tYWNoLWJjbTI4M3gvaW5jbHVkZS9tYWNoL21zZy5oCisrKysgYi9hcmNoL2FybS9tYWNoLWJj
bTI4M3gvaW5jbHVkZS9tYWNoL21zZy5oCitAQCAtMTgsOSArMTgsMTAgQEAgaW50IGJjbTI4MzVf
cG93ZXJfb25fbW9kdWxlKHUzMiBtb2R1bGUpOworIC8qKgorICAqIGJjbTI4MzVfZ2V0X21tY19j
bG9jaygpIC0gZ2V0IHRoZSBmcmVxdWVuY3kgb2YgdGhlIE1NQyBjbG9jaworICAqCisrICogQGNs
b2NrX2lkOiBJRCBvZiBjbG9jayB0byBnZXQgZnJlcXVlbmN5IGZvcgorICAqIEByZXR1cm4gY2xv
Y2sgZnJlcXVlbmN5LCBvciAtdmUgb24gZXJyb3IKKyAgKi8KKy1pbnQgYmNtMjgzNV9nZXRfbW1j
X2Nsb2NrKHZvaWQpOworK2ludCBiY20yODM1X2dldF9tbWNfY2xvY2sodTMyIGNsb2NrX2lkKTsK
KyAKKyAvKioKKyAgKiBiY20yODM1X2dldF92aWRlb19zaXplKCkgLSBnZXQgdGhlIGN1cnJlbnQg
ZGlzcGxheSBzaXplCitkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vbWFjaC1iY20yODN4L21zZy5jIGIv
YXJjaC9hcm0vbWFjaC1iY20yODN4L21zZy5jCitpbmRleCA5MmU5M2FkOWU1Li5hZDI5ZjNiZTA5
IDEwMDY0NAorLS0tIGEvYXJjaC9hcm0vbWFjaC1iY20yODN4L21zZy5jCisrKysgYi9hcmNoL2Fy
bS9tYWNoLWJjbTI4M3gvbXNnLmMKK0BAIC02NSw3ICs2NSw3IEBAIGludCBiY20yODM1X3Bvd2Vy
X29uX21vZHVsZSh1MzIgbW9kdWxlKQorIAlyZXR1cm4gMDsKKyB9CisgCistaW50IGJjbTI4MzVf
Z2V0X21tY19jbG9jayh2b2lkKQorK2ludCBiY20yODM1X2dldF9tbWNfY2xvY2sodTMyIGNsb2Nr
X2lkKQorIHsKKyAJQUxMT0NfQ0FDSEVfQUxJR05fQlVGRkVSKHN0cnVjdCBtc2dfZ2V0X2Nsb2Nr
X3JhdGUsIG1zZ19jbGssIDEpOworIAlpbnQgcmV0OworQEAgLTc2LDcgKzc2LDcgQEAgaW50IGJj
bTI4MzVfZ2V0X21tY19jbG9jayh2b2lkKQorIAorIAlCQ00yODM1X01CT1hfSU5JVF9IRFIobXNn
X2Nsayk7CisgCUJDTTI4MzVfTUJPWF9JTklUX1RBRygmbXNnX2Nsay0+Z2V0X2Nsb2NrX3JhdGUs
IEdFVF9DTE9DS19SQVRFKTsKKy0JbXNnX2Nsay0+Z2V0X2Nsb2NrX3JhdGUuYm9keS5yZXEuY2xv
Y2tfaWQgPSBCQ00yODM1X01CT1hfQ0xPQ0tfSURfRU1NQzsKKysJbXNnX2Nsay0+Z2V0X2Nsb2Nr
X3JhdGUuYm9keS5yZXEuY2xvY2tfaWQgPSBjbG9ja19pZDsKKyAKKyAJcmV0ID0gYmNtMjgzNV9t
Ym94X2NhbGxfcHJvcChCQ00yODM1X01CT1hfUFJPUF9DSEFOLCAmbXNnX2Nsay0+aGRyKTsKKyAJ
aWYgKHJldCkgeworZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2JjbTI4MzVfc2RoY2kuYyBiL2Ry
aXZlcnMvbW1jL2JjbTI4MzVfc2RoY2kuYworaW5kZXggMzE1NzM1NGQyYS4uMDhiZGRkNDEwZSAx
MDA2NDQKKy0tLSBhL2RyaXZlcnMvbW1jL2JjbTI4MzVfc2RoY2kuYworKysrIGIvZHJpdmVycy9t
bWMvYmNtMjgzNV9zZGhjaS5jCitAQCAtMTgzLDcgKzE4Myw3IEBAIHN0YXRpYyBpbnQgYmNtMjgz
NV9zZGhjaV9wcm9iZShzdHJ1Y3QgdWRldmljZSAqZGV2KQorIAlpZiAoYmFzZSA9PSBGRFRfQURE
Ul9UX05PTkUpCisgCQlyZXR1cm4gLUVJTlZBTDsKKyAKKy0JcmV0ID0gYmNtMjgzNV9nZXRfbW1j
X2Nsb2NrKCk7CisrCXJldCA9IGJjbTI4MzVfZ2V0X21tY19jbG9jayhCQ00yODM1X01CT1hfQ0xP
Q0tfSURfRU1NQyk7CisgCWlmIChyZXQgPCAwKSB7CisgCQlkZWJ1ZygiJXM6IEZhaWxlZCB0byBz
ZXQgTU1DIGNsb2NrIChlcnI9JWQpXG4iLCBfX2Z1bmNfXywgcmV0KTsKKyAJCXJldHVybiByZXQ7
CitkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvYmNtMjgzNV9zZGhvc3QuYyBiL2RyaXZlcnMvbW1j
L2JjbTI4MzVfc2Rob3N0LmMKK2luZGV4IDFiZjUyYTMwMTkuLmJjY2QxODJlNTAgMTAwNjQ0Cist
LS0gYS9kcml2ZXJzL21tYy9iY20yODM1X3NkaG9zdC5jCisrKysgYi9kcml2ZXJzL21tYy9iY20y
ODM1X3NkaG9zdC5jCitAQCAtMzUsNiArMzUsNyBAQAorICNpbmNsdWRlIDxkbS5oPgorICNpbmNs
dWRlIDxtbWMuaD4KKyAjaW5jbHVkZSA8YXNtL2FyY2gvbXNnLmg+CisrI2luY2x1ZGUgPGFzbS9h
cmNoL21ib3guaD4KKyAjaW5jbHVkZSA8YXNtL3VuYWxpZ25lZC5oPgorICNpbmNsdWRlIDxsaW51
eC9jb21wYXQuaD4KKyAjaW5jbHVkZSA8bGludXgvaW8uaD4KK0BAIC05NDEsNyArOTQyLDcgQEAg
c3RhdGljIGludCBiY20yODM1X3Byb2JlKHN0cnVjdCB1ZGV2aWNlICpkZXYpCisgCWlmICghaG9z
dC0+aW9hZGRyKQorIAkJcmV0dXJuIC1FTk9NRU07CisgCistCWhvc3QtPm1heF9jbGsgPSBiY20y
ODM1X2dldF9tbWNfY2xvY2soKTsKKysJaG9zdC0+bWF4X2NsayA9IGJjbTI4MzVfZ2V0X21tY19j
bG9jayhCQ00yODM1X01CT1hfQ0xPQ0tfSURfQ09SRSk7CisgCisgCWJjbTI4MzVfYWRkX2hvc3Qo
aG9zdCk7CisgCistLSAKKzIuMTcuMAorCmRpZmYgLS1naXQgYS9tZXRhL3JlY2lwZXMtYnNwL3Ut
Ym9vdC91LWJvb3QtY29tbW9uXzIwMTguMDMuaW5jIGIvbWV0YS9yZWNpcGVzLWJzcC91LWJvb3Qv
dS1ib290LWNvbW1vbl8yMDE4LjAzLmluYwppbmRleCA4ZmZhZTM2NWE5Li4wNjU4YThhMzhiIDEw
MDY0NAotLS0gYS9tZXRhL3JlY2lwZXMtYnNwL3UtYm9vdC91LWJvb3QtY29tbW9uXzIwMTguMDMu
aW5jCisrKyBiL21ldGEvcmVjaXBlcy1ic3AvdS1ib290L3UtYm9vdC1jb21tb25fMjAxOC4wMy5p
bmMKQEAgLTksNiArOSw5IEBAIFBFID0gIjEiCiAjIHJlcG8gZHVyaW5nIHBhcnNlCiBTUkNSRVYg
PSAiZjk1YWIxZmI2ZTM3ZjA2MDFmMzk3MDkxYmIwMTFlZGY3YTk4Yjg5MCIKIAotU1JDX1VSSSA9
ICJnaXQ6Ly9naXQuZGVueC5kZS91LWJvb3QuZ2l0IgorU1JDX1VSSSA9ICIgXAorICAgIGdpdDov
L2dpdC5kZW54LmRlL3UtYm9vdC5naXQgXAorICAgIGZpbGU6Ly8wMDAxLW1tYy11c2UtY29yZS1j
bG9jay1mcmVxdWVuY3ktaW4tYmNtMjgzNS1zZGhvc3QucGF0Y2ggXAorIgogCiBTID0gIiR7V09S
S0RJUn0vZ2l0IgotLSAKMi4xNy4wCgo=

--0000000000001cc073056cf70f8b--
