Return-Path: <sujith.h@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1760E00344
	for <poky@yoctoproject.org>; Tue, 11 Sep 2012 00:07:30 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so311384obb.35
	for <poky@yoctoproject.org>; Tue, 11 Sep 2012 00:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=n7hCZXBwDhz6NLG/ib8C/QS2mDU+jJZt0dx9AsfdgM4=;
	b=pC/3MDGUQ8n/ZqGig0aCSn2dJYHDMwiL4ckiQi1YaGYSFJzjMXUl0g8lWUctt6kWDc
	NsveEA0etcB3hYTqR/wmMvHPKzS/3VkU9OXMQAdYJLXfB82tArTazFhh7K/LZGi/hn5d
	G4CE5AHXoDWyv47UEMo91h7hXCkQUbJIwlhtmL2Z+ZNyqZcXOK5F2wGyZU1VKYUJQl4e
	WjJAr+IysvmlxSNn/nY9DccxyiLstF0tbrD6iF3fKjG9+/w/Upi2mvE+1rqmoz0TLcwf
	jLWLEnrkiLK5tjpz7kqTZEEVaegAJRpPLk77z8AfnVw7B5/x0zsVLQahiG4yKuhs6+hm
	Bx8Q==
Received: by 10.60.22.196 with SMTP id g4mr17130693oef.95.1347347250291; Tue,
	11 Sep 2012 00:07:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.131 with HTTP; Tue, 11 Sep 2012 00:07:09 -0700 (PDT)
From: sujith h <sujith.h@gmail.com>
Date: Tue, 11 Sep 2012 12:37:09 +0530
Message-ID: <CADyYWL=24p+Te_AM2c5Y3BPmRiDfwXwiFxH0VPwhbMsbDohdeA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Patch for DLT-viewer
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
X-List-Received-Date: Tue, 11 Sep 2012 07:07:31 -0000
X-Groupsio-MsgNum: 8274
Content-Type: multipart/mixed; boundary=e89a8fb203883e236b04c967ba07

--e89a8fb203883e236b04c967ba07
Content-Type: multipart/alternative; boundary=e89a8fb203883e235904c967ba05

--e89a8fb203883e235904c967ba05
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

I had created the patch for DLT-viewer 2.6 version. It was created in the
meta-ivi repo. I saw that DLT-daemo recipe is there. Hence thought of
creating DLT-viewer patch. Please let me know if this is not the mailing
list for
posting the patch for meta-ivi.

Thanks,

Sujtih H

--=20
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D
Bangalore
<Project>Contributor to KDE project
http://fci.wikia.com/wiki/Anti-DRM-Campaign
<Blog> http://sujithh.info

--e89a8fb203883e235904c967ba05
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I had created the patch for DLT-viewer 2.6 version. =
It was created in the</div><div>meta-ivi repo. I saw that DLT-daemo recipe =
is there. Hence thought of</div><div>creating DLT-viewer patch. Please let =
me know if this is not the mailing list for</div>

<div>posting the patch for meta-ivi.=C2=A0</div><div><br></div><div>Thanks,=
</div><div><br></div><div>Sujtih H<br clear=3D"all"><div><br></div>-- <br>=
=E0=B4=B8=E0=B5=81=E0=B4=9C=E0=B4=BF=E0=B4=A4=E0=B5=8D =E0=B4=B9=E0=B4=B0=
=E0=B4=BF=E0=B4=A6=E0=B4=BE=E0=B4=B8=E0=B4=A8=E0=B5=8D<br>Bangalore<br>&lt;=
Project&gt;Contributor to KDE project<br><a href=3D"http://fci.wikia.com/wi=
ki/Anti-DRM-Campaign" target=3D"_blank">http://fci.wikia.com/wiki/Anti-DRM-=
Campaign</a><br>

&lt;Blog&gt; <a href=3D"http://sujithh.info" target=3D"_blank">http://sujit=
hh.info</a><br><br>
</div>

--e89a8fb203883e235904c967ba05--

--e89a8fb203883e236b04c967ba07
Content-Type: application/octet-stream; 
	name="0001-Adding-DLT-viewer-into-the-repository.patch"
Content-Disposition: attachment; 
	filename="0001-Adding-DLT-viewer-into-the-repository.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_h6ynpa2i0

RnJvbSBlOWUxNzc1ODE5OGFjMzBhOTM5NGIzMzlhNTZmOTNlOWJmNDA5NGQxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTdWppdGggSCA8c3VqaXRoLmhAZ21haWwuY29tPgpEYXRlOiBN
b24sIDMgU2VwIDIwMTIgMTI6NDU6MDQgKzA1MzAKU3ViamVjdDogW1BBVENIXSBBZGRpbmcgRExU
LXZpZXdlciBpbnRvIHRoZSByZXBvc2l0b3J5LgoKRExULXZpZXdlciBjYW4gc2VuZCBjb250cm9s
IG1lc3NhZ2VzIHRvIHRoZSBETFQtZGFlbW9uLgotLS0KIHJlY2lwZXMtZXh0ZW5kZWQvRExULXZp
ZXdlci9ETFQtdmlld2VyXzIuNy4wLmJiIHwgICAzMCArKysrKysrKysrKysrKysrKysrKysrKwog
MSBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAwIGRlbGV0aW9ucygtKQogY3JlYXRl
IG1vZGUgMTAwNjQ0IHJlY2lwZXMtZXh0ZW5kZWQvRExULXZpZXdlci9ETFQtdmlld2VyXzIuNy4w
LmJiCgpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1leHRlbmRlZC9ETFQtdmlld2VyL0RMVC12aWV3ZXJf
Mi43LjAuYmIgYi9yZWNpcGVzLWV4dGVuZGVkL0RMVC12aWV3ZXIvRExULXZpZXdlcl8yLjcuMC5i
YgpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi4zN2U3YWUyCi0tLSAvZGV2L251
bGwKKysrIGIvcmVjaXBlcy1leHRlbmRlZC9ETFQtdmlld2VyL0RMVC12aWV3ZXJfMi43LjAuYmIK
QEAgLTAsMCArMSwzMCBAQAorREVTQ1JJUFRJT04gPSAiRExUIFZpZXdlciAtIEF1dG9tb3RpdmUg
RGlhZ25vc3RpYyBMb2cgYW5kIFRyYWNlIFZpZXdlciIKK0FVVEhPUiA9ICJTdWppdGggSGFyaWRh
c2FuIDxzdWppdGguaEBnbWFpbC5jb20+IgorSE9NRVBBR0UgPSAiaHR0cHM6Ly93d3cuZ2VuaXZp
Lm9yZy8iCitTRUNUSU9OID0gImRldmVsIgorTElDRU5TRSA9ICJNUEx2MiIKKworREVQRU5EUyA9
ICJ2aXJ0dWFsL3F0NCIKK1BSID0gInIxIgorCitTUkNfVVJJID0gImdpdDovL2dpdC5nZW5pdmku
b3JnL3Nydi9naXQvRExULXZpZXdlcjtwcm90b2NvbD1naXQ7dGFnPTUyZTgwMzhmMzYxNmNkOTFj
ODNhN2Y0MTcyNjc0Nzg1ZWJjODI1ODMiCisKK0xJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL0xJ
Q0VOU0UudHh0O21kNT02NDNjYzk3N2RjYTgyNzkyNTEyOTgxZDJiYmMxYWVmMCBcCisJCSAgICBm
aWxlOi8vTVBMLnR4dDttZDU9Y2NkYjI3NjFjZWY3MGM4YjI2MTI2MjRjMzIzZjg5ZGMiCisKK2lu
aGVyaXQgcW1ha2UyCisKK1MgPSAiJHtXT1JLRElSfS9naXQiCisKK2RvX2luc3RhbGxfYXBwZW5k
ICgpIHsKKyAgICAgICAgaW5zdGFsbCAtZCAke0R9JHtiaW5kaXJ9ICR7RH0ke2xpYmRpcn0gJHtE
fSR7bGliZGlyfS9kbHQtdmlld2VyL3BsdWdpbnMKKyAgICAgICAgb2VfbGliaW5zdGFsbCAtQyBy
ZWxlYXNlIC1zbyBsaWJxZGx0ICR7RH0ke2xpYmRpcn0KKyAgICAgICAgb2VfbGliaW5zdGFsbCAt
QyByZWxlYXNlIC1zbyBsaWJxZXh0c2VyaWFscG9ydCAke0R9JHtsaWJkaXJ9CisgICAgICAgIGlu
c3RhbGwgLW0gMDc1NSByZWxlYXNlL2RsdF92aWV3ZXIgJHtEfSR7YmluZGlyfQorICAgICAgICBp
bnN0YWxsIC1tIDA2NDQgcmVsZWFzZS9wbHVnaW5zL2xpYiouc28gJHtEfSR7bGliZGlyfS9kbHQt
dmlld2VyL3BsdWdpbnMKK30KKworRklMRVNfJHtQTn0gPSAiICR7bGliZGlyfS8qLnNvLiogJHti
aW5kaXJ9IFwKKyAgICAgICAgICAgICAgICAke2xpYmRpcn0vZGx0LXZpZXdlci9wbHVnaW5zLyou
c28iCisKK0ZJTEVTXyR7UE59LWRldiA9ICIke2xpYmRpcn0vKi5zbyIKLS0gCjEuNy43LjYKCg==

--e89a8fb203883e236b04c967ba07--
