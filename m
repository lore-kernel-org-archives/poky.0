Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 66DD64C80A54
	for <poky@yoctoproject.org>; Mon, 16 May 2011 16:26:21 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2011 14:26:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,221,1304319600"; 
   d="scan'208";a="2992586"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2011 14:26:14 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi;
	Mon, 16 May 2011 14:26:13 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Mon, 16 May 2011 14:26:13 -0700
Thread-Topic: [poky] GCC 4.6.0 on ARM?
Thread-Index: AcwP8dMgNEJu9o2ITX6/+LJtalFlCAEHdP3A
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94D8A2E4FE@orsmsx504.amr.corp.intel.com>
References: <4DB99F31.4000308@mlbassoc.com>
	<BANLkTikaf3MHYrnbvHDno3dSv_LhsLyFVg@mail.gmail.com>
	<BANLkTi=G-4UfXNdnJSy7qF3gb0-xLr6+4Q@mail.gmail.com>
	<4DBEAA2C.1020601@mlbassoc.com>
	<9DA5872FEF993D41B7173F58FCF6BE94D88F0101@orsmsx504.amr.corp.intel.com>
	<4DCA6C60.6050203@mlbassoc.com>
	<9DA5872FEF993D41B7173F58FCF6BE94D88F0328@orsmsx504.amr.corp.intel.com>
	<4DCAADC0.9030106@mlbassoc.com>
In-Reply-To: <4DCAADC0.9030106@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Poky Project <poky@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: GCC 4.6.0 on ARM?
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
X-List-Received-Date: Mon, 16 May 2011 21:26:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Gary,
 I tried with qemuarm machine in the yocto tree. And I find the usb devices=
 are working when compiled with gcc 4.6.0

Thanks,
Nitin

root@qemuarm:~# usb-devices =20

T:  Bus=3D01 Lev=3D00 Prnt=3D00 Port=3D00 Cnt=3D00 Dev#=3D  1 Spd=3D12  MxC=
h=3D 3
D:  Ver=3D 1.10 Cls=3D09(hub  ) Sub=3D00 Prot=3D00 MxPS=3D64 #Cfgs=3D  1
P:  Vendor=3D1d6b ProdID=3D0001 Rev=3D02.06
S:  Manufacturer=3DLinux 2.6.37.6-yocto-standard+ ohci_hcd
S:  Product=3DOHCI Host Controller
S:  SerialNumber=3D0000:00:0c.0
C:  #Ifs=3D 1 Cfg#=3D 1 Atr=3De0 MxPwr=3D0mA
I:  If#=3D 0 Alt=3D 0 #EPs=3D 1 Cls=3D09(hub  ) Sub=3D00 Prot=3D00 Driver=
=3Dhub

T:  Bus=3D01 Lev=3D01 Prnt=3D01 Port=3D00 Cnt=3D01 Dev#=3D  2 Spd=3D12  MxC=
h=3D 0
D:  Ver=3D 1.10 Cls=3D00(>ifc ) Sub=3D00 Prot=3D00 MxPS=3D 8 #Cfgs=3D  1
P:  Vendor=3D056a ProdID=3D0000 Rev=3D42.10
S:  Manufacturer=3DQEMU 0.14.0
S:  Product=3DWacom PenPartner
S:  SerialNumber=3D1
C:  #Ifs=3D 1 Cfg#=3D 1 Atr=3D80 MxPwr=3D80mA
I:  If#=3D 0 Alt=3D 0 #EPs=3D 1 Cls=3D03(HID  ) Sub=3D01 Prot=3D02 Driver=
=3Dwacom

root@qemuarm:~# dmesg | head
Linux version 2.6.37.6-yocto-standard+ (nitin@nbuild2.sc.intel.com) (gcc ve=
rsion 4.6.0 (GCC) ) #1 PREEMPT Fri May 13 13:55:35 PDT 2011
CPU: ARM926EJ-S [41069265] revision 5 (ARMv5TEJ), cr=3D00093177
CPU: VIVT data cache, VIVT instruction cache
Machine: ARM-Versatile PB
Memory policy: ECC disabled, Data cache writeback
On node 0 totalpages: 32768
free_area_init_node: node 0, pgdat c05640c0, node_mem_map c05c0000
  Normal zone: 256 pages used for memmap
  Normal zone: 0 pages reserved
  Normal zone: 32512 pages, LIFO batch:7



> -----Original Message-----
> From: Gary Thomas [mailto:gary@mlbassoc.com]
> Sent: Wednesday, May 11, 2011 8:40 AM
> To: Kamble, Nitin A
> Cc: Khem Raj; Poky Project; Patches and discussions about the oe-core
> layer
> Subject: Re: [poky] GCC 4.6.0 on ARM?
>=20
> On 05/11/2011 09:35 AM, Kamble, Nitin A wrote:
> >> Yes, that's the only change.  Building the kernel from the same
> >> source repository with 4.5.2 (using patches from you and Khem Raj)
> >> works perfectly.
> >>
> > Hi Gary,
> >    The yocto-linux kernel had to go through few changes to mute some
> compiler warnings with gcc 4.6.0. Are you building your own kernel?
>=20
> Yes.  It's roughly based on the Angstrom 2.6.37 with BeagleBoard
> support (I have additional OMAP boards which are not in the public
> tree).
>=20
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

