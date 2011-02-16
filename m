Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1C37B4C8006D
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 20:00:53 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1G20rgq027123
	for <poky@yoctoproject.org>; Tue, 15 Feb 2011 18:00:53 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 18:00:53 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Tue, 15 Feb 2011 18:00:52 -0800
Message-ID: <4D5B2FD4.7060409@windriver.com>
Date: Tue, 15 Feb 2011 20:00:52 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
X-OriginalArrivalTime: 16 Feb 2011 02:00:53.0089 (UTC)
	FILETIME=[5762CD10:01CBCD7D]
Subject: A few issues with sstate
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
X-List-Received-Date: Wed, 16 Feb 2011 02:00:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm working on reproducing a problem with the emenlow and RPM configuration, but
I noticed a few things.

When using sstate as the package base, I got an error from copytree (sorry I
lost the logs), but it didn't stop the build -- and I didn't see the item that
got the copytree error be built from sources.

The second though seems to be more important.  The packages that are installed
into the deploy directories other then "emenlow" and "core2" did not get
repopulated.  Specifically this affects the 'all' packages.

In my current build this includes:
hal-info-20091130-r0.all.rpm            resolvconf-doc-1.48-r0.all.rpm
x11-common-0.1-r40.all.rpm
hal-info-dbg-20091130-r0.all.rpm        sato-icon-theme-0.4.1-r0.all.rpm
x11-common-dbg-0.1-r40.all.rpm
hal-info-dev-20091130-r0.all.rpm        sato-icon-theme-dbg-0.4.1-r0.all.rpm
x11-common-dev-0.1-r40.all.rpm
hicolor-icon-theme-0.12-r0.all.rpm      sato-icon-theme-dev-0.4.1-r0.all.rpm
xcursor-transparent-theme-0.1.1-r3.all.rpm
hicolor-icon-theme-dbg-0.12-r0.all.rpm  update-modules-1.0-r8.all.rpm
xcursor-transparent-theme-dbg-0.1.1-r3.all.rpm
hicolor-icon-theme-dev-0.12-r0.all.rpm  update-modules-dbg-1.0-r8.all.rpm
xcursor-transparent-theme-dev-0.1.1-r3.all.rpm
liberation-fonts-1.04-r0.all.rpm        update-modules-dev-1.0-r8.all.rpm
xorg-minimal-fonts-1.0-r0.all.rpm
resolvconf-1.48-r0.all.rpm              update-rc.d-0.7-r3.all.rpm
xserver-nodm-init-1.0-r23.all.rpm
resolvconf-dbg-1.48-r0.all.rpm          update-rc.d-dbg-0.7-r3.all.rpm
xserver-nodm-init-dbg-1.0-r23.all.rpm
resolvconf-dev-1.48-r0.all.rpm          update-rc.d-dev-0.7-r3.all.rpm
xserver-nodm-init-dev-1.0-r23.all.rpm

I had to issue a "cleanall" on each of them in order to repopulate the all
directory.

--Mark

