Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F1B7E004D8
	for <poky@yoctoproject.org>; Wed, 29 Jan 2014 06:02:44 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Jan 2014 06:02:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,742,1384329600"; d="scan'208";a="472642753"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2014 06:02:08 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.61]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.105]) with mapi id
	14.03.0123.003; Wed, 29 Jan 2014 06:02:07 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Jonas Eriksson <jonas.eriksson@enea.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] Docs: Add x11 to supported DISTRO_FEATURES
Thread-Index: AQHPHNcp/oEzB2RNekSKntmiEJdZnpqcQc/A
Date: Wed, 29 Jan 2014 14:02:07 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F63880@ORSMSX101.amr.corp.intel.com>
References: <1390988817-15610-1-git-send-email-jonas.eriksson@enea.com>
In-Reply-To: <1390988817-15610-1-git-send-email-jonas.eriksson@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: [PATCH] Docs: Add x11 to supported DISTRO_FEATURES
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
X-List-Received-Date: Wed, 29 Jan 2014 14:02:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jonas,=20

I applied this patch to the YP reference manual being worked on for the nex=
t YP release.  You can examine the patch at http://git.yoctoproject.org/cgi=
t/cgit.cgi/yocto-docs/commit/?id=3Ddd243b453b6d69bc439dda816fa5c9c83c5c3cd4=
.

Thanks,=20
Scott

>-----Original Message-----
>From: poky-bounces@yoctoproject.org [mailto:poky-
>bounces@yoctoproject.org] On Behalf Of Jonas Eriksson
>Sent: Wednesday, January 29, 2014 1:47 AM
>To: poky@yoctoproject.org
>Subject: [poky] [PATCH] Docs: Add x11 to supported DISTRO_FEATURES
>
>Before this change, x11 was only documented as an IMAGE_FEATURE.
>However, it is heavily relied upon as a DISTRO_FEATURE by packages that
>have an optional X dependency determined during build time. Examples
>include libsdl, dbus, alsa and pulseaudio.
>---
> documentation/ref-manual/ref-features.xml | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/documentation/ref-manual/ref-features.xml
>b/documentation/ref-manual/ref-features.xml
>index f5641c6..d788530 100644
>--- a/documentation/ref-manual/ref-features.xml
>+++ b/documentation/ref-manual/ref-features.xml
>@@ -177,6 +177,9 @@
>                     supports it.</para></listitem>
>                 <listitem><para><emphasis>wifi:</emphasis> Include WiFi s=
upport
>                     (integrated only).</para></listitem>
>+                <listitem><para><emphasis>x11:</emphasis> Include the X s=
erver
>+                    and libraries.
>+                    </para></listitem>
>             </itemizedlist>
>         </para>
>     </section>
>--
>1.9.rc1
>
>_______________________________________________
>poky mailing list
>poky@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/poky


