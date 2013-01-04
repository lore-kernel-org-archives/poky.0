Return-Path: <Nasir_Ali@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0554EE006F8
	for <poky@yoctoproject.org>; Thu,  3 Jan 2013 22:17:31 -0800 (PST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1Tr0aw-0006zp-Nb from Nasir_Ali@mentor.com ;
	Thu, 03 Jan 2013 22:17:30 -0800
Received: from SVR-IES-FEM-02.mgc.mentorg.com ([137.202.0.106]) by
	svr-orw-fem-01.mgc.mentorg.com over TLS secured channel with
	Microsoft SMTPSVC(6.0.3790.4675); Thu, 3 Jan 2013 22:17:30 -0800
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.171]) by
	SVR-IES-FEM-02.mgc.mentorg.com ([137.202.0.106]) with mapi id
	14.01.0289.001; Fri, 4 Jan 2013 06:17:28 +0000
From: "Ali, Nasir" <Nasir_Ali@mentor.com>
To: Anna Dushistova <anna.dushistova@gmail.com>
Thread-Topic: [poky] Pandaboard booting with Yocto with LTTng support
Thread-Index: Ac3psyVKAW168FJ+SHiCEzClZ9dy3QAGws6AAB0VNNg=
Date: Fri, 4 Jan 2013 06:17:28 +0000
Message-ID: <53B11A2698485743AAA262E995E2C3F1915F0CEA@EU-MBX-01.mgc.mentorg.com>
References: <53B11A2698485743AAA262E995E2C3F1915F0C3C@EU-MBX-01.mgc.mentorg.com>,
	<CAKL3bWXCnY63a0n5uqwpqrLgBwAwa-jSpHC2WxwdfRvrQc6yBA@mail.gmail.com>
In-Reply-To: <CAKL3bWXCnY63a0n5uqwpqrLgBwAwa-jSpHC2WxwdfRvrQc6yBA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.69]
MIME-Version: 1.0
X-OriginalArrivalTime: 04 Jan 2013 06:17:30.0564 (UTC)
	FILETIME=[2D330840:01CDEA43]
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Pandaboard booting with Yocto with LTTng support
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
X-List-Received-Date: Fri, 04 Jan 2013 06:17:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Anna,=0A=
=0A=
I have enabled the following in defconfig file. Apart from these I don't kn=
ow what other configuration I need to enable for kernel tracing.=0A=
=0A=
CONFIG_MODULES=3Dy=0A=
CONFIG_KALLSYMS=3Dy=0A=
CONFIG_HIGH_RES_TIMERS=3Dy=0A=
CONFIG_FTRACE=3Dy=0A=
CONFIG_TRACEPOINTS=3Dy=0A=
CONFIG_HAVE_SYSCALL_TRACEPOINTS=3Dy=0A=
CONFIG_HAVE_PERF_EVENTS=3Dy=0A=
CONFIG_EVENT_TRACING=3Dy=0A=
CONFIG_KPROBES=3Dy=0A=
CONFIG_KRETPROBES=3Dy=0A=
=0A=
Best Regards,=0A=
Nasir=0A=
________________________________________=0A=
From: Anna Dushistova [anna.dushistova@gmail.com]=0A=
Sent: Thursday, January 03, 2013 9:20 PM=0A=
To: Ali, Nasir=0A=
Cc: poky@yoctoproject.org=0A=
Subject: Re: [poky] Pandaboard booting with Yocto with LTTng support=0A=
=0A=
Hello,=0A=
=0A=
Does your kernel image have tracing enabled?=0A=
=0A=
Anna.=0A=
=0A=
On Thu, Jan 3, 2013 at 4:06 PM, Ali, Nasir <Nasir_Ali@mentor.com> wrote:=0A=
> Hi,=0A=
>=0A=
> I need to have LTTng kernel tracer support in Panda-board. I have=0A=
> successfully built Yocto with LTTng support for Pandaboard and also=0A=
> successfully booted with these images but LTTng kernel tracer doesn't wor=
k=0A=
> for me. I have built with the following steps:=0A=
>=0A=
> Pull the Yocto sources from git: git clone --branch <release_name>=0A=
> git://git.yoctoproject.org/poky=0A=
> Pull meta-ti layer from git:git clone --branch <release_name>=0A=
> git://git.yoctoproject.org/meta-ti=0A=
> Run the environment setup script (oe-init-build-env)=0A=
> Add the machine name (MACHINE ?=3D "pandaboard") in local.conf file=0A=
> Add a line (BBMASK =3D "meta-ti/recipes-misc") at the end in local.conf f=
ile=0A=
> for resolving meta-ti dependencies=0A=
> Add a line (IMAGE_INSTALL_append =3D " dropbear") at the end in local.con=
f=0A=
> file for 'ssh' support if it required.=0A=
> Add a line (CORE_IMAGE_EXTRA_INSTALL =3D "lttng2-ust lttng-modules=0A=
> lttng-tools") at the end in local.conf file for LTTng2.=0A=
> Add meta-ti layer path in 'bblayers.conf' file=0A=
> Start building with bitbake core-image-minimal=0A=
>=0A=
>=0A=
> Then booted successfully but LTTng kernel tracer doesn't work.=0A=
>=0A=
>=0A=
> root@pandaboard:~# lttng list -k=0A=
> Spawning a session daemon=0A=
> FATAL: Module lttng-tracer not found.=0A=
> Error: Unable to load module lttng-tracer=0A=
> Error: Unable to remove module lttng-tracer=0A=
> Warning: No kernel tracer available=0A=
> FATAL: Module lttng-tracer not found.=0A=
> Error: Unable to load module lttng-tracer=0A=
> Error: Unable to remove module lttng-tracer=0A=
> Warning: No kernel tracer available=0A=
> Error: Unable to list kernel events=0A=
>=0A=
> Could you please anybody guide me about this issue.=0A=
>=0A=
> Best Regards,=0A=
> Nasir=0A=
>=0A=
> _______________________________________________=0A=
> poky mailing list=0A=
> poky@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/poky=0A=
>=0A=

