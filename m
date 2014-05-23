Return-Path: <cristian.iorga@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C51AE00B68; Fri, 23 May 2014 06:22:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga09.intel.com (unknown [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E43C2E00A2F
	for <poky@yoctoproject.org>; Fri, 23 May 2014 06:22:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 May 2014 06:17:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,893,1392192000"; d="scan'208";a="545526613"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by orsmga002.jf.intel.com with ESMTP; 23 May 2014 06:21:29 -0700
Received: from irsmsx153.ger.corp.intel.com (163.33.192.75) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 23 May 2014 14:21:27 +0100
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.70]) by
	IRSMSX153.ger.corp.intel.com ([169.254.9.50]) with mapi id
	14.03.0123.003; Fri, 23 May 2014 14:21:26 +0100
From: "Iorga, Cristian" <cristian.iorga@intel.com>
To: "Dr. Markus Eich" <markus.eich@dfki.de>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] Problem Building DHCP into image
Thread-Index: AQHPddKFiJgX9yM/xEep7xpwEcDk9JtOJvug
Date: Fri, 23 May 2014 13:21:26 +0000
Message-ID: <969F26A8BAB325438E7EB80D3C3134FB1CEB4D96@IRSMSX105.ger.corp.intel.com>
References: <537E1644.9040003@dfki.de>
In-Reply-To: <537E1644.9040003@dfki.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Subject: Re: Problem Building DHCP into image
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
X-List-Received-Date: Fri, 23 May 2014 13:22:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Markus,

By running:
bitbake dhcp
you actually will run the dhcp recipe and all tasks that goes into it (that=
 will create packages, among other things).
By adding IMAGE_INSTALL, you try to add a certain package into the build.
I will recommend to use CORE_IMAGE_EXTRA_INSTALL anyhow.
Now, the dhcp recipe will build the following packages:
dhcp-server, dhcp-server-config, dhcp-client, dhcp-relay, etc.
I believe that you want to add one of this to your image (server, client, e=
tc).

Regards,
Cristian Iorga
YP
Intel Corporation

-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of Dr. Markus Eich
Sent: Thursday, May 22, 2014 6:23 PM
To: poky@yoctoproject.org
Subject: [poky] Problem Building DHCP into image

Dear all,

I try to build a yocto image using the following receipe

http://pastebin.com/SyW3MZrL


The build config is


Build Configuration:
BB_VERSION        =3D "1.20.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Ubuntu-14.04"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "overo"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.5.1"
TUNE_FEATURES     =3D "armv7a vfp neon"
TARGET_FPU        =3D "vfp-neon"
meta
meta-yocto        =3D "dora:19745990465b37107142c5464008ca9f7959cc0b"
meta-oe
meta-networking   =3D "dora:ee173678383683e972c7d4d6f0ef5790bfa50274"
meta-ros          =3D "master:821427d23adb33674da76dc34d8ab6983590fcd4"
meta-overo        =3D "dora:49d78254783e7cd1da4b7695e0014d526fbb6d58"
meta-dfki         =3D "master:d6156057fc7adc1585ec28505f63633e981f66d3"

The problem is building the dhcp part, i.e.

IMAGE_INSTALL +=3D " \
     dhcp\
"

using bitbake dhcp runs fine, but

bitbake my image (see pastbin) results in


| Configuring iftop.
| Collected errors:
|  * opkg_install_cmd: Cannot install package dhcp.
| WARNING:=20
/home/eich/overo/build/tmp/work/overo-poky-linux-gnueabi/dfki-console-image=
/1.0-r0/temp/run.do_rootfs.26292:1
exit 255 from
|   opkg-cl ${ipkg_args} install ${package_to_install}
| ERROR: Function failed: do_rootfs (log file is located at
/home/eich/overo/build/tmp/work/overo-poky-linux-gnueabi/dfki-console-image=
/1.0-r0/temp/log.do_rootfs.26292)
ERROR: Task 7 (/home/eich/overo/meta-dfki/images/dfki-console-image.bb,
do_rootfs) failed with exit code '1'
NOTE: Tasks Summary: Attempted 5620 tasks of which 5619 didn't need to be r=
erun and 1 failed.
No currently running tasks (5619 of 5621)

Summary: 1 task failed:
   /home/eich/overo/meta-dfki/images/dfki-console-image.bb, do_rootfs
Summary: There was 1 WARNING message shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.


Any ideas?

Cheers,

Markus




--
Dr.-Ing. Markus Eich

  Senior Researcher
  Marine Inspection Robotics
  Space Robotics
 =20
  Besuchsadresse der Nebengesch=E4ftstelle:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Stra=DFe 5
  28359 Bremen, Germany
 =20
  Postadresse der Hauptgesch=E4ftsstelle Standort Bremen:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Stra=DFe 1
  28359 Bremen, Germany

  Tel.:     +49 421 178 45-4105
  Zentrale: +49 421 178 45-0
  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
  E-Mail:   markus.eich@dfki.de

  Weitere Informationen: http://www.dfki.de/robotik
  -----------------------------------------------------------------------
  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
  Firmensitz: Trippstadter Stra=DFe 122, D-67663 Kaiserslautern
  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
  (Vorsitzender) Dr. Walter Olthoff
  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
  Amtsgericht Kaiserslautern, HRB 2313
  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
  USt-Id.Nr.:    DE 148646973
  Steuernummer:  19/673/0060/3
  -----------------------------------------------------------------------

--
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

