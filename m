Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id A1B364C80050
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 08:21:56 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FDLrVc018578;
	Tue, 15 Mar 2011 13:21:53 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18343-04; Tue, 15 Mar 2011 13:21:49 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2FDLii1018572
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 13:21:44 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1298903625.git.paul.eggleton@linux.intel.com>
References: <cover.1298903625.git.paul.eggleton@linux.intel.com>
Date: Tue, 15 Mar 2011 13:21:36 +0000
Message-ID: <1300195296.30423.1698.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/3] Minor sstate-related fixes
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
X-List-Received-Date: Tue, 15 Mar 2011 13:21:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-02-28 at 14:37 +0000, Paul Eggleton wrote:
> From: Paul Eggleton <paul.eggleton@linux.intel.com>
> 
> These patches fix two potential sources of problems with sstate stamp file 
> handling and one error message issue for setscene tasks. They are not urgent
> for the 1.0 release but may be desirable.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: paule/sstate-fixes
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=paule/sstate-fixes
> 
> Thanks,
>     Paul Eggleton <paul.eggleton@linux.intel.com>
> ---
> 
> 
> Paul Eggleton (3):
>   sstate.bbclass: avoid deleting unrelated stamp files
>   sstate.bbclass: always delete stamp files in sstate_clean
>   bitbake/runqueue: show correct task name for setscene task failure
> 
>  bitbake/lib/bb/runqueue.py  |   14 +++++++++++---
>  meta/classes/sstate.bbclass |   20 ++++++++++----------
>  2 files changed, 21 insertions(+), 13 deletions(-)

I've merged these patches, thanks!

Richard


