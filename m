Return-Path: <ningx.ma@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89E0DE0072B
	for <poky@yoctoproject.org>; Wed,  7 Dec 2011 16:41:53 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2011 16:41:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="93725360"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 07 Dec 2011 16:41:48 -0800
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 8 Dec 2011 08:41:05 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 8 Dec 2011 08:41:04 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 8 Dec 2011
	08:41:03 +0800
From: "Ma, NingX" <ningx.ma@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 8 Dec 2011 08:41:02 +0800
Thread-Topic: poky Digest, Vol 15, Issue 5
Thread-Index: Acy1GumiFj3FXQFBS/Sq6icxXjofYAAJx0Sw
Message-ID: <789F9655DD1B8F43B48D77C5D306597312D5997F0D@shsmsx501.ccr.corp.intel.com>
References: <mailman.3.1323288001.7339.poky@yoctoproject.org>
In-Reply-To: <mailman.3.1323288001.7339.poky@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: poky Digest, Vol 15, Issue 5
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
X-List-Received-Date: Thu, 08 Dec 2011 00:41:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: poky-bounces@yoctoproject.org [mailto:poky-bounces@yoctoproject.org] =
On Behalf Of poky-request@yoctoproject.org
Sent: Thursday, December 08, 2011 4:00 AM
To: poky@yoctoproject.org
Subject: poky Digest, Vol 15, Issue 5

Send poky mailing list submissions to
	poky@yoctoproject.org

To subscribe or unsubscribe via the World Wide Web, visit
	https://lists.yoctoproject.org/listinfo/poky
or, via email, send a message with subject or body 'help' to
	poky-request@yoctoproject.org

You can reach the person managing the list at
	poky-owner@yoctoproject.org

When replying, please edit your Subject line so it is more specific than "R=
e: Contents of poky digest..."


Today's Topics:

   1. Re: Can't build glib-2.0 (Gary Thomas)


----------------------------------------------------------------------

Message: 1
Date: Wed, 07 Dec 2011 08:53:46 -0700
From: Gary Thomas <gary@mlbassoc.com>
To: Tom Rini <tom.rini@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [poky] Can't build glib-2.0
Message-ID: <4EDF8C0A.3020301@mlbassoc.com>
Content-Type: text/plain; charset=3DISO-8859-1; format=3Dflowed

On 2011-12-05 12:47, Tom Rini wrote:
> On Mon, Dec 5, 2011 at 10:11 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> OE Build Configuration:
>> BB_VERSION        =3D "1.15.0"
>> TARGET_ARCH       =3D "arm"
>> TARGET_OS         =3D "linux-gnueabi"
>> MACHINE           =3D "cobra3530p60"
>> DISTRO            =3D "amltd"
>> DISTRO_VERSION    =3D "1.1+snapshot-20111205"
>> TUNE_FEATURES     =3D "armv7a vfp neon cortexa8"
>> TARGET_FPU        =3D "vfp-neon"
>> meta
>> meta-yocto        =3D "master:e5b9ac3b71b6c16fb9a629f12e4d83103db2d5b0"
>>   ...
>> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Started
>> ERROR: Function 'do_install' failed (see
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/gli
>> b-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/gli
>> b-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> Log data follows:
>> | DEBUG: SITE files ['endian-little', 'bit-32', 'arm-common',
>> 'common-linux', 'common-glibc', 'arm-linux', 'arm-linux-gnueabi',=20
>> 'common']
>> | ERROR: Function 'do_install' failed (see
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/gli
>> b-2.0-1_2.30.1-r0/temp/log.do_install.8610
>> for further information)
>> |
>> /home/local/p60_poky/tmp/work/armv7a-vfp-neon-amltd-linux-gnueabi/glib-2=
.0-1_2.30.1-r0/temp/run.do_install.8610:
>> line 96: oe_runmake: command not found
>> NOTE: package glib-2.0-1_2.30.1-r0: task do_install: Failed
>>
>
> Have you made any changes recently?  Often this is a mismatch ', `, "
> or similar somewhere.
>

No local changes, it just wasn't working.  I updated master (again) to
   meta
   meta-yocto        =3D "master:f17e0ae38b2e6c4cbe7f0f9d76c3e1a386335fd1"
and now it builds.  Don't know what the problem was, but I'm happy with it =
working once again.

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------


------------------------------

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky


End of poky Digest, Vol 15, Issue 5
***********************************

