Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53295E013A8
	for <poky@yoctoproject.org>; Wed, 11 Apr 2012 04:10:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3BBAhM3007044;
	Wed, 11 Apr 2012 12:10:43 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06405-06; Wed, 11 Apr 2012 12:10:39 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3BBAbwS007038
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 11 Apr 2012 12:10:37 +0100
Message-ID: <1334142637.10826.146.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Saul Wold <sgw@linux.intel.com>
Date: Wed, 11 Apr 2012 12:10:37 +0100
In-Reply-To: <cover.1334108211.git.sgw@linux.intel.com>
References: <cover.1334108211.git.sgw@linux.intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [meta-yocto CONSOLIDATED PULL (for RC3) 0/3]
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
X-List-Received-Date: Wed, 11 Apr 2012 11:10:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-10 at 18:37 -0700, Saul Wold wrote:
> Please pull these updates for RC3
> 
> Thanks
> 	Sau!
> 
> The following changes since commit 9067f7bfc295e2f47fda8031d2bcdcce8f63e894:
> 
>   Hob:Fixed some incorrect values of Build configuration tab (2012-04-11 00:05:23 +0100)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/poky-contrib sgw/stage
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=sgw/stage
> 
> Bruce Ashfield (1):
>   linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
> 
> Nitin A Kamble (1):
>   poky-tiny.conf: adjust eglibc options for poky-tiny
> 
> Robert Yang (1):
>   beagleboard.conf: fix hardcode of virtual/xserver

Merged to master, thanks.

Richard


