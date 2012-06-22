Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA3A9E01426
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 02:12:52 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-63-199.range86-170.btcentralplus.com
	[86.170.63.199]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E7EE59C07
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 10:12:51 +0100 (BST)
Message-ID: <4FE43712.8000604@r-finger.com>
Date: Fri, 22 Jun 2012 10:12:50 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <9F69795E29C890408AC2DAF646C89BB379D8AB96AC@MAILBOX.arc.local>
In-Reply-To: <9F69795E29C890408AC2DAF646C89BB379D8AB96AC@MAILBOX.arc.local>
Subject: Re: Installing shared libraries for custom application
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
X-List-Received-Date: Fri, 22 Jun 2012 09:12:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi,

On 22/06/12 09:38, Fletzer Martin wrote:
> But now I'm not able to install shared libraries of ncurses for a custom image. Namely libform, libmenu, and libpanel.
> I always get a "Error: Nothing PROVIDES ..."

'Nothing PROVIDES' means there is no bb recipe that provides the a
dependency, i.e., there is no bb recipe that declares it provides
'libform'. The libform package is generated dynamically from the ncurses
package, so the correct DEPENDS (which denotes a *build-time*
dependency), is 'ncurses'.


> How can I install this  shared libraries to a custom image?

If your application links against libform, then this should be
automatically pulled into the image; you can manually add something to a
package run-time dependencies by adding it to the RDEPENDS variable (as
Jack says, in this case that should be 'ncurses-libform'), but you
should only need to do this for a library if the application dlopens it.

I hope this helps,

Tomas


> 
> Thanks,
> Martin
> 
> 
> MARTIN FLETZER
> Engineer
> Safety & Security Department
> Video and Security Technology
> 
> AIT Austrian Institute of Technology GmbH
> M +43 664 8251090  |  F +43 50550-4150
> Donau-City-Straße 1  |  1220 Vienna  | Austria
> martin.fletzer@ait.ac.at<mailto:martin.fletzer@ait.ac.at>  |  http://www.ait.ac.at<http://www.ait.ac.at/>
> 
> FN: 115980 i HG Wien  |  UID: ATU14703506
> This email and any attachments thereto, is intended only for use by the addressee(s) named herein and may contain legally privileged and/or confidential information. If you are not the intended recipient, please notify the sender by return e-mail or by telephone and delete this message from your system and any printout thereof. Any unauthorized use, reproduction, or dissemination of this message is strictly prohibited. Please note that e-mails are susceptible to change. AIT Austrian Institute of Technology GmbH shall not be liable for the improper or incomplete transmission of the information contained in this communication, nor shall it be liable for any delay in its receipt.
> 
> 
> 
> 
> 
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


