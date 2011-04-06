Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 30B504C80050
	for <poky@yoctoproject.org>; Wed,  6 Apr 2011 14:21:21 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36JLIgl028750;
	Wed, 6 Apr 2011 20:21:18 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 28577-03; Wed,  6 Apr 2011 20:21:14 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p36JL9dr028738
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 6 Apr 2011 20:21:12 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Rifenbark <srifenbark@gmail.com>
In-Reply-To: <cover.1302009987.git.scott.m.rifenbark@intel.com>
References: <cover.1302009987.git.scott.m.rifenbark@intel.com>
Date: Wed, 06 Apr 2011 11:18:23 -0700
Message-ID: <1302113903.22904.72.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 00/16] [DOCS] Poky Reference Manual Updates
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
X-List-Received-Date: Wed, 06 Apr 2011 19:21:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-04-05 at 06:32 -0700, Scott Rifenbark wrote:
> From: Scott Rifenbark <scott.m.rifenbark@intel.com>
> 
> These changes represent edits through the structure, bitbake.
> Other notable changes is the Autotooled section re-written.
> Also, SSTATE_DIR variable added to the variables appendix.
> Style tags cleaned up.  OProfile cleaned up a bit.  Building 
> the cross-GDB Package fixed.  
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: srifenbark/poky-work
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=srifenbark/poky-work
> 
> Thanks,
>     Scott Rifenbark <scott.m.rifenbark@intel.com>
> ---
> 
> 
> Scott Rifenbark (16):
>   documentation/poky-ref-manual/poky-ref-manual.xml: Updated
>     rev-history table
>   documentation/poky-ref-manual/development.xml: Edits for Eclipse and
>     Anjuta
>   documentation/poky-ref-manual/development.xml: Corrected command
>     syntax
>   documentation/poky-ref-manual/development.xml:  OProfileUI section
>     updated
>   documentation/poky-ref-manual/ref-structure.xml: bitbake section
>     updated
>   documentation/poky-ref-manual/ref-bitbake.xml:  removed 'varname'
>     style
>   documentation/poky-ref-manual/ref-bitbake.xml:  Grammar fix
>   documentation/poky-ref-manual/ref-bitbake.xml: type fixed
>   document/poky-ref-manual/ref-classes.xml: removed <function> tag
>   documentation/poky-ref-manual/ref-classes.xml:  Fix to <filename> tag
>   documentation/poky-ref-manual/ref-classes.xml: re-write of autotooled
>     packages
>   documentation/poky-ref-manual/ref-classes.xml: tag updates
>   documentation/poky-ref-manual/ref-structure.xml:  Edits for Rel 1.0
>   documentation/poky-ref-manual/ref-variables.xml: added SSTATE_DIR
>     variable
>   documentation/poky-ref-manual/ref-bitbake.xml: BitBake parsing
>     section update
>   documentation/poky-ref-manual/ref-bitbake.xml: style tags updated
> 
>  documentation/poky-ref-manual/development.xml     |   61 +++++++---
>  documentation/poky-ref-manual/poky-ref-manual.xml |    4 +-
>  documentation/poky-ref-manual/ref-bitbake.xml     |   50 ++++----
>  documentation/poky-ref-manual/ref-classes.xml     |  128 +++++++++------------
>  documentation/poky-ref-manual/ref-structure.xml   |  108 ++++++++++++++++--
>  documentation/poky-ref-manual/ref-variables.xml   |    6 +
>  6 files changed, 229 insertions(+), 128 deletions(-)

Merged to master, thanks.

Richard


