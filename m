Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8C97E4C80ABD
	for <poky@yoctoproject.org>; Thu, 31 Mar 2011 23:36:02 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 31 Mar 2011 21:36:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,280,1299484800"; d="scan'208";a="727780027"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga001.jf.intel.com with ESMTP; 31 Mar 2011 21:36:01 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 1 Apr 2011 12:35:52 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Fri, 1 Apr 2011
	12:35:52 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Poky Project <poky@yoctoproject.org>
Date: Fri, 1 Apr 2011 12:35:51 +0800
Thread-Topic: [poky] Autotools problem
Thread-Index: Acvu/92N0N223VNER7mVauXgOpWW6gBJkEtQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F15059F629DBAD@shsmsx502.ccr.corp.intel.com>
References: <4D936804.8030204@mlbassoc.com>
In-Reply-To: <4D936804.8030204@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Autotools problem
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
X-List-Received-Date: Fri, 01 Apr 2011 04:36:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Gary Thomas
> Sent: Thursday, March 31, 2011 1:28 AM
>=20
> I'm trying to build a recipe I imported from OE (tcpdump_4.1.1.bb)
> This used to build on Poky, but now fails.  I fixed the issue with
> the LIC_CHKSUM_FILES, but now I have a problem with the automatic
> [re]generation of the config files.
>=20
> Rebuilding in a fresh tree from today's master
> (6f4fbfe272f5d85cee95660a9278f3031533aec4),
> I'm getting this error
> | Perl lib version (5.12.2) doesn't match executable version (v5.10.1) at
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/perl/5.12.2/Config.p=
m
> line 50.
> | Compilation failed in require at
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/perl/5.12.2/File/Cop=
y.p
> m line 14.
> | BEGIN failed--compilation aborted at
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/perl/5.12.2/File/Cop=
y.p
> m line 14.
> | Compilation failed in require at
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/share/autoconf/Autom4te/
> FileUtils.pm line 166.
> | BEGIN failed--compilation aborted at
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/share/autoconf/Autom4te/
> FileUtils.pm line 166.
> | Compilation failed in require at
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/bin/autom4te line 41.
> | BEGIN failed--compilation aborted at
> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/bin/autom4te line 41.
>=20
> This leads to a cascade of other problems because the configure script is=
 out of
> date :-(

could you post other problems too? Though above does be an issue, it may ca=
use
real problem...

Thanks
Kevin

>=20
> Any ideas what's going on?
>=20
> Note: you can look at the recipe at
> http://www.mlbassoc.com/poky/recipes/tcpdump

