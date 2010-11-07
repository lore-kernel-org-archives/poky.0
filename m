Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 897384C81003
	for <poky@lists.pokylinux.org>; Sun,  7 Nov 2010 01:33:22 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Nov 2010 23:33:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,309,1286175600"; d="scan'208";a="345530827"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by azsmga001.ch.intel.com with ESMTP; 06 Nov 2010 23:33:14 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Sun, 7 Nov 2010 14:30:23 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Sun, 7 Nov 2010
	14:29:46 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Gary Thomas <gary@mlbassoc.com>, Poky <poky@lists.pokylinux.org>
Date: Sun, 7 Nov 2010 14:29:43 +0800
Thread-Topic: [poky] Crazy QT packaging
Thread-Index: Act9skc1zb8uBKdhSDOIxxtjLqcXkgAke4HA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D190FD7B0@shsmsx502.ccr.corp.intel.com>
References: <4CD550D9.30601@mlbassoc.com>
In-Reply-To: <4CD550D9.30601@mlbassoc.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Crazy QT packaging
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
X-List-Received-Date: Sun, 07 Nov 2010 06:33:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Gary Thomas
>Sent: Saturday, November 06, 2010 8:58 PM
>
>I just tried to install 'fotowall', a QT application.  Much to
>my surprise, a whole bunch of QT packages were installed, many
>of which I have no need and don't understand why they are "required".
>
>In particular, the examples and demos, plus QT-designer (I have
>no development tools installed on my platform).
>
>Any ideas why this happens?  how to fix it?
>
>Install log is attached.
>

qt4.inc recommends all packages but some of them should be selectively
depended by actual recipe. Could you report a bug for it?

BTW, fotowall doesn't really work yet. There're several hard bugs reported =
around
fotowall, e.g. 348, 349, 336, 280, ...)

Thanks
Kevin

