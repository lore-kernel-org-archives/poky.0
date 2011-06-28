Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0E87A4C800B9
	for <poky@yoctoproject.org>; Tue, 28 Jun 2011 06:10:48 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5SBAjti022162;
	Tue, 28 Jun 2011 12:10:45 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21529-10; Tue, 28 Jun 2011 12:10:41 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p5SBAaZH022155
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 28 Jun 2011 12:10:37 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <cover.1308101091.git.scott.a.garman@intel.com>
References: <cover.1308101091.git.scott.a.garman@intel.com>
Date: Tue, 28 Jun 2011 12:10:23 +0100
Message-ID: <1309259423.20015.239.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] bitbake wrapper: exit if python v3 is detected
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
X-List-Received-Date: Tue, 28 Jun 2011 11:10:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2011-06-14 at 18:42 -0700, Scott Garman wrote:
> Make sure we're not using python v3.x. This check can't go into
> sanity.bbclass because bitbake's source code doesn't even pass
> parsing stage when used with python v3, so we catch it here so we
> can offer a meaningful error message.
> 
> This fixes bug [YOCTO #1128]
> 
> I did attempt to make changes to bitbake to get the source code to
> parse under python v3, but there are issues which make it too
> difficult to get the code to work with python v2 and v3. For example,
> importing modules within a package has changed significantly in v3
> in such a way that breaks compatability with v2.
> 
> The following changes since commit 7aa7673459376aff911cef820c9417c998d1aa96:
> 
>   meta-yocto/linux-yocto: update to match the renamed linux-yocto recipes (2011-06-14 09:21:32 -0700)
> 
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib sgarman/bb-python-v3
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=sgarman/bb-python-v3
> 
> Scott Garman (1):
>   bitbake wrapper: exit if python v3 is detected

Merged to master but please send OE-Core related patches to the OE-Core
list in future.

Cheers,

Richard


