Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BA4BE012F3
	for <poky@yoctoproject.org>; Sun, 30 Oct 2011 21:59:08 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwf10 with SMTP id 10so708610wwf.11
	for <poky@yoctoproject.org>; Sun, 30 Oct 2011 21:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=bH2GFXNCxhmvdhEDqRw10GfHCINuqZ96kL/S/B+hxLw=;
	b=es1UtmIedmWncIURV9YEdzCjyg57JzWXJ9SDbTi1h81fQO74auv8bl3z6c1nrRKEHL
	u5N0weiJfXhRun6B4n8+8BhRmnsB/PPEGCsznbxwSVCdgtiSNdXhQzusCRDE+Vj4QaPb
	Sa5sG4FGOQJFCIlWlI+YTV7Y+64wmycamtN8w=
MIME-Version: 1.0
Received: by 10.227.203.200 with SMTP id fj8mr17930137wbb.14.1320037147362;
	Sun, 30 Oct 2011 21:59:07 -0700 (PDT)
Received: by 10.180.81.65 with HTTP; Sun, 30 Oct 2011 21:59:06 -0700 (PDT)
Date: Mon, 31 Oct 2011 10:29:06 +0530
Message-ID: <CABRtByMThd2zob9Oxsk9uTy0yi3YcPDAiFgRM2n5vWkyjCXmYw@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: :configure: error: cannot find install-sh, install.sh, or shtool in ./build-scripts
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
X-List-Received-Date: Mon, 31 Oct 2011 04:59:09 -0000
X-Groupsio-MsgNum: 7108
Content-Type: multipart/mixed; boundary=00151758b1cc42451104b09119b6

--00151758b1cc42451104b09119b6
Content-Type: multipart/alternative; boundary=00151758b1cc42450904b09119b4

--00151758b1cc42450904b09119b4
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying the build for XBMC 10.10 which depends on libsdl-mixer. I'm
attaching the recipe of libsdl-mixer
and the error log. I'm getting the error as below :

| configure: loading site script /home/meta/site/endian-little
| configure: loading site script /home/meta/site/common-glibc
| configure: loading site script /home/meta/site/ix86-common
| configure: loading site script /home/meta/site/common
| configure: loading site script
/home/build/tmp/sysroots/fishriver/usr/share/i586-poky-linux_config_site.d/zlib_config
| configure: loading site script
/home/build/tmp/sysroots/fishriver/usr/share/i586-poky-linux_config_site.d/eglibc_config
| configure: error: cannot find install-sh, install.sh, or shtool in
./build-scripts
| FATAL: oe_runconf failed
| ERROR: Function 'do_configure' failed (see
/home/build/tmp/work/atom-poky-linux/libsdl-mixer-1.2.11-r0/temp/log.do_configure.5111
for further information)
NOTE: package libsdl-mixer-1.2.11-r0: task do_configure: Failed


I'm pulling for the Fishriver machine . My host machine is Ubuntu 10.10 ,64
bit .
Can someone help me out of this problem ?
Thanks & Regards,
Sonu.

--00151758b1cc42450904b09119b4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span class=3D"Apple-style-span" style=3D"font-family: arial, sans-serif; f=
ont-size: 13px; background-color: rgb(255, 255, 255); ">Hi,<div><br></div><=
div>I&#39;m trying the build for XBMC 10.10 which depends on libsdl-mixer. =
I&#39;m attaching the recipe of libsdl-mixer</div>
</span><span class=3D"Apple-style-span" style=3D"font-family: arial, sans-s=
erif; font-size: 13px; background-color: rgb(255, 255, 255); ">and the erro=
r log. I&#39;m getting the error as below :</span><span class=3D"Apple-styl=
e-span" style=3D"font-family: arial, sans-serif; font-size: 13px; backgroun=
d-color: rgb(255, 255, 255); "><div>
<br></div><div><div><div>| configure: loading site script /home/meta/site/e=
ndian-little</div><div>| configure: loading site script /home/meta/site/com=
mon-glibc</div><div>| configure: loading site script /home/meta/site/ix86-c=
ommon</div>
<div>| configure: loading site script /home/meta/site/common</div><div>| co=
nfigure: loading site script /home/build/tmp/sysroots/fishriver/usr/share/i=
586-poky-linux_config_site.d/zlib_config</div><div>| configure: loading sit=
e script /home/build/tmp/sysroots/fishriver/usr/share/i586-poky-linux_confi=
g_site.d/eglibc_config</div>
<div>| configure: error: cannot find install-sh, install.sh, or shtool in .=
/build-scripts</div><div>| FATAL: oe_runconf failed</div><div>| ERROR: Func=
tion &#39;do_configure&#39; failed (see /home/build/tmp/work/atom-poky-linu=
x/libsdl-mixer-1.2.11-r0/temp/log.do_configure.5111 for further information=
)</div>
<div>NOTE: package libsdl-mixer-1.2.11-r0: task do_configure: Failed</div><=
/div></div><div><br></div><div><br></div><div><span style=3D"color: rgb(69,=
 69, 69); font-family: Arial, Helvetica, sans-serif; font-size: 12px; "><sp=
an style=3D"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size:=
 13px; font-style: normal; font-variant: normal; letter-spacing: normal; li=
ne-height: normal; text-indent: 0px; text-transform: none; white-space: nor=
mal; word-spacing: 0px; background-color: rgb(255, 255, 255); "><span style=
=3D"font-family: &#39;Times New Roman&#39;; white-space: pre-wrap; backgrou=
nd-color: rgb(255, 255, 255); font-size: 16px; ">I&#39;m pulling for the Fi=
shriver machine . My host machine is Ubuntu 10.10 ,64 bit . </span><div>
<font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D"white-sp=
ace: pre-wrap; ">Can someone help me out of this problem ? </span></font></=
div><div><font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D=
"white-space: pre-wrap; ">
</span></font></div><div><font face=3D"&#39;Times New Roman&#39;" size=3D"3=
"><span style=3D"white-space: pre-wrap; ">Thanks &amp; Regards,</span></fon=
t></div><div><font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span styl=
e=3D"white-space: pre-wrap; ">Sonu.</span></font></div>
</span></span></div></span>

--00151758b1cc42450904b09119b4--

--00151758b1cc42451104b09119b6
Content-Type: application/octet-stream; name="libsdl-mixer_1.2.11.bb"
Content-Disposition: attachment; filename="libsdl-mixer_1.2.11.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_guezxfd80

REVTQ1JJUFRJT04gPSAiU2ltcGxlIERpcmVjdE1lZGlhIExheWVyIG1peGVyIGxpYnJhcnkuIgpT
RUNUSU9OID0gImxpYnMiCkRFUEVORFMgPSAidmlydHVhbC9saWJzZGwgZmxhYyBsaWJtaWttb2Qg
bGlidm9yYmlzICAke0BiYXNlX2NvbmRpdGlvbmFsKCdFTlRFUlBSSVNFX0RJU1RSTycsICcxJywg
JycsICdsaWJtYWQnLCBkKX0iCkxJQ0VOU0UgPSAiTEdQTHYyLjEiCkxJQ19GSUxFU19DSEtTVU0g
PSAiZmlsZTovL0NPUFlJTkc7bWQ1PTI3ODE4Y2Q3ZmQ4Mzg3N2E4ZTNlZjgyYjgyNzk4ZWY0IgoK
U1JDX1VSSSA9ICJodHRwOi8vd3d3LmxpYnNkbC5vcmcvcHJvamVjdHMvU0RMX21peGVyL3JlbGVh
c2UvU0RMX21peGVyLSR7UFZ9LnRhci5neiBcCiAgICAgICAgICAgZmlsZTovL2ZpeC1mbGFjLW1h
ZG5lc3MuZGlmZiBcCgkgICBmaWxlOi8vY29uZmlndXJlLnBhdGNoIFwKICAgICAgICAgICIKU1JD
X1VSSVttZDVzdW1dID0gIjY1YWRhM2Q5OTdmZTg1MTA5MTkxYTVmYjA4M2YyNDhjIgpTUkNfVVJJ
W3NoYTI1NnN1bV0gPSAiODYxNDVhYzM5Y2FjNmQyYzYxNjljMjI2ZjkzNzY0OGRjYTVlODlkY2Q4
Mjg3NTE3NjNkZDE3NGZhOWFmOWNmOSIKClMgPSAiJHtXT1JLRElSfS9TRExfbWl4ZXItJHtQVn0i
Cgppbmhlcml0IGF1dG90b29scwoKRVhUUkFfQVVUT1JFQ09ORiArPSAiLS1pbmNsdWRlPWFjaW5j
bHVkZSIKRVhUUkFfT0VDT05GID0gIi0tZGlzYWJsZS1tdXNpYy1tcDMgLS1lbmFibGUtbXVzaWMt
b2dnIC0tZW5hYmxlLW11c2ljLW9nZy10cmVtb3IgJHtAYmFzZV9jb25kaXRpb25hbCgnRU5URVJQ
UklTRV9ESVNUUk8nLCAnMScsICcnLCAnLS1lbmFibGUtbXVzaWMtbXAzLW1hZC1ncGwnLCBkKX0g
TElCUz0tTCR7U1RBR0lOR19MSUJESVJ9IgoKZG9fY29uZmlndXJlICgpIHsKCSMgUmVtb3ZlIG9s
ZCBsaWJ0b29sIG1hY3Jvcy4KCU1BQ1JPUz0ibGlidG9vbC5tNCBsdH5vYnNvbGV0ZS5tNCBsdG9w
dGlvbnMubTQgbHRzdWdhci5tNCBsdHZlcnNpb24ubTQiCglmb3IgaSBpbiAke01BQ1JPU307IGRv
CgkJcm0gLWYgYWNpbmNsdWRlLyRpCglkb25lCgljcCBidWlsZC1zY3JpcHRzLyogLiB8fCB0cnVl
CglybSAtcmYgYnVpbGQtc2NyaXB0cy8KCWV4cG9ydCBTWVNST09UPSRQS0dfQ09ORklHX1NZU1JP
T1RfRElSCgoJYXV0b3Rvb2xzX2RvX2NvbmZpZ3VyZQoKCXJtIGNvbmZpZy5sb2cKCWZvciBpIGlu
ICQoZmluZCAtbmFtZSAiTWFrZWZpbGUiKSA7IGRvCgkJc2VkIC1pIC1lICdzOi1ML3Vzci9saWI6
LUwke1NUQUdJTkdfTElCRElSfTpnJyAkaQoJZG9uZQoKfQoK

--00151758b1cc42451104b09119b6
Content-Type: application/octet-stream; name="log .do_configure.2254"
Content-Disposition: attachment; filename="log .do_configure.2254"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_guezzwim1

Tk9URTogcGFja2FnZSBsaWJzZGwtbWl4ZXItMS4yLjExLXIwOiB0YXNrIGRvX2NvbmZpZ3VyZTog
U3RhcnRlZApFUlJPUjogJy9ob21lL3Bva3kvbWV0YS9saWJzZGwvbGlic2RsLW1peGVyXzEuMi4x
MS5iYicgZmFpbGVkCkVSUk9SOiBGdW5jdGlvbiAnZG9fY29uZmlndXJlJyBmYWlsZWQgKHNlZSAv
aG9tZS9wb2t5L2J1aWxkL3RtcC93b3JrL2F0b20tcG9reS1saW51eC9saWJzZGwtbWl4ZXItMS4y
LjExLXIwL3RlbXAvbG9nLmRvX2NvbmZpZ3VyZS4yMjU0IGZvciBmdXJ0aGVyIGluZm9ybWF0aW9u
KQpFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3JlZCBpbjogL2hvbWUvcG9reS9idWlsZC90
bXAvd29yay9hdG9tLXBva3ktbGludXgvbGlic2RsLW1peGVyLTEuMi4xMS1yMC90ZW1wL2xvZy5k
b19jb25maWd1cmUuMjI1NApMb2cgZGF0YSBmb2xsb3dzOgp8IGNwOiBjYW5ub3Qgc3RhdCBgYnVp
bGQtc2NyaXB0cy8qJzogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQp8IGF1dG9tYWtlIChHTlUg
YXV0b21ha2UpIDEuMTEuMQp8IENvcHlyaWdodCAoQykgMjAwOSBGcmVlIFNvZnR3YXJlIEZvdW5k
YXRpb24sIEluYy4KfCBMaWNlbnNlIEdQTHYyKzogR05VIEdQTCB2ZXJzaW9uIDIgb3IgbGF0ZXIg
PGh0dHA6Ly9nbnUub3JnL2xpY2Vuc2VzL2dwbC0yLjAuaHRtbD4KfCBUaGlzIGlzIGZyZWUgc29m
dHdhcmU6IHlvdSBhcmUgZnJlZSB0byBjaGFuZ2UgYW5kIHJlZGlzdHJpYnV0ZSBpdC4KfCBUaGVy
ZSBpcyBOTyBXQVJSQU5UWSwgdG8gdGhlIGV4dGVudCBwZXJtaXR0ZWQgYnkgbGF3Lgp8IAp8IFdy
aXR0ZW4gYnkgVG9tIFRyb21leSA8dHJvbWV5QHJlZGhhdC5jb20+CnwgICAgICAgIGFuZCBBbGV4
YW5kcmUgRHVyZXQtTHV0eiA8YWRsQGdudS5vcmc+Lgp8IEFVVE9WIGlzIDEuMTEKfCBOT1RFOiBF
eGVjdXRpbmcgYXV0b3JlY29uZiAtLXZlcmJvc2UgLS1pbnN0YWxsIC0tZm9yY2UgLS1leGNsdWRl
PWF1dG9wb2ludCAtLWluY2x1ZGU9YWNpbmNsdWRlIC1JIC9ob21lL3Bva3kvYnVpbGQvdG1wL3dv
cmsvYXRvbS1wb2t5LWxpbnV4L2xpYnNkbC1taXhlci0xLjIuMTEtcjAvU0RMX21peGVyLTEuMi4x
MS9hY2luY2x1ZGUvIC1JL2hvbWUvcG9reS9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4
L3Vzci9zaGFyZS9hY2xvY2FsLTEuMTEgLUkgL2hvbWUvcG9reS9idWlsZC90bXAvc3lzcm9vdHMv
ZmlzaHJpdmVyL3Vzci9zaGFyZS9hY2xvY2FsCnwgYXV0b3JlY29uZjogRW50ZXJpbmcgZGlyZWN0
b3J5IGAuJwp8IGF1dG9yZWNvbmY6IGNvbmZpZ3VyZS5pbjogbm90IHVzaW5nIEdldHRleHQKfCBh
dXRvcmVjb25mOiBydW5uaW5nOiBhY2xvY2FsIC1JIGFjaW5jbHVkZSAtSSAvaG9tZS9wb2t5L2J1
aWxkL3RtcC93b3JrL2F0b20tcG9reS1saW51eC9saWJzZGwtbWl4ZXItMS4yLjExLXIwL1NETF9t
aXhlci0xLjIuMTEvYWNpbmNsdWRlLyAtSSAvaG9tZS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94
ODZfNjQtbGludXgvdXNyL3NoYXJlL2FjbG9jYWwtMS4xMSAtSSAvaG9tZS9wb2t5L2J1aWxkL3Rt
cC9zeXNyb290cy9maXNocml2ZXIvdXNyL3NoYXJlL2FjbG9jYWwgLUkgYWNpbmNsdWRlIC1JIC9o
b21lL2J1aWxkL3RtcC93b3JrL2F0b20tcG9reS1saW51eC9saWJzZGwtbWl4ZXItMS4yLjExLXIw
L1NETF9taXhlci0xLjIuMTEvYWNpbmNsdWRlLyAtSSAvaG9tZS9wb2t5L2J1aWxkL3RtcC9zeXNy
b290cy94ODZfNjQtbGludXgvdXNyL3NoYXJlL2FjbG9jYWwtMS4xMSAtSSAvaG9tZS9wb2t5L2J1
aWxkL3RtcC9zeXNyb290cy9maXNocml2ZXIvdXNyL3NoYXJlL2FjbG9jYWwgLS1mb3JjZQp8IGF1
dG9yZWNvbmY6IGNvbmZpZ3VyZS5pbjogdHJhY2luZwp8IGF1dG9yZWNvbmY6IHJ1bm5pbmc6IGxp
YnRvb2xpemUgLS1jb3B5IC0tZm9yY2UKfCBsaWJ0b29saXplOiBwdXR0aW5nIGF1eGlsaWFyeSBm
aWxlcyBpbiBgLicuCnwgbGlidG9vbGl6ZTogY29weWluZyBmaWxlIGAuL2x0bWFpbi5zaCcKfCBs
aWJ0b29saXplOiBDb25zaWRlciBhZGRpbmcgYEFDX0NPTkZJR19NQUNST19ESVIoW200XSknIHRv
IGNvbmZpZ3VyZS5pbiBhbmQKfCBsaWJ0b29saXplOiByZXJ1bm5pbmcgbGlidG9vbGl6ZSwgdG8g
a2VlcCB0aGUgY29ycmVjdCBsaWJ0b29sIG1hY3JvcyBpbi10cmVlLgp8IGxpYnRvb2xpemU6IENv
bnNpZGVyIGFkZGluZyBgLUkgbTQnIHRvIEFDTE9DQUxfQU1GTEFHUyBpbiBNYWtlZmlsZS5hbS4K
fCBhdXRvcmVjb25mOiBydW5uaW5nOiAvaG9tZS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZf
NjQtbGludXgvdXNyL2Jpbi9hdXRvY29uZiAtLWluY2x1ZGU9YWNpbmNsdWRlIC0taW5jbHVkZT0v
aG9tZS9wb2t5L2J1aWxkL3RtcC93b3JrL2F0b20tcG9reS1saW51eC9saWJzZGwtbWl4ZXItMS4y
LjExLXIwL1NETF9taXhlci0xLjIuMTEvYWNpbmNsdWRlLyAtLWluY2x1ZGU9L2hvbWUvcG9reS9i
dWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vzci9zaGFyZS9hY2xvY2FsLTEuMTEgLS1p
bmNsdWRlPS9ob21lL3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL2Zpc2hyaXZlci91c3Ivc2hhcmUv
YWNsb2NhbCAtLWZvcmNlIC0td2FybmluZ3M9Y3Jvc3MKfCBhdXRvcmVjb25mOiBjb25maWd1cmUu
aW46IG5vdCB1c2luZyBBdXRvaGVhZGVyCnwgYXV0b3JlY29uZjogY29uZmlndXJlLmluOiBub3Qg
dXNpbmcgQXV0b21ha2UKfCBhdXRvcmVjb25mOiBydW5uaW5nOiBnbnUtY29uZmlnaXplCnwgUGVy
bCBsaWIgdmVyc2lvbiAoNS4xMi4yKSBkb2Vzbid0IG1hdGNoIGV4ZWN1dGFibGUgdmVyc2lvbiAo
djUuMTAuMSkgYXQgL2hvbWUvcG9reS9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4L3Vz
ci9saWIvcGVybC81LjEyLjIvQ29uZmlnLnBtIGxpbmUgNTAuCnwgQ29tcGlsYXRpb24gZmFpbGVk
IGluIHJlcXVpcmUgYXQgL2hvbWUvcG9reS9idWlsZC90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4
L3Vzci9saWIvcGVybC81LjEyLjIvRmlsZS9Db3B5LnBtIGxpbmUgMTQuCnwgQkVHSU4gZmFpbGVk
LS1jb21waWxhdGlvbiBhYm9ydGVkIGF0IC9ob21lL3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3g4
Nl82NC1saW51eC91c3IvbGliL3BlcmwvNS4xMi4yL0ZpbGUvQ29weS5wbSBsaW5lIDE0Lgp8IENv
bXBpbGF0aW9uIGZhaWxlZCBpbiByZXF1aXJlIGF0IC9ob21lL3Bva3kvYnVpbGQvdG1wL3N5c3Jv
b3RzL3g4Nl82NC1saW51eC91c3Ivc2hhcmUvYXV0b2NvbmYvQXV0b200dGUvRmlsZVV0aWxzLnBt
IGxpbmUgMTY2Lgp8IEJFR0lOIGZhaWxlZC0tY29tcGlsYXRpb24gYWJvcnRlZCBhdCAvaG9tZS9w
b2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL3NoYXJlL2F1dG9jb25mL0F1
dG9tNHRlL0ZpbGVVdGlscy5wbSBsaW5lIDE2Ni4KfCBDb21waWxhdGlvbiBmYWlsZWQgaW4gcmVx
dWlyZSBhdCAvaG9tZS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2Jp
bi9hdXRvbTR0ZSBsaW5lIDQxLgp8IEJFR0lOIGZhaWxlZC0tY29tcGlsYXRpb24gYWJvcnRlZCBh
dCAvaG9tZS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy94ODZfNjQtbGludXgvdXNyL2Jpbi9hdXRv
bTR0ZSBsaW5lIDQxLgp8IGF1dG9yZWNvbmY6IExlYXZpbmcgZGlyZWN0b3J5IGAuJwp8IE5PVEU6
IFJ1bm5pbmcgL2hvbWUvcG9reS9idWlsZC90bXAvd29yay9hdG9tLXBva3ktbGludXgvbGlic2Rs
LW1peGVyLTEuMi4xMS1yMC9TRExfbWl4ZXItMS4yLjExL2NvbmZpZ3VyZSAJCSAtLWJ1aWxkPXg4
Nl82NC1saW51eCAJCSAgLS1ob3N0PWk1ODYtcG9reS1saW51eCAJCSAgLS10YXJnZXQ9aTU4Ni1w
b2t5LWxpbnV4IAkJICAtLXByZWZpeD0vdXNyIAkJICAtLWV4ZWNfcHJlZml4PS91c3IgCQkgIC0t
YmluZGlyPS91c3IvYmluIAkJICAtLXNiaW5kaXI9L3Vzci9zYmluIAkJICAtLWxpYmV4ZWNkaXI9
L3Vzci9saWJleGVjIAkJICAtLWRhdGFkaXI9L3Vzci9zaGFyZSAJCSAgLS1zeXNjb25mZGlyPS9l
dGMgCQkgIC0tc2hhcmVkc3RhdGVkaXI9L2NvbSAJCSAgLS1sb2NhbHN0YXRlZGlyPS92YXIgCQkg
IC0tbGliZGlyPS91c3IvbGliIAkJICAtLWluY2x1ZGVkaXI9L3Vzci9pbmNsdWRlIAkJICAtLW9s
ZGluY2x1ZGVkaXI9L3Vzci9pbmNsdWRlIAkJICAtLWluZm9kaXI9L3Vzci9zaGFyZS9pbmZvIAkg
IC0tbWFuZGlyPS91c3Ivc2hhcmUvbWFuIAkJICAtLXdpdGgtbGlidG9vbC1zeXNyb290PS9ob21l
L3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL2Zpc2hyaXZlciAtLWRpc2FibGUtbXVzaWMtbXAzIC0t
ZW5hYmxlLW11c2ljLW9nZyAtLWVuYWJsZS1tdXNpYy1vZ2ctdHJlbW9yIC0tZW5hYmxlLW11c2lj
LW1wMy1tYWQtZ3BsIExJQlM9LUwvaG9tZS9zY3QvbG9naS9naWdhYnl0ZS9wb2t5X2dpZ2FieXRl
XzE2U2VwMjAxMS9idWlsZC90bXAvc3lzcm9vdHMvZmlzaHJpdmVyL3Vzci9saWIgLi4uCnwgY29u
ZmlndXJlOiBsb2FkaW5nIHNpdGUgc2NyaXB0IC9ob21lL3Bva3kvbWV0YS9zaXRlL2VuZGlhbi1s
aXR0bGUKfCBjb25maWd1cmU6IGxvYWRpbmcgc2l0ZSBzY3JpcHQgL2hvbWUvcG9reS9tZXRhL3Np
dGUvY29tbW9uLWdsaWJjCnwgY29uZmlndXJlOiBsb2FkaW5nIHNpdGUgc2NyaXB0IC9ob21lL3Bv
a3kvbWV0YS9zaXRlL2l4ODYtY29tbW9uCnwgY29uZmlndXJlOiBsb2FkaW5nIHNpdGUgc2NyaXB0
IC9ob21lL3Bva3kvbWV0YS9zaXRlL2NvbW1vbgp8IGNvbmZpZ3VyZTogbG9hZGluZyBzaXRlIHNj
cmlwdCAvaG9tZS9wb2t5L2J1aWxkL3RtcC9zeXNyb290cy9maXNocml2ZXIvdXNyL3NoYXJlL2k1
ODYtcG9reS1saW51eF9jb25maWdfc2l0ZS5kL3psaWJfY29uZmlnCnwgY29uZmlndXJlOiBsb2Fk
aW5nIHNpdGUgc2NyaXB0IC9ob21lL3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL2Zpc2hyaXZlci91
c3Ivc2hhcmUvaTU4Ni1wb2t5LWxpbnV4X2NvbmZpZ19zaXRlLmQvZWdsaWJjX2NvbmZpZwp8IGNv
bmZpZ3VyZTogZXJyb3I6IGNhbm5vdCBmaW5kIGluc3RhbGwtc2gsIGluc3RhbGwuc2gsIG9yIHNo
dG9vbCBpbiAuL2J1aWxkLXNjcmlwdHMKfCBGQVRBTDogb2VfcnVuY29uZiBmYWlsZWQKfCBFUlJP
UjogRnVuY3Rpb24gJ2RvX2NvbmZpZ3VyZScgZmFpbGVkIChzZWUgL2hvbWUvcG9reS9idWlsZC90
bXAvd29yay9hdG9tLXBva3ktbGludXgvbGlic2RsLW1peGVyLTEuMi4xMS1yMC90ZW1wL2xvZy5k
b19jb25maWd1cmUuMjI1NCBmb3IgZnVydGhlciBpbmZvcm1hdGlvbikKTk9URTogcGFja2FnZSBs
aWJzZGwtbWl4ZXItMS4yLjExLXIwOiB0YXNrIGRvX2NvbmZpZ3VyZTogRmFpbGVkCkVSUk9SOiBU
YXNrIDEwNTIgKC9ob21lL3Bva3kvbWV0YS9yZWNpcGVzL2xpYnNkbC9saWJzZGwtbWl4ZXJfMS4y
LjExLmJiLCBkb19jb25maWd1cmUpIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScK

--00151758b1cc42451104b09119b6--
