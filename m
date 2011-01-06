Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id BF7274C80B70
	for <poky@yoctoproject.org>; Thu,  6 Jan 2011 05:03:19 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06B4tBS026257; Thu, 6 Jan 2011 11:04:56 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Tc5mqK8uDXYp; Thu,  6 Jan 2011 11:04:55 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p06B4q3m026230
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 6 Jan 2011 11:04:54 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <c9580df3dfe41b22e6cee32ac7c228197fcecd01.1293457442.git.ke.yu@intel.com>
References: <cover.1293457442.git.ke.yu@intel.com>
	<c9580df3dfe41b22e6cee32ac7c228197fcecd01.1293457442.git.ke.yu@intel.com>
Date: Thu, 06 Jan 2011 11:02:48 +0000
Message-ID: <1294311768.17519.24188.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/8] git.py: move git specific url data initialization earlier
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
X-List-Received-Date: Thu, 06 Jan 2011 11:03:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-12-27 at 21:57 +0800, Yu Ke wrote:
> move the url data init earlier, so that Git.latest_revision()
> can work before Git.localpath()
> 
> This change allow FetchData:__init__ to set FetchData.revison by
> Git.latest_revision()
> 
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  bitbake/lib/bb/fetch/git.py |   19 ++++++++++++++-----
>  1 files changed, 14 insertions(+), 5 deletions(-)
> 
> diff --git a/bitbake/lib/bb/fetch/git.py b/bitbake/lib/bb/fetch/git.py
> index a8ec104..df582a3 100644
> --- a/bitbake/lib/bb/fetch/git.py
> +++ b/bitbake/lib/bb/fetch/git.py
> @@ -38,10 +38,17 @@ class Git(Fetch):
>          """
>          Check to see if a given url can be fetched with git.
>          """
> -        return ud.type in ['git']
> -
> -    def localpath(self, url, ud, d):
> +        if ud.type in ['git']:
> +            self.urldata_init(ud, d)
> +            return True
> +        else:
> +            return False
>  
> +    def urldata_init(self, ud, d):
> +        """
> +        init git specific variable within url data
> +        so that the git method like latest_revision() can work
> +        """
>          if 'protocol' in ud.parm:

I like the idea of having a urldata_init method but I don't like the way
you're calling it from supports(). Each methods need to do one thing
clearly and well.

Your patch does help clean things up and this is good but I'd just
suggest you call urldata_init() from the fetcher __init__.py code
alongside any supports() calls for now. This way, the supports() method
remains 'clean'. You can make it so you only call the urldata_init()
method if its present.

Ultimately, what needs to happen in the fetcher is to split the
mechanics of fetching out from the actual urldata object. The code has
been heading in that direction but python class usage isn't one of my
better skills and I need to spend time I'm struggling to find working
out what needs to happen there :(.

Cheers,

Richard


