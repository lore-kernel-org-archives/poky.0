Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 675C04C8043A
	for <poky@yoctoproject.org>; Wed, 25 May 2011 09:58:11 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4PEwAo3001490;
	Wed, 25 May 2011 15:58:10 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01053-08; Wed, 25 May 2011 15:58:06 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4PEw01F001472
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 25 May 2011 15:58:01 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1306319204.git.paul.eggleton@linux.intel.com>
References: <cover.1306319204.git.paul.eggleton@linux.intel.com>
Date: Wed, 25 May 2011 15:57:58 +0100
Message-ID: <1306335478.27470.26.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/4] [meta-yocto] tidy up bbappends after oe-core changes
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
X-List-Received-Date: Wed, 25 May 2011 14:58:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-25 at 11:42 +0100, Paul Eggleton wrote:
> bbappends in meta-yocto need to be kept up-to-date with respect to changes
> in oe-core.
> 
> The following changes since commit 32a4e746273c3c7d3dd0f13b745bc0679cadaa44:
> 
>   codeparser.py: fix syntax error in exception handling (2011-05-24 17:16:47 +0100)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib paule/tidy-bbappends
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/tidy-bbappends
> 
> Paul Eggleton (4):
>   clutter: remove obsolete 1.4 bbappend from meta-yocto
>   qt4: remove obsolete 4.6.3 bbappend from meta-yocto
>   task-poky-sdk-gmae: rename bbappends to task-core-sdk-gmae in
>     meta-yocto
>   uclibc: rename bbappend in meta-yocto to match version in oe-core

Merged to master, thanks.

Shows we need those layer tools!

Cheers,

Richard


