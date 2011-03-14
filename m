Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id D01194C80AAA
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 16:10:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELAaSv007279;
	Mon, 14 Mar 2011 21:10:36 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06871-08; Mon, 14 Mar 2011 21:10:32 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELAWrd007273
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Mar 2011 21:10:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1300113029.git.josh@linux.intel.com>
References: <cover.1300113029.git.josh@linux.intel.com>
Date: Mon, 14 Mar 2011 21:10:26 +0000
Message-ID: <1300137026.30423.594.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Tidy up patches
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
X-List-Received-Date: Mon, 14 Mar 2011 21:10:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 14:35 +0000, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> This series consists of a couple of tidy up patches for Poky's BitBake.
> 
> The first enables bitbake-layers to work whilst the second changes our XML-RPC
> server to only use the copy/paste Transport implementation for known broken
> versions of Python.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/master
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/master
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>
> ---
> 
> 
> Joshua Lock (2):
>   bitbake/bitbake-layers: fix to run with recent changes
>   bitbake/xmlrpc: only use BBTransport for affected Python versions
> 
>  bitbake/bin/bitbake-layers      |   12 ++++++++----
>  bitbake/lib/bb/server/xmlrpc.py |   21 +++++++++++++++++----
>  2 files changed, 25 insertions(+), 8 deletions(-)
>  mode change 100644 => 100755 bitbake/bin/bitbake-layers

Merged into poky master, thanks.

Richard



