Return-Path: <denis.osterland@diehl.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AFB3E65D3B
	for <webhook@archiver.kernel.org>; Fri, 22 Nov 2024 09:29:05 +0000 (UTC)
Received: from enterprise02.smtp.diehl.com (enterprise02.smtp.diehl.com [193.201.238.220])
 by mx.groups.io with SMTP id smtpd.web10.20437.1732267741235135277
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2024 01:29:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@diehl.com header.s=default header.b=lk26gmbq;
 spf=pass (domain: diehl.com, ip: 193.201.238.220, mailfrom: prvs=0499ebf4d=denis.osterland@diehl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
  t=1732267741; x=1763803741;
  h=from:to:subject:date:message-id:mime-version;
  bh=VAFTb5sxCmgHE430Y6l+oh/AoEiVWFYs1yjEQPIhSYQ=;
  b=lk26gmbqXx5z+c81U/UheorLNk/AzVSubRQqpNYVSEZC7qhpT9qYilit
   ulI2F+z/DRQdunyPwDekkTE7fi4MeeVUG05eU1Uy9/XUZlGKDAi5ImSL8
   5viCLUMAANUJn0ZP6mQceGCvs/lhhNtsDY0rSsQ+8g0P1Oi8NROWk5wNE
   JTKcrR9QoMTPdbo7WB/PkODodzwP6kSjRncRx113vIKizguArQDSTRhgN
   LW+GShgbGUGWEj3hhWo/ZKUlv5oZb3TcMWpsiqd6kyxgsNommWLH3w6ek
   uw8kzLcqD1X3rvcr3GStRaGXxH6QlAQNaqPHkhosdS+8cX/FcpSKHSrli
   Q==;
X-CSE-ConnectionGUID: sZzM43U2T8WvFalHqHOj+g==
X-CSE-MsgGUID: Rl8kdND/RMijpSXBESvvaw==
X-ThreatScanner-Verdict: Negative
IronPort-Data: A9a23:8WsNEKMWxMpEjY7vrR2xl8FynXyQoLVcMsEvi/8bNHDolHp+jmZWi
 jtAB3bOJ7/RMSHyZpovP9PnsQ9E7KZh/KYgFVsx+Dd1EGkiRaHtCIuUchaqYinDc8DKERhr5
 swVNdDNcMxoFyGG+Ejzb+a69CBwjvDYGLetBrPJY30pFQFoRXp50xg7xbRh29Nj0LBVbyuEo
 cv2osbWJF6i3XlsMWkPtOeYqRxptejvoj5wUnkWPJin63eFxiFFZH5mGYmxM2fgEM4THeOrX
 KDPzby5+iXS+BJqAcmh1ar4N009RPjZJwzW4ka6IJNO8SWu3ARqlP5TCdIcdVtP2XLOnN1g0
 5NBtJGwTUEiOaiLk/4ZFAVbViFJO+tN4ruffDv+6aSvIzb9nwjRL49GVAduVbAw+vprGTMJs
 uMHN3YBbx2Dg6S9x7f8UuptwZxLECWQB29sh50a5WmfVZ4bfK3+r4X2Cf5whW852swRRfiEP
 ppCYGNiNU2aOxQeZw1MAsJmzLj5iHSjKm0Jo1+r/qdmuGK7IC6dclTOGIePJobaFZ09cmKw/
 D+uE7HRW0lCXDCn4WPbtCrq3qmXwHuTtLs6TNWQ7uRtjECY2lsdARgXUUrTifSigyZSYfoGQ
 6Av0nRo9PJaGHCDFIGnA0Th+iTc53bwZvILewEEwFDUokbry1bBboQ0ZmYpQMArssYwWQsr2
 jeh9/v1BSZiuaGiUnmU8LGZt1uaYUD5+kdbOEfo5SNcizXSiNlbYiDnF76PI4bs5jHBIgwc9
 hjRxMQIaxf/uuZQv0mz1QivbztBPfElRCZtjuncdjrNAg+U+OdJzmFngLTWxa8oEWqXcrWOl
 GM2ie3Ct91UMcGyigKERMUUPJarpPnQZVUwgXY3d3Ug3zio6XWsYtgKpjp5Pl8vPscJeTuva
 0jW0e9TzMYLeivwK/YnJdvqUazGzoC5fTjhfvzZaNtVJJ9qaAKd+ChoaWac3m3tlA4nlqRX1
 ZKzIJfwXC1AVf8PIDyefeNN0rMN6mcE4GLRXavL5Tmcz6SXeyvAIVsCGB7UBgwj14ucpwbE2
 9JeLNeRjQRYW/H5ejPQ84MYMRYNN3dTOHztg5UPML7ZZFM2Xjh6UZc93I8cRmCspIwN/s+gw
 513chYwJIbX7ZEfFTi3Vw==
IronPort-HdrOrdr: A9a23:jVXwaKh2TWeFZtS+I2JY2kv1zXBQXhAji2hC6mlwRA09TyXBrb
 HJoB1p726MtN9xYgBbpTnkAsXufZqyz+8Q3WB8B9aftWrdyRaVxeNZnOzfKlTbckWUnNK1vp
 0QEJSWfeeAaGSS+vyKgjVQfexB/DDNytHRuQ6X9QYXcShaL4ZsxENCDBqBGEEefmR7LKt8Lc
 DBv45mqlObF0g/X4CBGmMJNtKz2+H2qA==
X-Talos-CUID: =?us-ascii?q?9a23=3ARR9nEWuFoi4B50wFxME2z63A6Is+QG/4kCzteXP?=
 =?us-ascii?q?oNnhHQbm1UH+3+uBrxp8=3D?=
X-Talos-MUID: 9a23:NHt4SwQbXnlX8oshRXTWgGFhOOFEpJ6LCUIVqqUslvKaKyVvbmI=
X-IronPort-AV: E=Sophos;i="6.12,175,1728943200"; 
   d="p7s'346?scan'346,208,346";a="99493243"
From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
To: "poky@lists.yoctoproject.org" <poky@lists.yoctoproject.org>
Subject: [PATCH] licenses: add GPL-2.0-with-Linux-syscall-note
Date: Fri, 22 Nov 2024 10:28:57 +0100 (CET)
Message-ID: <9b605f6d8bdb4f6bb3194d5049bc0db6@diehl.com>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature"; micalg="sha-256"; boundary="----567FA19D5D994979180B9C9298435D9F"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Fri, 22 Nov 2024 09:29:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13491

This is an S/MIME signed message

------567FA19D5D994979180B9C9298435D9F
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

According to Linux copying notice[^1] the SPDX copyright should be
`GPL-2.0 WITH Linux-syscall-note`.
AFAIK there is no `WITH` operator in yocto yet, so I created
GPL-2.0-with-Linux-syscall-note based on SPDX[^2] and Linux[^3].
spdx.org/licenses does not list this license, because of the prefered use of
WITH operator.
For example GPL-2.0-with-autoconf-exception[^4] is now marked deprecated.

It would be good to have something like `LICENSE = "GPL2.0-only +
Linux-syscall-note"`
in the future.

[^1]:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/COPY
ING
[^2]: https://spdx.org/licenses/Linux-syscall-note.html
[^3]:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/LICE
NSES/exceptions/Linux-syscall-note
[^4]: https://spdx.org/licenses/GPL-2.0-with-autoconf-exception.html

Signed-off-by: Denis Osterland-Heim <denis.osterland@diehl.com>
---
 .../GPL-2.0-with-Linux-syscall-note               | 15 +++++++++++++++
 meta/recipes-kernel/linux/linux-yocto.inc         |  2 +-
 2 files changed, 16 insertions(+), 1 deletion(-)
 create mode 100644
meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note

diff --git a/meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note
b/meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note
new file mode 100644
index 0000000000..7fc191baf1
--- /dev/null
+++ b/meta/files/common-licenses/GPL-2.0-with-Linux-syscall-note
@@ -0,0 +1,15 @@
+insert GPL v2 text here
+
+   NOTE! This copyright does *not* cover user programs that use kernel
+ services by normal system calls - this is merely considered normal use
+ of the kernel, and does *not* fall under the heading of "derived work".
+ Also note that the GPL below is copyrighted by the Free Software
+ Foundation, but the instance of code that it refers to (the Linux
+ kernel) is copyrighted by me and others who actually wrote it.
+
+ Also note that the only valid version of the GPL as far as the kernel
+ is concerned is _this_ particular version of the license (ie v2, not
+ v2.2 or v3.x or whatever), unless explicitly otherwise stated.
+
+                       Linus Torvalds
+
diff --git a/meta/recipes-kernel/linux/linux-yocto.inc
b/meta/recipes-kernel/linux/linux-yocto.inc
index 0132fcffb3..1765974666 100644
--- a/meta/recipes-kernel/linux/linux-yocto.inc
+++ b/meta/recipes-kernel/linux/linux-yocto.inc
@@ -1,6 +1,6 @@
 SUMMARY = "Linux kernel"
 SECTION = "kernel"
-LICENSE = "GPL-2.0-only"
+LICENSE = "GPL-2.0-with-Linux-syscall-note"
 HOMEPAGE = "https://www.yoctoproject.org/"

 LIC_FILES_CHKSUM ?= "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
--
2.45.2

------567FA19D5D994979180B9C9298435D9F
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIIPQAYJKoZIhvcNAQcCoIIPMTCCDy0CAQExDzANBglghkgBZQMEAgEFADALBgkq
hkiG9w0BBwGgggxWMIIGUTCCBDmgAwIBAgICMAAwDQYJKoZIhvcNAQELBQAwgaMx
ITAfBgNVBAMMGERpZWhsIEdyb3VwIE1haWwgUm9vdCBDQTELMAkGA1UEBhMCREUx
EjAQBgNVBAcMCU51ZXJuYmVyZzEUMBIGA1UECgwLRGllaGwgR3JvdXAxFDASBgNV
BAsMC0RpZWhsIEdyb3VwMQ8wDQYDVQQIDAZCYXllcm4xIDAeBgkqhkiG9w0BCQEW
EXg1MDktY2FAZGllaGwuY29tMB4XDTE4MDUyOTEyMzIzNVoXDTI4MDUyNjEyMzIz
NVowgZQxCzAJBgNVBAYTAkRFMQ8wDQYDVQQIDAZCYXllcm4xFDASBgNVBAoMC0Rp
ZWhsIEdyb3VwMRswGQYDVQQLDBJEaWVobCBNZXRlcmluZyBUS0gxHzAdBgNVBAMM
FkRpZWhsIE1ldGVyaW5nIE1haWwgQ0ExIDAeBgkqhkiG9w0BCQEWEXg1MDktY2FA
ZGllaGwuY29tMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAtISPrKPL
Zjjh//2n9b+GXgrhijJV2knQVC0+/FS3zGl4p2fboB+Vr4YHz1uilEvhsS1oG4FV
f1u0dqdmLVxDHBPMO2K1NKKOJN/6LDDfyiZGNqDOJke6FzrmDyPXXTDtgzWZfdnD
esx63XSxprre30oJ3BxDFS+/8UpuI628SPc1N4125rHeUXG4scKFSjqRPcIOAQ2X
veGXU2dYHzq7B02NA8tssmtJNwXjyvMjOw6HGZ8SB87TrFQm6drEtM7QhI/mfpGe
nTZ4nc84n0yKuMveav8IOspYbkOXzi4JapiOUpmccNLZdIiMg5WJQ0Xt9NSp5yD5
CYKideGrWgX2wNEBpalgjZoPPQDImcWEJx88/yYZ4FwtRD3VueFqpBr4z/bxwVDr
N2a/sEqnocY9Tm2EQyHFHDCJ9JyYEXB8W0LTFcUAx+uHijwPk/oIB5EeH8UygXlX
qUqII+BUZ+q5m5sIc4eXQ10UpUEjG/ptIyO1Ee/E0kPOWzHp07pPgXCZohZb3y41
Ha2pO6rXOsOmPBK2r2++fLWz3NFyfEJCmn6FcBNi003HUEVCup1D9/9yaPHPSieN
27sjQcQ96GbOitC99p3xMnSlg4N11lGeuTXCZjIGXdZL5/dThQaxneVA+hr2X+i1
KmqnesMaSBEuBEBDmbDbakEgJFVWtVeXuk8CAwEAAaOBmzCBmDASBgNVHRMBAf8E
CDAGAQH/AgEAMAsGA1UdDwQEAwIBBjAdBgNVHQ4EFgQUn8t6NGPzWsF+oZYXxmfn
p4Ok7rIwHwYDVR0jBBgwFoAUZrrYQMMD50v/OCDMgDN7y/GT2P8wNQYDVR0fBC4w
LDAqoCigJoYkaHR0cDovL2tleXMuZGllaGwuY29tL2NybC90ay1oX24uY3JsMA0G
CSqGSIb3DQEBCwUAA4ICAQAl6hO6b6+GseZi3EAU+zPVhxNZP5Y+YsBnjf13jCGw
nUVvPz6giwXiCd9KIC4eCqqrJLTHwZe8c/9hSk5CCd6A5XAd3YudrPDvmIwms5Ex
OREMQkygZO6/qxfXO6IhfUO4HvYQtQexzHOLuxG/KdycVwWapA4acFzBurxFQ3aG
jvPRgvWxe2Mt3K9wLrEhvGrDmS8yg4bYNyBZGgax6LRhfW4/ShInVUa0koG2Sj+H
hKpppvqDK4FNgR2dKeCPoo28P9a+K9N3wkLKx4zxaxHegij0DsJOBAVbhk+vDWDO
gedjtT09c9bsykaXFzykyQeQz7cwrTQ1gDacdcDgywMDQzZKim9O3JpyzvXnD7mb
CvclM3xp9w6jIJbeaQE7HDlA9YIL/bSRIQq8mJcXArUevLK2MX/Mb+5m3UMU+zXc
ZqmaneeZeR4bOWrmmhK6bMuce6H+i2YB1vG3BAcSfKQUzZ1m6aKSW1FvjI3SZXQD
FzRzBwC5ql7i2ugtfOLNYjOO/fvAxNppIZb3IyWN1KBAI7YgS4nx0us/NIlWpTMW
91WeUtNBCp2sgi3VTi/TUel3RZ9x3tggMUhrksGkFXz2NUL85AdPV6BqJXXXHggd
121rnduE9ocMt0MFLuDPkMaHqKNzBAcKTcmFM8KYMJ5Z7NBqGtTAgHNVmEnU8gu3
czCCBf0wggPloAMCAQICAgtcMA0GCSqGSIb3DQEBCwUAMIGUMQswCQYDVQQGEwJE
RTEPMA0GA1UECAwGQmF5ZXJuMRQwEgYDVQQKDAtEaWVobCBHcm91cDEbMBkGA1UE
CwwSRGllaGwgTWV0ZXJpbmcgVEtIMR8wHQYDVQQDDBZEaWVobCBNZXRlcmluZyBN
YWlsIENBMSAwHgYJKoZIhvcNAQkBFhF4NTA5LWNhQGRpZWhsLmNvbTAeFw0yNDAx
MDIwOTE5MzlaFw0yNjAxMDIwOTE5MzlaMIG8MSIwIAYDVQQDDBlkZW5pcy5vc3Rl
cmxhbmRAZGllaGwuY29tMSgwJgYJKoZIhvcNAQkBFhlkZW5pcy5vc3RlcmxhbmRA
ZGllaGwuY29tMQswCQYDVQQGEwJERTEPMA0GA1UECAwGQmF5ZXJuMRwwGgYDVQQK
DBNEaWVobCBNZXRlcmluZyBUSy1IMRwwGgYDVQQLDBNEaWVobCBNZXRlcmluZyBU
Sy1IMRIwEAYDVQQHDAlOdWVybmJlcmcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAw
ggEKAoIBAQDC4CfZJns8lrNXSkis30SmXgEPwIED4unjF8EoHzBRk5cQphMwuxVY
uFrZmkB8+FJ7kNnazQ5ddAH+7uh/w7vxEbch92iEpJxYRT6z9U7Mgw0sqGjzWQjd
sVzCSrWJrOdrHXc65BnAPOpjNDNe1dR8J9Z4a7OZU5NnQqJMT314j2gfGawGDakJ
Vph7S6v4AVmty1Fi4iRbaIamu8KJFrHQb5E1UVD5drrxW6TS0z/3YkrMQ6qA1fBB
Y271mRVq/1ByvJMgPJu7LtIyuGwGJw44RxF0JPLlqRWpsIa+z2cI48dkvwb8k0T1
rNSIj9urOmUEJGF5O8LioUy0vwmxeWF7AgMBAAGjggEtMIIBKTAfBgNVHSMEGDAW
gBSfy3o0Y/NawX6hlhfGZ+eng6TusjAJBgNVHRIEAjAAMCQGA1UdEQQdMBuBGWRl
bmlzLm9zdGVybGFuZEBkaWVobC5jb20wNQYDVR0fBC4wLDAqoCigJoYkaHR0cDov
L2tleXMuZGllaGwuY29tL2NybC90ay1oX24uY3JsMDUGCCsGAQUFBwEBBCkwJzAl
BggrBgEFBQcwAoYZaHR0cDovL3d3dy5kaWVobC5jb20vcGtpLzAJBgNVHRMEAjAA
MB0GA1UdDgQWBBQK9y4jVYoCDsL7lhhJKjEP5wv1nTALBgNVHQ8EBAMCBaAwHQYD
VR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMEMBEGCWCGSAGG+EIBAQQEAwIFoDAN
BgkqhkiG9w0BAQsFAAOCAgEAB27J8TZvm6g0rtQpv4kqYwzkXOkCt27WHHWzl/JZ
knFwWH4mvlRSrQtKkx8cPb5xqqx7k4qXC7TAef4W5YmnpWDtw7YHQAygAsCV1+i8
uBhdnBVRYkLi0Brsqb/KaDVCFDAYn82kr8OlDaVl5GazIF5rTTUFVT7QEUewf5e7
Ej4tkepIMP8DW0mM9VRdiSd+DFQQQsQR91nJZS+Gd0jT2tW6SVtZEGnsdgKi9VOw
+/u7TPynQA3m70zel9t0RySfc5bfZGqEBK/nqU2g5n/qaHKT9cMM8vTAJOmzMv4W
p7j6RF851h+6c4kH0UsUR9LdbXsKS0KsKTmjPbmbuMAWSEafskq5lJdhIybBnGcp
FwOkXw6yLHhvmBQ27hVolbrAgLprlLBm8qLq0G3dPHlLwgnNlD6RAcjaVLOcqH3Q
HWHbKlVg310S75cll1rM+GAudWdsHWxOUbK7R0lwJf/E+FAXciAsExWzCQarpSFI
AYJjvnsYTiSWas6b5L/rKtyeWIz5wJ3ovxFaMglCtGNGh3sqKwVgb0PeGJ/hfXkV
Z3i06A/GFOMDvvZ4kI2OL2wwUftkvi8ID5g2nbX/WQh9y6zhlXtiOlA1IplU+PU3
OHrFL4SBW0X7j1l+9Jl9kGy/ukAr+9nWZ55nUoV/L9C1GLrAO5KF/fDpO2b7lidQ
mWUxggKuMIICqgIBATCBmzCBlDELMAkGA1UEBhMCREUxDzANBgNVBAgMBkJheWVy
bjEUMBIGA1UECgwLRGllaGwgR3JvdXAxGzAZBgNVBAsMEkRpZWhsIE1ldGVyaW5n
IFRLSDEfMB0GA1UEAwwWRGllaGwgTWV0ZXJpbmcgTWFpbCBDQTEgMB4GCSqGSIb3
DQEJARYReDUwOS1jYUBkaWVobC5jb20CAgtcMA0GCWCGSAFlAwQCAQUAoIHkMBgG
CSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTI0MTEyMjA5
Mjg1N1owLwYJKoZIhvcNAQkEMSIEIIHJshQ+TWP7xaAfPWO/AMWycFO39vlLlruC
F6m/eL9pMHkGCSqGSIb3DQEJDzFsMGowCwYJYIZIAWUDBAEqMAsGCWCGSAFlAwQB
FjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqG
SIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMA0GCSqGSIb3DQEBAQUA
BIIBAGG6/gpgzborVwfPz4y8cqMm1c0uIYOJ8JfFfzEys8vrpG9CSbUwlkP0HjQZ
G4+MVCd6SjwW31rCdcjFgWtulsJpSmpW3/s2r9GvAF/dG8G2r0HE1DKTasr94Qr7
YlZKt4mdpcfm3pIxb4XyVPQ7vtFGH4uR1PohAsm8kuGIDozTU3cQ0Gc/qPOj73wz
UcakA0eN6fgw7ALxmU+1SLhQ3GIElpFZX0FoEeAaWkFkIuzaae+8RuHwAkFQDy9O
9OCEmgiv8VIcyKJ689/hRJwxhH47YGPdAKrXKZtYmo+qFF88S4ub0g+u8Rx0m8jw
VODILkof6A3kt8E34af8M3FucN0=

------567FA19D5D994979180B9C9298435D9F--


