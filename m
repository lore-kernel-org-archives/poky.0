Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.92.65.79])
 by mx.groups.io with SMTP id smtpd.web08.3325.1629831617731774284
 for <poky@lists.yoctoproject.org>;
 Tue, 24 Aug 2021 12:00:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=MHAQ6EtR;
 spf=pass (domain: outlook.com, ip: 40.92.65.79, mailfrom: asfakr@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=by6h/xG2c6VWFwmh5UcCQzJsPtTTRRlAEPEHSFdRUoS0nImTnRK27Wr+K+XFhq245BIhJQyLfH8taLRzJhOH3IKtu6ZDteMURvoCgFSOxtsqH9TOEfT25gr9D9/b4uyxP6ghgWtzbEP/aOya10ESHVT7x94n2XelMQRrfWBxjUd6bCQ55cL5kWVoJMGedAK13ey8yzAbv5fPqCuKFwqw3dg7o0lsTZIiOMhtxQQg1IPLxep63Yy1KqVbpzDIHXuMOyZPSFgcK46qxrPZr8Q1yPNM+JHvDlCiY+ZWqZOqdCvrtnZHkwOpv0PnibwLpjL+BFaozOSrapqWZfvAnDY1cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqGgnTDjdxF8i9STy+2q0G1BLUTzGIVEWYX0LYHqTeA=;
 b=DvVusebTKSI3fnu+Zc6xcaGrAyp9Lse2lq/T/h+1l4UIQa2azcAuHrEyC0laiZ5ch93cbfzohZ1iGAFxMUoUhuG2njKDEvuXewhny4wW1Y33PtLZCTzL1kMJSU2lf0uiNRoD/j8P1G8zezTZ/lFLOdnBQp6y2383r504IG9TaVEEFKeDLOKP+5Ne7Ws1e5T4OZQlodv13DFwY3JmNVI74+2kb9XzetC64vZc+AHpDGbtkMpZNfUSaUCkCUT3x1HDHRRNUVdX//hT/kKaTOsGtG3Qx+merfFBd8pD9xdO0AbIcamT8CzzrHIXwwlXTZ5FOKSyJMMnDZ5FTWH/sXW75A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqGgnTDjdxF8i9STy+2q0G1BLUTzGIVEWYX0LYHqTeA=;
 b=MHAQ6EtRqwe44Tb62vJ2V+caQxebbayoCAN7Uz/iF2D02EuHM+16kTXSJ9Z4fjEs70kBYzNxU/bxsc3pp/hGKNWbqYWpHWWT4Gl6YSjsGrNpOR6jRaKzJFr8kFIiA4A0TXfOoY43vgl+uQg6zJTq7gwoyEKhHYOgLSqDXcM0VCgS6QDiHXCQPWWeEp/MBblzkJuYYo0DJHgswC9TMx3JQCDUbZTBUtlrLry2w6p6/uEQP+3x6JcZEeh4BPCfWD1EHCzVd03AeyA0wG798vsK07NTYxaHnEh+prqiAYdnyhHuJu5kW057gIditvlkeS2eOLW+o/a01W8HLLt1kNB4XA==
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com (2603:10a6:10:40::14)
 by DB9PR08MB6476.eurprd08.prod.outlook.com (2603:10a6:10:258::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Tue, 24 Aug
 2021 19:00:14 +0000
Received: from DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::6cc2:10c3:3d56:74ec]) by DB7PR08MB3595.eurprd08.prod.outlook.com
 ([fe80::6cc2:10c3:3d56:74ec%5]) with mapi id 15.20.4436.025; Tue, 24 Aug 2021
 19:00:14 +0000
From: "Asfak Rahman" <asfakr@outlook.com>
To: Christopher Larson <kergoth@gmail.com>
CC: poky <poky@lists.yoctoproject.org>
Subject: Re: [poky] [PATCH] initscripts: optimize read-only-hook.sh for performance
Thread-Topic: [poky] [PATCH] initscripts: optimize read-only-hook.sh for
 performance
Thread-Index: AQHXmGF+d2Om3tLz4E+9Rj/EW/fru6uBn3OAgAFkCyI=
Date: Tue, 24 Aug 2021 19:00:14 +0000
Message-ID: 
 <DB7PR08MB3595F34330D082CC8A93192BD0C59@DB7PR08MB3595.eurprd08.prod.outlook.com>
References: 
 <DB7PR08MB35959836F4FC5178A8713A4AD0C49@DB7PR08MB3595.eurprd08.prod.outlook.com>
 <CABcZANm-FFUeHecyZ3j=+XAKaSM9zEuBzyUrQeyL2JibDzUpKg@mail.gmail.com>
In-Reply-To: 
 <CABcZANm-FFUeHecyZ3j=+XAKaSM9zEuBzyUrQeyL2JibDzUpKg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [vYo+RuaRZ+49ff/viAEUQve3JPVxOduK]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 934e8bff-ac91-43eb-afda-08d967316804
x-ms-traffictypediagnostic: DB9PR08MB6476:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Lhgj9rRdcn1tBxMSxZf79xRTRq9cDhvadKWSpiSWghqKgSlKgcmawdqNJ4dbziWig5+GT4C5z2wg2NFiBXLDWJ1EN82IctAwiF8xhXfrURA6YbaIecgi82nMBKZjvKAw0pRmQb+Nk37stb7bqNJYyP9gV8I+IUBuxERboZA0G6RePbsUKZQ/j7pJstOgN2fUg2DGrTKndauS2ZxyYx/IfNh5eJhlLGBoOqwPnSjSAslbtbymUjDrrEQFtsSR5DYgr4C5b5D8NniDEIluxA4kSg84KRHep5Op+Lg42tJCyt7poehvj/dBuo1TQ36U6GdvLYabsWrUcjJIl67GOTk8S0jhnN8YWmT0ErY9X+sD5KwidLZzRBFTIG4XQ6DVvLpc8tqI4KhcGf409VlVqiXPjMEcRdJoc61PqDIsd5p079YPo5cxBbjX1nMlKxlclwwD9LnJUgBhqLb+qDWO7dN6W18XnOHYGMHOzaIq+7afyQ8=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 rUXr3cSBnNdDiYt9OziE4QL0Xe/Zmjjseyjo42O9kuyDcPW2gjzywXsgyzq8SAu5nBjHHopX97G9u8OSrwEXOs0p2Ra/KvwVBmoe+H7We8uGBb0sAjcYwFhH1kIeeUZIXq06qxJmX1eCqIlGxAXHQQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR08MB3595.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 934e8bff-ac91-43eb-afda-08d967316804
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2021 19:00:14.5042
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6476
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, the new patch does not cover checking '/var'.

In case, /var and /var/lib entries were not found in /proc/mounts, the orig=
inal logic checks Root directory also.  The Root directory should not be ch=
ecked as that should be covered by ROOTFS_READ_ONLY variable. May be the ea=
siest way would be to try to change the access time of /var/lib (ex. touch =
-a /var/lib) and that will determine if /var/lib is mounted as read-only or=
 not.

I can prepare a new patch if agreed.

BR,
Asfak Rahman

________________________________________
From: Christopher Larson <kergoth@gmail.com>
Sent: Tuesday, August 24, 2021 00:44
To: Asfak Rahman
Cc: poky
Subject: Re: [poky] [PATCH] initscripts: optimize read-only-hook.sh for per=
formance

This looks flawed. The original logic handled cases like '/var' being rw, e=
tc, whereas the new logic only handles '/var/lib' itself only being writabl=
e. Are we certain all possible configurations are being handled here?

On Mon, Aug 23, 2021 at 1:57 PM Asfak Rahman <asfakr@outlook.com<mailto:asf=
akr@outlook.com>> wrote:
The current script runs multiple iterations to determine
if /var/lib is mounted on a writable partition. Optimize
the script for faster bootup time.

Signed-off-by: Asfak Rahman <asfakr@outlook.com<mailto:asfakr@outlook.com>>
---
 .../initscripts-1.0/read-only-rootfs-hook.sh  | 27 ++-----------------
 1 file changed, 2 insertions(+), 25 deletions(-)

diff --git a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs=
-hook.sh b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-h=
ook.sh
index bd445ddb07..8c0cf32d0b 100644
--- a/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.s=
h
+++ b/meta/recipes-core/initscripts/initscripts-1.0/read-only-rootfs-hook.s=
h
@@ -4,31 +4,9 @@

 [ "$ROOTFS_READ_ONLY" =3D "no" ] && exit 0

-is_on_read_only_partition () {
-       DIRECTORY=3D$1
-       dir=3D`readlink -f $DIRECTORY`
-       while true; do
-               if [ ! -d "$dir" ]; then
-                       echo "ERROR: $dir is not a directory"
-                       exit 1
-               else
-                       for flag in `awk -v dir=3D$dir '{ if ($2 =3D=3D dir=
) { print "FOUND"; split($4,FLAGS,",") } }; \
-                               END { for (f in FLAGS) print FLAGS[f] }' < =
/proc/mounts`; do
-                               [ "$flag" =3D "FOUND" ] && partition=3D"rea=
d-write"
-                               [ "$flag" =3D "ro" ] && { partition=3D"read=
-only"; break; }
-                       done
-                       if [ "$dir" =3D "/" -o -n "$partition" ]; then
-                               break
-                       else
-                               dir=3D`dirname $dir`
-                       fi
-               fi
-       done
-       [ "$partition" =3D "read-only" ] && echo "yes" || echo "no"
-}
-
 if [ "$1" =3D "start" ] ; then
-       if [ `is_on_read_only_partition /var/lib` =3D "yes" ]; then
+       # check that /var/lib is not mounted on a writable partition
+       if [ -z "`sed -n '/\/var\/lib .* rw/p' /proc/mounts`" ]; then
                grep -q "tmpfs /var/volatile" /proc/mounts || mount /var/vo=
latile
                mkdir -p /var/volatile/lib
                mkdir -p /var/volatile/.lib-work
@@ -40,4 +18,3 @@ if [ "$1" =3D "start" ] ; then
                fi
        fi
 fi
-
--
2.17.1






--
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics
