Return-Path: <Jonas.Eriksson@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 64333E004D8
	for <poky@yoctoproject.org>; Wed, 29 Jan 2014 06:08:15 -0800 (PST)
Received: from SESTOEX05.enea.se ([fe80::41cb:8d2e:2e90:a183]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0158.001; Wed, 29 Jan 2014 15:08:13 +0100
From: Jonas Eriksson <Jonas.Eriksson@enea.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] [PATCH] Docs: Add x11 to supported DISTRO_FEATURES
Thread-Index: AQHPHNcWt2lKll2RVUu4ZzSzFm8tU5qbqvKAgAASP+k=
Date: Wed, 29 Jan 2014 14:08:12 +0000
Message-ID: <CB43D26DEC155C48A1732168A84AF0A01B1E87@sestoex05.enea.se>
References: <1390988817-15610-1-git-send-email-jonas.eriksson@enea.com>,
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F63880@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F63880@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.140.35]
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
X-List-Received-Date: Wed, 29 Jan 2014 14:08:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Scott,=0A=
=0A=
Ah, did not see that repo.=0A=
=0A=
Looks good, thanks!=0A=
=0A=
/Jonas=0A=
________________________________________=0A=
From: Rifenbark, Scott M [scott.m.rifenbark@intel.com]=0A=
Sent: Wednesday, January 29, 2014 3:02 PM=0A=
To: Jonas Eriksson; poky@yoctoproject.org=0A=
Cc: Purdie, Richard; Eggleton, Paul=0A=
Subject: RE: [poky] [PATCH] Docs: Add x11 to supported DISTRO_FEATURES=0A=
=0A=
Jonas,=0A=
=0A=
I applied this patch to the YP reference manual being worked on for the nex=
t YP release.  You can examine the patch at http://git.yoctoproject.org/cgi=
t/cgit.cgi/yocto-docs/commit/?id=3Ddd243b453b6d69bc439dda816fa5c9c83c5c3cd4=
.=0A=
=0A=
Thanks,=0A=
Scott=0A=
=0A=
>-----Original Message-----=0A=
>From: poky-bounces@yoctoproject.org [mailto:poky-=0A=
>bounces@yoctoproject.org] On Behalf Of Jonas Eriksson=0A=
>Sent: Wednesday, January 29, 2014 1:47 AM=0A=
>To: poky@yoctoproject.org=0A=
>Subject: [poky] [PATCH] Docs: Add x11 to supported DISTRO_FEATURES=0A=
>=0A=
>Before this change, x11 was only documented as an IMAGE_FEATURE.=0A=
>However, it is heavily relied upon as a DISTRO_FEATURE by packages that=0A=
>have an optional X dependency determined during build time. Examples=0A=
>include libsdl, dbus, alsa and pulseaudio.=0A=
>---=0A=
> documentation/ref-manual/ref-features.xml | 3 +++=0A=
> 1 file changed, 3 insertions(+)=0A=
>=0A=
>diff --git a/documentation/ref-manual/ref-features.xml=0A=
>b/documentation/ref-manual/ref-features.xml=0A=
>index f5641c6..d788530 100644=0A=
>--- a/documentation/ref-manual/ref-features.xml=0A=
>+++ b/documentation/ref-manual/ref-features.xml=0A=
>@@ -177,6 +177,9 @@=0A=
>                     supports it.</para></listitem>=0A=
>                 <listitem><para><emphasis>wifi:</emphasis> Include WiFi s=
upport=0A=
>                     (integrated only).</para></listitem>=0A=
>+                <listitem><para><emphasis>x11:</emphasis> Include the X s=
erver=0A=
>+                    and libraries.=0A=
>+                    </para></listitem>=0A=
>             </itemizedlist>=0A=
>         </para>=0A=
>     </section>=0A=
>--=0A=
>1.9.rc1=0A=
>=0A=
>_______________________________________________=0A=
>poky mailing list=0A=
>poky@yoctoproject.org=0A=
>https://lists.yoctoproject.org/listinfo/poky=0A=
=0A=

