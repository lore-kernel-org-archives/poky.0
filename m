Return-Path: <edwin.zhai@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 55D214C8006D
	for <poky@yoctoproject.org>; Mon, 31 Jan 2011 01:24:08 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jan 2011 23:24:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,403,1291622400"; d="scan'208";a="652757169"
Received: from shxpwgzhai1a.ccr.corp.intel.com (HELO [10.239.48.130])
	([10.239.48.130])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jan 2011 23:24:07 -0800
Message-ID: <4D46639A.4000000@intel.com>
Date: Mon, 31 Jan 2011 15:24:10 +0800
From: "Zhai, Edwin" <edwin.zhai@intel.com>
User-Agent: Thunderbird 2.0.0.17 (Windows/20080914)
MIME-Version: 1.0
To: "Cui, Dexuan" <dexuan.cui@intel.com>
References: <cover.1296399890.git.dexuan.cui@intel.com>
	<2E18009D-3031-4DBD-8185-62182404D5C5@dominion.thruhere.net>
	<1865303E0DED764181A9D882DEF65FB685EBCB6C41@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685EBCB6C41@shsmsx502.ccr.corp.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [Dexuan: Jan 30: gdk-pixbuf: PULL 0/1] gdk-pixbuf: add jpeg into DEPENDS
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
X-List-Received-Date: Mon, 31 Jan 2011 07:24:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Koen,

The gtk+ on OE is not latest version, that is, gdk-pixbuf is still part 
of it. I think the function is not clear-cut.

On poky, gtk+ is latest stable version, where gdk-pxibuf is separated as 
a stand-alone bb file. Running of gdk-pixbuf-csource need one config 
file produced by gdk-pixbuf-query-loaders, so native and target 
packages' installation are different. Target package need postinst to 
run it when 1st boot, while native package need install_append to run it 
before populate_sysroot.

Does it make sense? Is there any way to avoid duplicatation?

Thanks,
edwin


Cui, Dexuan wrote:
>
> Koen Kooi wrote:
> > Op 30 jan 2011, om 16:06 heeft Dexuan Cui het volgende geschreven:
> >
> >> From: Dexuan Cui <dexuan.cui@intel.com>
> >>
> >> meta/recipes-gnome/gdk-pixbuf/gdk-pixbuf_2.22.1.bb |    2 ++
> >
> > OE is using BBCLASS_EXTEND in gtk+ to provide the pixbug loaders,
> > doing this in yocto would reduce duplicate functionality a lot.
> Hi Koen,
> I think you meant in Poky whether we could add BBCLASSEXTEND = 
> "native" into  gdk-pixbuf_2.22.1.bb and remove 
> gdk-pixbuf-native_2.22.1.bb.
>
> The two recipes look quite different so I doubt we can do that. Let me 
> Cc the original patch submitter Edwin for the background.
>
> Thanks,
> -- Dexuan
>

