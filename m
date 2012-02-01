Return-Path: <bryan.odonoghue@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87A20E00595
	for <poky@yoctoproject.org>; Wed,  1 Feb 2012 05:24:01 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 01 Feb 2012 05:24:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102673209"
Received: from irsmsx602.ger.corp.intel.com ([163.33.3.242])
	by orsmga001.jf.intel.com with ESMTP; 01 Feb 2012 05:23:59 -0800
Received: from irsmsx101.ger.corp.intel.com (163.33.3.153) by
	irsmsx602.ger.corp.intel.com (163.33.3.242) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 1 Feb 2012 13:23:51 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.194]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.99]) with mapi id
	14.01.0355.002; Wed, 1 Feb 2012 13:23:51 +0000
From: "O'donoghue, Bryan" <bryan.odonoghue@intel.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Simple recipe for local kernel/git development 
Thread-Index: Aczg5Lsq1kNAnw5fTi+r4rArs7nwOg==
Date: Wed, 1 Feb 2012 13:23:51 +0000
Message-ID: <B80010913FB1F346A630B7F2E18A60C007897E@IRSMSX102.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-cr-hashedpuzzle: BXyh Bp2g BsY2 DT5n EBkU EIV6 EuYF HLyw HeCo IEkS J7Re
	K57r LARz LCKL LNFr
	MV6o; 1; cABvAGsAeQBAAHkAbwBjAHQAbwBwAHIAbwBqAGUAYwB0AC4AbwByAGcA;
	Sosha1_v1; 7; {527A8C15-E34B-4DD8-860C-61E8B97A7EE7};
	YgByAHkAYQBuAC4AbwBkAG8AbgBvAGcAaAB1AGUAQABpAG4AdABlAGwALgBjAG8AbQA=;
	Wed, 01 Feb 2012 13:23:48 GMT;
	UwBpAG0AcABsAGUAIAByAGUAYwBpAHAAZQAgAGYAbwByACAAbABvAGMAYQBsACAAawBlAHIAbgBlAGwALwBnAGkAdAAgAGQAZQB2AGUAbABvAHAAbQBlAG4AdAA=
x-cr-puzzleid: {527A8C15-E34B-4DD8-860C-61E8B97A7EE7}
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Simple recipe for local kernel/git development
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
X-List-Received-Date: Wed, 01 Feb 2012 13:24:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all.

I'd like to have bitbake take a kernel in a local git repository and use a =
defconfig in the same directory as my bitbake recipe, to configure the kern=
el.

So far I keep running into a requirement to have a "meta" branch which cont=
ains various kernel config options. I'd rather not have to store my kernel =
config in a separate "meta" branch whilst developing/configing the kernel.

My understanding is that I'd have to have the development sources in "maste=
r" with the kernel configuration in "meta" - which is not ideal.

In the ideal - we have one "master" branch for the kernel in the git repo -=
 and have a full and complete defconfig applied to that branch - ideal for =
internal development that is, I'm not suggesting this as a release method.

What's the simple bitbake/yocto-newbie friendly way to accomplish this ? On=
e defconfig is by far my preference.

Here's the recipe so far - is there any way to do what I want to do without=
 a "meta" branch containing the kernel config ?

#####################################################

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

# Set branch pointers
KMACHINE =3D "master"
KBRANCH =3D ${KMACHINE}
#KMETA =3D meta

# Set version - required ??
LINUX_VERSION ?=3D "3.2.0"

# We want a directory named linux-yocto-dev (I think)
PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-dev"

# Use yocto/standard/base for all machines
SRCREV=3D${AUTOREV}
SRCREV_machine_pn-linux-yocto-dev ?=3D ${AUTOINC}
SRCREV_meta_pn-linux-yocto-dev ?=3D ${AUTOINC}=20

PR =3D "r0"
PV =3D "${LINUX_VERSION}+git${SRCPV}"
SRCREV_FORMAT =3D "meta_machine"


# Set KSRC to poky/linux-yocto-dev
KSRC_linux_yocto_dev ?=3D ${COREBASE}/linux-yocto-dev

# Set SRC_URI
KSRC_linux_yocto_dev ?=3D ${COREBASE}/linux-yocto-dev
SRC_URI =3D "git://${KSRC_linux_yocto_dev};protocol=3Dfile;nocheckout=3D1;b=
ranch=3D${KBRANCH},meta;name=3Dmachine,meta\
	  file://defconfig.cfg"

KERNEL_REVISION_CHECKING=3D
#BB_LOCALCOUNT_OVERRIDE =3D "1"
LOCALCOUNT =3D "0"

FILESEXTRAPATHS :=3D "${THISDIR}/${PN}"
COMPATIBLE_MACHINE =3D ${MACHINE}

# Functionality flags
KERNEL_FEATURES=3D""

# Drop linux-tools.inc to avoid building perf and pulling in perl, python, =
and
# elfutils.
-------------------------------------------------------------
Intel Ireland Limited (Branch)
Collinstown Industrial Park, Leixlip, County Kildare, Ireland
Registered Number: E902934

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


