Return-Path: <vishwasonu2000@gmail.com>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F564E006B4
	for <poky@yoctoproject.org>; Thu, 27 Oct 2011 05:07:25 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wwn22 with SMTP id 22so760760wwn.5
	for <poky@yoctoproject.org>; Thu, 27 Oct 2011 05:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=TIX7/19zOpXWoAarcvsODOIMGh/jaFmn73Til3bFUDI=;
	b=SROt8kx5ZUGvbaslKWDKHRkpr2q35szZ7+MtQ3dyQVDPDpk3bpn5s4SBTKuOhwlUaU
	bhsBh2OBg/u/DvFzzvbCMiA4MI8ACOTdM+HUtpahs0a9kA4MCQ8BsfJrlj1/AIDXuXS+
	warX7bUQvxy6g3hRyHvVMNECJpkcTkwv7MfFc=
MIME-Version: 1.0
Received: by 10.227.203.200 with SMTP id fj8mr18132993wbb.14.1319717244201;
	Thu, 27 Oct 2011 05:07:24 -0700 (PDT)
Received: by 10.180.81.65 with HTTP; Thu, 27 Oct 2011 05:07:24 -0700 (PDT)
Date: Thu, 27 Oct 2011 17:37:24 +0530
Message-ID: <CABRtByMpDT-20u=_-1zF+VqKJYA5nVq9UVVcsnYRZovTMguJ=A@mail.gmail.com>
From: sonu vishwakarma <vishwasonu2000@gmail.com>
To: poky@yoctoproject.org
Subject: package libsdl-mixer-1.2.11-r0: task do_configure: Failed
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
X-List-Received-Date: Thu, 27 Oct 2011 12:07:26 -0000
X-Groupsio-MsgNum: 7103
Content-Type: multipart/mixed; boundary=00151758b1cc8b73af04b0469dac

--00151758b1cc8b73af04b0469dac
Content-Type: multipart/alternative; boundary=00151758b1cc8b73a704b0469daa

--00151758b1cc8b73a704b0469daa
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I'm trying the build for XBMC 10.05 which depends on libsdl-mixer. I'm
attaching the recipe of libsdl-mixer
I'm getting the error as below :

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

With Regards,
Sonu

--00151758b1cc8b73a704b0469daa
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<span class=3D"Apple-style-span" style=3D"font-family: arial, sans-serif; f=
ont-size: 13px; background-color: rgb(255, 255, 255); ">Hi,<div><br></div><=
div>I&#39;m trying the build for XBMC 10.05 which depends on libsdl-mixer. =
I&#39;m attaching the recipe of libsdl-mixer</div>
<div>I&#39;m getting the error as below :</div><div><br></div><div><div><di=
v>| configure: loading site script /home/meta/site/endian-little</div><div>=
| configure: loading site script /home/meta/site/common-glibc</div><div>
| configure: loading site script /home/meta/site/ix86-common</div><div>| co=
nfigure: loading site script /home/meta/site/common</div><div>| configure: =
loading site script /home/build/tmp/sysroots/fishriver/usr/share/i586-poky-=
linux_config_site.d/zlib_config</div>
<div>| configure: loading site script /home/build/tmp/sysroots/fishriver/us=
r/share/i586-poky-linux_config_site.d/eglibc_config</div><div>| configure: =
error: cannot find install-sh, install.sh, or shtool in ./build-scripts</di=
v>
<div>| FATAL: oe_runconf failed</div><div>| ERROR: Function &#39;do_configu=
re&#39; failed (see /home/build/tmp/work/atom-poky-linux/libsdl-mixer-1.2.1=
1-r0/temp/log.do_configure.5111 for further information)</div><div>NOTE: pa=
ckage libsdl-mixer-1.2.11-r0: task do_configure: Failed</div>
</div></div><div><br></div><div><br></div><div><span style=3D"color: rgb(69=
, 69, 69); font-family: Arial, Helvetica, sans-serif; font-size: 12px; "><s=
pan style=3D"color: rgb(0, 0, 0); font-family: arial, sans-serif; font-size=
: 13px; font-style: normal; font-variant: normal; letter-spacing: normal; l=
ine-height: normal; text-indent: 0px; text-transform: none; white-space: no=
rmal; word-spacing: 0px; background-color: rgb(255, 255, 255); "><span styl=
e=3D"font-family: &#39;Times New Roman&#39;; white-space: pre-wrap; backgro=
und-color: rgb(255, 255, 255); font-size: 16px; ">I&#39;m pulling for the F=
ishriver machine . My host machine is Ubuntu 10.10 ,64 bit . </span><div>
<font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D"white-sp=
ace: pre-wrap; ">Can someone help me out of this problem ? </span></font></=
div><div><font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D=
"white-space: pre-wrap; "><br>

</span></font></div><div><font face=3D"&#39;Times New Roman&#39;" size=3D"3=
"><span style=3D"white-space: pre-wrap; ">With Regards,</span></font></div>=
<div><font face=3D"&#39;Times New Roman&#39;" size=3D"3"><span style=3D"whi=
te-space: pre-wrap; ">Sonu</span></font></div>
</span></span></div></span>

--00151758b1cc8b73a704b0469daa--

--00151758b1cc8b73af04b0469dac
Content-Type: application/octet-stream; name="libsdl-mixer_1.2.11.bb"
Content-Disposition: attachment; filename="libsdl-mixer_1.2.11.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_gu9pfv900

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

--00151758b1cc8b73af04b0469dac--
