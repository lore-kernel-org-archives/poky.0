Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 799254C80050
	for <poky@yoctoproject.org>; Mon, 10 Jan 2011 14:37:36 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AKdG68011497; Mon, 10 Jan 2011 20:39:16 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id G1UCiFF0WEAl; Mon, 10 Jan 2011 20:39:15 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0AKd8xJ011486
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 10 Jan 2011 20:39:10 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <5dc86fafe3227653f652bb61e8ad49f875b3e20d.1294571866.git.ke.yu@intel.com>
References: <cover.1294571866.git.ke.yu@intel.com>
	<5dc86fafe3227653f652bb61e8ad49f875b3e20d.1294571866.git.ke.yu@intel.com>
Date: Mon, 10 Jan 2011 20:37:18 +0000
Message-ID: <1294691838.1492.1314.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 8/8] Fetcher: only set __BB_DONT_CACHE when SRCREV = "${AUTOREV}"
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
X-List-Received-Date: Mon, 10 Jan 2011 20:37:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2011-01-09 at 19:50 +0800, Yu Ke wrote:
> we should cache SRCREV whenever possible, the only exception is
> when SREREV is auto rev. so change the logic to only set __BB_DONT_CACHE
> at SRCREV = "${AUTOREV}" case
> 
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  bitbake/lib/bb/fetch2/__init__.py |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
> index 44189ee..fd489a1 100644
> --- a/bitbake/lib/bb/fetch2/__init__.py
> +++ b/bitbake/lib/bb/fetch2/__init__.py
> @@ -356,6 +356,9 @@ def localpaths(d):
>      return local
>  
>  def get_autorev(d):
> +    #  only not cache src rev in autorev case
> +    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
> +        bb.data.setVar('__BB_DONT_CACHE', '1', d)
>      return "AUTOINC"
>  
>  def get_srcrev(d):
> @@ -382,9 +385,6 @@ def get_srcrev(d):
>          logger.error("SRCREV was used yet no valid SCM was found in SRC_URI")
>          raise ParameterError
>  
> -    if bb.data.getVar('BB_SRCREV_POLICY', d, True) != "cache":
> -        bb.data.setVar('__BB_DONT_CACHE', '1', d)
> -
>      if len(scms) == 1:
>          return urldata[scms[0]].method.sortable_revision(scms[0], urldata[scms[0]], d)

I wasn't going to take this as I think its rather ugly. Looking at it
further, its not really any less ugly than the existing code so I'm
torn. I will take it as its an improvement and will make the user
experience better but this approach relies on the cache to expand PV and
call get_autorev() which is not obvious and the code should at least
have a comment attached to it about how it works. Behaviour change in
the cache could break this rather easily.

Cheers,

Richard


