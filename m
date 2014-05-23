Return-Path: <markus.eich@dfki.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 619F6E00BAA; Fri, 23 May 2014 08:04:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE,T_HK_NAME_DR
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 T_HK_NAME_DR T_HK_NAME_DR
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from sea-mail.dfki.de (unknown [134.96.191.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1699DE00BAD
	for <poky@yoctoproject.org>; Fri, 23 May 2014 08:03:40 -0700 (PDT)
Received: from sea-mail.dfki.de (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id
	9DC0CB1979_37F634BB; Fri, 23 May 2014 15:03:39 +0000 (GMT)
Received: from mail.dfki.de (lnv-104.sb.dfki.de [134.96.191.146])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate)
	by sea-mail.dfki.de (Sophos Email Appliance) with ESMTPS id
	65E7CB12A5_37F634BF; Fri, 23 May 2014 15:03:39 +0000 (GMT)
Received: from [10.250.3.14] (unknown [10.250.3.14])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.dfki.de (Postfix) with ESMTPSA id 474F2310C2;
	Fri, 23 May 2014 17:03:39 +0200 (CEST)
Message-ID: <537F634A.5010305@dfki.de>
Date: Fri, 23 May 2014 17:03:38 +0200
From: "Dr. Markus Eich" <markus.eich@dfki.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: "Iorga, Cristian" <cristian.iorga@intel.com>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <537E1644.9040003@dfki.de>
	<969F26A8BAB325438E7EB80D3C3134FB1CEB4D96@IRSMSX105.ger.corp.intel.com>
In-Reply-To: <969F26A8BAB325438E7EB80D3C3134FB1CEB4D96@IRSMSX105.ger.corp.intel.com>
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
X-List-Received-Date: Fri, 23 May 2014 15:04:00 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

Thank you that did the trick. I have now installed dhclient on the image.

using

INSTALL +="dhcp-client"

But I somehow cannot enable it in systemd.

on the target machine I have lots of .service scripts in

/lib/systemd/system

but all the dhcp services are missing. I have found that there is a recipe

dhcp_4.2.5-P1.bbappend

in meta-openembedded/meta-systemd/oe-core/recipes-connectivity/dhcp

which uses

do_install_append() {
     install -d ${D}${systemd_unitdir}/system
     install -m 0644 ${WORKDIR}/dhcpd.service ${D}${systemd_unitdir}/system
     install -m 0644 ${WORKDIR}/dhclient.service 
${D}${systemd_unitdir}/system
     install -m 0644 ${WORKDIR}/dhcrelay.service 
${D}${systemd_unitdir}/system
}


but it seems that it is not installed. How can I tell my recipe to add 
the corresponding services?

Cheers,

Markus





Am 23.05.2014 15:21, schrieb Iorga, Cristian:
> Hello Markus,
>
> By running:
> bitbake dhcp
> you actually will run the dhcp recipe and all tasks that goes into it (that will create packages, among other things).
> By adding IMAGE_INSTALL, you try to add a certain package into the build.
> I will recommend to use CORE_IMAGE_EXTRA_INSTALL anyhow.
> Now, the dhcp recipe will build the following packages:
> dhcp-server, dhcp-server-config, dhcp-client, dhcp-relay, etc.
> I believe that you want to add one of this to your image (server, client, etc).
>
> Regards,
> Cristian Iorga
> YP
> Intel Corporation
>
> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] On Behalf Of Dr. Markus Eich
> Sent: Thursday, May 22, 2014 6:23 PM
> To: poky@yoctoproject.org
> Subject: [poky] Problem Building DHCP into image
>
> Dear all,
>
> I try to build a yocto image using the following receipe
>
> http://pastebin.com/SyW3MZrL
>
>
> The build config is
>
>
> Build Configuration:
> BB_VERSION        = "1.20.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "overo"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.5.1"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "dora:19745990465b37107142c5464008ca9f7959cc0b"
> meta-oe
> meta-networking   = "dora:ee173678383683e972c7d4d6f0ef5790bfa50274"
> meta-ros          = "master:821427d23adb33674da76dc34d8ab6983590fcd4"
> meta-overo        = "dora:49d78254783e7cd1da4b7695e0014d526fbb6d58"
> meta-dfki         = "master:d6156057fc7adc1585ec28505f63633e981f66d3"
>
> The problem is building the dhcp part, i.e.
>
> IMAGE_INSTALL += " \
>       dhcp\
> "
>
> using bitbake dhcp runs fine, but
>
> bitbake my image (see pastbin) results in
>
>
> | Configuring iftop.
> | Collected errors:
> |  * opkg_install_cmd: Cannot install package dhcp.
> | WARNING:
> /home/eich/overo/build/tmp/work/overo-poky-linux-gnueabi/dfki-console-image/1.0-r0/temp/run.do_rootfs.26292:1
> exit 255 from
> |   opkg-cl ${ipkg_args} install ${package_to_install}
> | ERROR: Function failed: do_rootfs (log file is located at
> /home/eich/overo/build/tmp/work/overo-poky-linux-gnueabi/dfki-console-image/1.0-r0/temp/log.do_rootfs.26292)
> ERROR: Task 7 (/home/eich/overo/meta-dfki/images/dfki-console-image.bb,
> do_rootfs) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 5620 tasks of which 5619 didn't need to be rerun and 1 failed.
> No currently running tasks (5619 of 5621)
>
> Summary: 1 task failed:
>     /home/eich/overo/meta-dfki/images/dfki-console-image.bb, do_rootfs
> Summary: There was 1 WARNING message shown.
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>
>
> Any ideas?
>
> Cheers,
>
> Markus
>
>
>
>
> --
> Dr.-Ing. Markus Eich
>
>    Senior Researcher
>    Marine Inspection Robotics
>    Space Robotics
>    
>    Besuchsadresse der Nebengesch‰ftstelle:
>    DFKI GmbH
>    Robotics Innovation Center
>    Robert-Hooke-Straﬂe 5
>    28359 Bremen, Germany
>    
>    Postadresse der Hauptgesch‰ftsstelle Standort Bremen:
>    DFKI GmbH
>    Robotics Innovation Center
>    Robert-Hooke-Straﬂe 1
>    28359 Bremen, Germany
>
>    Tel.:     +49 421 178 45-4105
>    Zentrale: +49 421 178 45-0
>    Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
>    E-Mail:   markus.eich@dfki.de
>
>    Weitere Informationen: http://www.dfki.de/robotik
>    -----------------------------------------------------------------------
>    Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
>    Firmensitz: Trippstadter Straﬂe 122, D-67663 Kaiserslautern
>    Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
>    (Vorsitzender) Dr. Walter Olthoff
>    Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
>    Amtsgericht Kaiserslautern, HRB 2313
>    Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
>    USt-Id.Nr.:    DE 148646973
>    Steuernummer:  19/673/0060/3
>    -----------------------------------------------------------------------
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Dr.-Ing. Markus Eich

  Senior Researcher
  Marine Inspection Robotics
  Space Robotics
  
  Besuchsadresse der Nebengesch‰ftstelle:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straﬂe 5
  28359 Bremen, Germany
  
  Postadresse der Hauptgesch‰ftsstelle Standort Bremen:
  DFKI GmbH
  Robotics Innovation Center
  Robert-Hooke-Straﬂe 1
  28359 Bremen, Germany

  Tel.:     +49 421 178 45-4105
  Zentrale: +49 421 178 45-0
  Fax:      +49 421 178 45-4150 (Faxe bitte namentlich kennzeichnen)
  E-Mail:   markus.eich@dfki.de

  Weitere Informationen: http://www.dfki.de/robotik
  -----------------------------------------------------------------------
  Deutsches Forschungszentrum fuer Kuenstliche Intelligenz GmbH
  Firmensitz: Trippstadter Straﬂe 122, D-67663 Kaiserslautern
  Geschaeftsfuehrung: Prof. Dr. Dr. h.c. mult. Wolfgang Wahlster
  (Vorsitzender) Dr. Walter Olthoff
  Vorsitzender des Aufsichtsrats: Prof. Dr. h.c. Hans A. Aukes
  Amtsgericht Kaiserslautern, HRB 2313
  Sitz der Gesellschaft: Kaiserslautern (HRB 2313)
  USt-Id.Nr.:    DE 148646973
  Steuernummer:  19/673/0060/3
  -----------------------------------------------------------------------


