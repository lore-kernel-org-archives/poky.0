Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4BFD34C80050
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 14:30:12 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AKVnig010914; Mon, 10 Jan 2011 20:31:50 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id KG-OtE1Q0tKA; Mon, 10 Jan 2011 20:31:49 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AKVh3e010886
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 10 Jan 2011 20:31:45 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <cover.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
Date: Mon, 10 Jan 2011 20:29:53 +0000
Message-ID: <1294691393.1492.1292.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/8] bb.fetch2: SRCREV logic enhancement V2
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
X-List-Received-Date: Mon, 10 Jan 2011 20:30:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Ke,

On Sun, 2011-01-09 at 19:48 +0800, Yu Ke wrote:
> This is the V2 patch for the SRCREV logic enhancement.
> 
> there are several changes compared with the V1:
> - rebase it to bb.fetch2 code, and all code are applied to bb.fetch2 instead of bb.fetch
> - call urldata_init in FetchData:__init__ according to Richard's suggestion.
> 
> this patch has been tested with
> - fetch world packages with DISTRO = "poky-bleeding", empty ${DL_DIR},
>   and null PREMIRROR, MIRROR
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: kyu3/srcrev-v2
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kyu3/srcrev-v2
> 
> Thanks,
>     Yu Ke <ke.yu@intel.com>
> ---
> 
> 
> Yu Ke (8):
>   meta: replace bb.fetch with bb.fetcher.instance
>   bb.fetch2: add urldata_init call for Fetch class
>   bb.fetch2.git.py: add git urldata_init
>   bb.fetch2.svn.py: add urldata_init
>   bb.fetch2.hg: add hg urldata_init
>   bb.fetch2.bzr: add bzr urldata_init
>   Fetcher: break the "SRCREVINACTION" deadlock
>   Fetcher: only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"
> 
>  bitbake/lib/bb/fetch/__init__.py  |    3 ++
>  bitbake/lib/bb/fetch2/__init__.py |   42 +++++++++++++-----------------------
>  bitbake/lib/bb/fetch2/bzr.py      |   13 ++++-------
>  bitbake/lib/bb/fetch2/git.py      |   17 +++++++--------
>  bitbake/lib/bb/fetch2/hg.py       |   24 +++++++++-----------
>  bitbake/lib/bb/fetch2/svn.py      |   16 ++++++--------
>  meta/conf/bitbake.conf            |    4 +-
>  meta/lib/oe/patch.py              |    6 ++--
>  8 files changed, 54 insertions(+), 71 deletions(-)

To keep this work moving, I've altered some of the initial patches a
bit, as per my comments elsewhere in the thread. I've then merged the
mid section of the patches into master.

The only patch left which I've not merged is the last one, 'Fetcher:
only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"' which I'll comment
on separately.

Cheers,

Richard


