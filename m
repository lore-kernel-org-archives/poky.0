Return-Path: <Jingdong.Lu@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CFD784C80815
	for <poky@yoctoproject.org>; Mon,  8 Nov 2010 22:52:19 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oA94qI1p005819;
	Mon, 8 Nov 2010 20:52:18 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 8 Nov 2010 20:52:18 -0800
Received: from [128.224.162.176] ([128.224.162.176]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 8 Nov 2010 20:52:17 -0800
From: Lu Jingdong <jingdong.lu@windriver.com>
To: Saul Wold <saul.wold@intel.com>
In-Reply-To: <4CD8AFD4.3060606@intel.com>
References: <1289199612.1683.4.camel@eric-desktop> <4CD8AFD4.3060606@intel.com>
Date: Tue, 09 Nov 2010 12:52:34 +0800
Message-ID: <1289278354.15591.20.camel@eric-desktop>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-OriginalArrivalTime: 09 Nov 2010 04:52:18.0324 (UTC)
	FILETIME=[E2F7DD40:01CB7FC9]
Cc: poky@yoctoproject.org
Subject: Re: [PULL]Fix moving libtcl8.5.so into tcl-lib.
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
X-List-Received-Date: Tue, 09 Nov 2010 04:52:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Saul:

    tcl provides only one library named "libtcl8.5.so" and it hasn't
libraries named like "libtcl8.5.so.*". So when we use "so.*" in  FILES_
${PN}-lib = "${libdir}/libtcl8.5.so.*", we can't include "libtcl8.5.so"
into "tcl-lib" package and we can't get the package "tcl-lib" because it
is a empty package.

    It doesn't like other libraries. For example, libxcb provides 
"libxcb-glx.so.0.0.0", "libxcb-glx.so.0" and "libxcb-glx.so". Among of
them, "libxcb-glx.so.0" and "libxcb-glx.so" are symbol links of
"libxcb-glx.so.0.0.0", so we can use the "so.*" and it includes the
following two files("libxcb-glx.so.0.0.0" and "libxcb-glx.so.0"). The
file "libxcb-glx.so" is in the "libxcb-dev" package. I am not sure
whether "libxcb-glx.so" should in the "libxcb-dev".

On Mon, 2010-11-08 at 18:20 -0800, Saul Wold wrote:
> On 11/07/2010 11:00 PM, Lu Jingdong wrote:
> > Note:<commit_id>  parameter assumed as 'HEAD'
> >
> >    meta/recipes-devtools/tcltk/tcl_8.5.8.bb                 |    4
> >    1 files changed, 2 insertions(+), 2 deletions(-)
> >
> > Jingdong Lu (1):
> >        Fix moving libtcl8.5.so into tcl-lib.
> >
> > Pull URL:
> > http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=jingdonglu/distro
> >
> Jingdong:
> 
> Can you give some additional rational as to why this change is needed, 
> other recipes use the "so.*" format vs the "so*".
> 
> Thanks
> 	Sau!
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
Lu Jingdong
jingdong.lu@windriver.com
China, Wind River


