Return-Path: <ke.yu@intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA96F4C80039
	for <poky@lists.pokylinux.org>; Mon,  6 Dec 2010 01:10:50 -0600 (CST)
Received: by pug.o-hand.com (Postfix)
	id 7018312EC1F7; Mon,  6 Dec 2010 01:48:54 -0600 (CST)
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by pug.o-hand.com (Postfix) with ESMTP id 3276D12EC11B
	for <poky@o-hand.com>; Mon,  6 Dec 2010 01:48:54 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Dec 2010 23:10:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,305,1288594800"; d="scan'208";a="684242587"
Received: from kyu3-dev32.bj.intel.com (HELO localhost) ([10.238.154.168])
	by orsmga001.jf.intel.com with ESMTP; 05 Dec 2010 23:10:48 -0800
Date: Mon, 6 Dec 2010 12:42:04 +0800
From: Yu Ke <ke.yu@intel.com>
To: Saul Wold <saul.wold@intel.com>
Message-ID: <20101206044204.GA28648@kyu3-hedt>
References: <4CF6F810.7030605@intel.com>
MIME-Version: 1.0
In-Reply-To: <4CF6F810.7030605@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@o-hand.com" <poky@o-hand.com>
Subject: Re: Updated Checksum List
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
X-List-Received-Date: Mon, 06 Dec 2010 07:10:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Saul,

when I add the license checksum for x11-common, xserver-nodm-init, I find they are GPLv2 license, not MIT, so should we add a GPL license file, like file://${POKYBASE}/meta/COPYING.GPLv2? Dongxiao also meet similar issue.

Regards
Ke

On Dec 01, 17:36, Saul Wold wrote:
> 
> Folks,
> 
> We are now down to 58 recipes that require checksum updates, many of
> those are images/tasks or other poky related recipes.  Richard and I
> have agreed that the LIC_FILES_CHKSUM for those recipes should use
> 
> LIC_FILES_CHKSUM =
> "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
> file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> 
> Therefore, I did not accept the changes for n/a.
> 
> It seems that there are about 20 of the tasks and meta recipes,
> which leaves about 40 remaining to compute checksums for.
> 
> Thanks again to the team for pushing this to completion.

> "task-poky","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "hostap-conf","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "task-poky-lsb","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "initscripts","Kevin Tian <kevin.tian@intel.com>",0,1,1,1,1,0,"None"
> "mutter","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,"2.28.1+git0+c96345dd81176f171c2d15dd9d5c5b20f334f842","2.29.1_0.4",0,"None"
> "groff","None",0,0,0,"1.18.1.4","None",0,"None"
> "x11-common","Yu Ke <ke.yu@intel.com>",0,1,1,0.1,0.1,0,"None"
> "initramfs-live-install","Kevin Tian <kevin.tian@intel.com>",0,1,1,1,1,0,"None"
> "libexif","Qing He <qing.he@intel.com>",0,1,0,"0.6.16","0.6.19",0,"None"
> "task-poky-sdk","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "formfactor","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,0,0,0,"None"
> "modutils-initscripts","Kevin Tian <kevin.tian@intel.com>",0,1,1,1,1,0,"None"
> "keymaps","Kevin Tian <kevin.tian@intel.com>",0,1,1,1,1,0,"None"
> "web","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,"0.0+svnr97","None",0,"None"
> "task-poky-x11-sato","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "update-modules","Qing He <qing.he@intel.com>",0,1,1,1,1,0,"None"
> "xserver-nodm-init","Yu Ke <ke.yu@intel.com>",0,1,1,1,1,0,"None"
> "libsoup","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,02/02/00,"None",0,"None"
> "clutter","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,"1.0.0+git0+e957e277b8a4893ce8c99e94402036d42a8b3748",01/02/08,0,"None"
> "task-base","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "task-poky-tools","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "tidy","Edwin Zhai <edwin.zhai@intel.com>",0,1,1,"0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb","0.1.0+git0+e25416e1293e1074bfa6727c80527dcff5b1f3cb",0,"None"
> "rpm","Joshua Lock <joshua.lock@intel.com>",0,1,0,05/01/10,04/08/00,0,"None"
> "x11vnc","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,"0.9.3","0.9.11_dev",0,"None"
> "usbinit","Qing He <qing.he@intel.com>",0,1,0,1,"n/a",0,"None"
> "makedevs","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,"1.0.0","1.0.0",0,"None"
> "task-poky-standalone-gmae-sdk-target","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "initramfs-boot","Kevin Tian <kevin.tian@intel.com>",0,1,1,1,1,0,"None"
> "bluez-hcidump","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1.42,1.42,0,"None"
> "task-poky-sdk-gmae","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "initramfs-live-boot","Kevin Tian <kevin.tian@intel.com>",0,1,1,1,1,0,"None"
> "task-poky-basic","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "patch","Nitin A Kamble <nitin.a.kamble@intel.com>",0,1,0,02/05/09,"None",0,"None"
> "gnome-icon-theme","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,02/22/00,"2.30.2",0,"None"
> "gnome-desktop","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,02/26/02,"2.31.2",0,"None"
> "web-webkit","Zhai Edwin <edwin.zhai@intel.com>",0,1,1,"0.0+svnr110","0.0+svnr110",0,"None"
> "telepathy-glib","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,0,"0.13.5","0.11.6",0,"None"
> "gtk-theme-darkilouche","Edwin Zhai <edwin.zhai@intel.com>",0,1,1,1,1,0,"None"
> "gtkhtml2","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,"2.11.0+svnr1144",02/11/01,0,"None"
> "x11perf","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,1.5,01/05/01,0,"None"
> "pointercal","Zhai Edwin <edwin.zhai@intel.com>",0,1,1,0,0,0,"None"
> "orinoco-conf","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "task-poky-apps-x11-pimlico","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "udev-extraconf","Qing He <qing.he@intel.com>",0,1,1,0,0,0,"None"
> "task-poky-standalone-sdk-target","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "task-poky-qt","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "ppp-dialin","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,0,0.1,"check",0,"None"
> "qemu-config","Qing He <qing.he@intel.com>",0,1,1,1,1,0,"None"
> "tcl","Nitin A Kamble <nitin.a.kamble@intel.com>",0,1,0,08/05/08,08/05/09,0,"None"
> "meta-ide-support","Joshua Lock <joshua.lock@intel.com>",0,1,0,1,"None",0,"None"
> "task-poky-nfs","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "task-poky-boot","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "eee-acpi-scripts","Kevin Tian <kevin.tian@intel.com>",0,1,0,"0.0+gitdf785afdacedf869b20fb88a793c13b539819270","1.1.10+eaaa266e8c3b91b19d8ac861334b41ce7530e8c5",0,"None"
> "gtk-engines","Edwin Zhai <edwin.zhai@intel.com>",0,1,0,02/14/00,2.18,0,"None"
> "fstests","Nitin A Kamble <nitin.a.kamble@intel.com>",0,1,0,"0.0+svnr266","0.0+svnr426",1,"svnr266 is poky default"
> "bluez-dtl1-workaround","Dongxiao Xu <dongxiao.xu@intel.com>",0,1,1,1,1,0,"None"
> "xserver-xf86-config","Yu Ke <ke.yu@intel.com>",0,1,1,0.1,0.1,0,"None"
> "run-postinsts","Dongxiao Xu <dongxiao.xu@intel.com",0,1,0,1,"None",0,"None"
> "clutter-1.0","Edwin Zhai <edwin.zhai@intel.com>",0,1,1,"1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4","1.0+git0+ce5025d0a2b701541ca9343686f9dac858905da4",0,"None"
> 

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


