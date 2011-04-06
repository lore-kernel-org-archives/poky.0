Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 985194C80050
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 14:12:19 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36JCEdR027158;
	Wed, 6 Apr 2011 20:12:14 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23821-06; Wed,  6 Apr 2011 20:12:07 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36JBsk6027105
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 6 Apr 2011 20:12:00 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Rifenbark <srifenbark@gmail.com>
In-Reply-To: <cover.1302026025.git.scott.m.rifenbark@intel.com>
References: <cover.1302026025.git.scott.m.rifenbark@intel.com>
Date: Wed, 06 Apr 2011 11:21:33 -0700
Message-ID: <1302114093.22904.73.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] [DOCS] ADT Manual updates
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
X-List-Received-Date: Wed, 06 Apr 2011 19:12:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-05 at 13:23 -0500, Scott Rifenbark wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> Updated the makefile so that the tar command includes the PDF file.
> The other commit I thought had been merged but is showing up when I 
> create the pull request.  Please be sure it is in master.  If it has 
> not been merged please merge it.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/adt-work
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/adt-work
> 
> Thanks,
>     Scott Rifenbark <scott.m.rifenbark@intel.com>
> ---
> 
> 
> Scott Rifenbark (2):
>   documentation/adt-manual/adt-eclipse.xml:  Updated repo URL for
>     Eclipse Plug-in
>   documentation/adt-manual/Makefile: Added PDF file to the tarball
> 
>  documentation/adt-manual/Makefile        |    2 +-
>  documentation/adt-manual/adt-eclipse.xml |    2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)

Merged to master, thanks.

Richard


