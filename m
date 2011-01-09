Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0139B4C8108C
	for <poky@yoctoproject.org>; Sun,  9 Jan 2011 16:41:57 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p09MhZTG000730; Sun, 9 Jan 2011 22:43:36 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id dwGg2GuxOQRB; Sun,  9 Jan 2011 22:43:35 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p09MhTiF000727
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Sun, 9 Jan 2011 22:43:32 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
In-Reply-To: <7798495f49f90ea669f2f396aacf3c5844f0dbed.1294501386.git.dongxiao.xu@intel.com>
References: <cover.1294501386.git.dongxiao.xu@intel.com>
	<7798495f49f90ea669f2f396aacf3c5844f0dbed.1294501386.git.dongxiao.xu@intel.com>
Date: Sun, 09 Jan 2011 22:41:13 +0000
Message-ID: <1294612873.17519.33969.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 2/3] bitbake: Introduce stamp-extra-info into build stamp file
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
X-List-Received-Date: Sun, 09 Jan 2011 22:41:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2011-01-08 at 23:53 +0800, Dongxiao Xu wrote:
> For certain tasks, we need additional information in build stamp file
> except the task name and file name. stamp-extra-info is introduced as
> an flag adding to the end of stamp file name.
> 
> We also implement a blacklist, in which extra stamp information will
> not be added.

To be honest I much preferred the original version of this patch. The
problem with this approach is that the data dictionary you're storing in
the siggen code is just the global config data dict. This means that if
any recipe customises BB_STAMP_EXTRA or the stamp-extra-into flag, those
changes will not be seen by this code. This is why your original of
extracting the flag at parse time and caching it was better.

I appreciate the code in those areas has changed but the original patch
should translate relatively easily.

Also note that re.compile is expensive so you'd do that at init time,
not for each stampfile.

Cheers,

Richard

> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  bitbake/lib/bb/siggen.py |   14 +++++++++++++-
>  1 files changed, 13 insertions(+), 1 deletions(-)
> 
> diff --git a/bitbake/lib/bb/siggen.py b/bitbake/lib/bb/siggen.py
> index 4dc09b3..6c5a227 100644
> --- a/bitbake/lib/bb/siggen.py
> +++ b/bitbake/lib/bb/siggen.py
> @@ -43,7 +43,17 @@ class SignatureGenerator(object):
>          return
>  
>      def stampfile(self, stampbase, file_name, taskname):
> -        return "%s.%s" % (stampbase, taskname)
> +        stamp_extra_info = (self.data.getVarFlag(taskname, 'stamp-extra-info', True) or self.data.getVar('BB_STAMP_EXTRA', True) or "")
> +
> +        if self.stampblacklist:
> +            self.sbl = re.compile(self.stampblacklist)
> +        else:
> +            self.sbl = None
> +
> +        if self.sbl and self.sbl.search(file_name):
> +            return "%s.%s" % (stampbase, taskname)
> +
> +        return ("%s.%s.%s" % (stampbase, taskname, stamp_extra_info)).rstrip('.')
>  
>  class SignatureGeneratorBasic(SignatureGenerator):
>      """
> @@ -59,6 +69,8 @@ class SignatureGeneratorBasic(SignatureGenerator):
>          self.lookupcache = {}
>          self.basewhitelist = (data.getVar("BB_HASHBASE_WHITELIST", True) or "").split()
>          self.taskwhitelist = data.getVar("BB_HASHTASK_WHITELIST", True) or None
> +        self.stampblacklist = data.getVar("BB_STAMPTASK_BLACKLIST", True) or None
> +        self.data = data
>  
>          if self.taskwhitelist:
>              self.twl = re.compile(self.taskwhitelist)



