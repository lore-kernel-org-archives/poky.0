Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 94AA74C800AC
	for <poky@yoctoproject.org>; Tue, 29 Mar 2011 05:43:47 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TAhieK018683;
	Tue, 29 Mar 2011 11:43:44 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18643-01; Tue, 29 Mar 2011 11:43:40 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2TAhZvb018677
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 29 Mar 2011 11:43:38 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
In-Reply-To: <c9789f2d0873c6b8ff2ae3a7b338b72527cfbf02.1301388474.git.dexuan.cui@intel.com>
References: <cover.1301388474.git.dexuan.cui@intel.com>
	<c9789f2d0873c6b8ff2ae3a7b338b72527cfbf02.1301388474.git.dexuan.cui@intel.com>
Date: Tue, 29 Mar 2011 11:43:30 +0100
Message-ID: <1301395410.24596.22.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [OE-core] [PATCH 1/1] qt4: remove the option -feliminate-dwarf2-dups to fix the build
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
X-List-Received-Date: Tue, 29 Mar 2011 10:43:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-03-29 at 16:52 +0800, Dexuan Cui wrote:
> From: Dexuan Cui <dexuan.cui@intel.com>
> 
> [YOCTO #932]
> 
> After commit 5ea06dc295b657383fd97545c15255b294cf1a79(bitbake.conf: Prune
> global OPTIMIZATION flags) that adds an option -feliminate-dwarf2-dups,
> gcc 4.5 reports such an internal compiler error when building Qt4 if the
> option is used:
> 
> | graphicsview/qgridlayoutengine.cpp:1553:1: internal compiler error: in build_abbrev_table, at dwarf2out.c:9806
> | Please submit a full bug report,
> | with preprocessed source if appropriate.
> | See <http://gcc.gnu.org/bugs.html> for instructions.
> 
> This is a gcc bug: http://gcc.gnu.org/bugzilla/show_bug.cgi?id=47361
> 
> At present we can remove the option as a workaround.
> 
> Thanks Robert Berger for reporting the bug and his investigation in gcc
> bugzilla and thanks Khem Raj for the quick suggestion about removing
> the option.

How about we add the patch for this issue:

http://gcc.gnu.org/ml/gcc-patches/2011-01/msg01647.html

?

Cheers,

Richard


