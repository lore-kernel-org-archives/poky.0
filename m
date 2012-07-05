Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A211CE006AD
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 13:06:44 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 05 Jul 2012 13:06:44 -0700
Received: by pbbro8 with SMTP id ro8so13017626pbb.25
	for <poky@yoctoproject.org>; Thu, 05 Jul 2012 13:06:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=n1LQX2rGoPU+nF6Gs1uabfPwOUC98Vmt4ynFtEOhWRg=;
	b=nmxp6MjVazMnbfso1eF8agUM2gV8MLtlMWwi+IZggo7cVM6D74bi8OnKKxxHWzZfI1
	BQlPdllqueRTj9Eoj8GamvoHUFh/yfc76hza/aN72BP8DSMlkPd2sSIsYhPEm44K4UCD
	LaWOKL9wqvXkdBkjf0V6dWSz+H/eeXVM7tOnh0wky5snMfeyYt3BnRtDUwIe+2CnqK+k
	ngUHksGNzKgPI/Srbmheut1TpFZU58lVtcXX9Hk3tAVhIXUQ+aGIg14Fi1z2/KzM3Yj0
	uS9Cmdfffag5RC+aQaY313Tk/qOaXg9uj5c8MyjQkmmHzKdx/7cp7A64eCNJbplVp9dM
	OR/A==
Received: by 10.68.226.137 with SMTP id rs9mr29711878pbc.114.1341518803970;
	Thu, 05 Jul 2012 13:06:43 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id ng8sm20341005pbc.13.2012.07.05.13.06.41
	(version=SSLv3 cipher=OTHER); Thu, 05 Jul 2012 13:06:42 -0700 (PDT)
Message-ID: <4FF5F3CA.6090101@intel.com>
Date: Thu, 05 Jul 2012 13:06:34 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQkwpVyZJ/OTk/RnFDigEugazkGSNMZKJpDFNmwqAJ+tQzhAVjC4hrLKhRbK7rok2nz4kqN8
Subject: Re: [denzil][PATCH 0/9] bitbake fetch improvements backport to denzil
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
X-List-Received-Date: Thu, 05 Jul 2012 20:06:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/03/2012 03:31 PM, Khem Raj wrote:
> On denzil bitbake was still trying to go out to internet for git repos
> when BB_NO_NETWORK was set. This set of backports fix that issue
> and now BB_NO_NETWORK works as expected

Ok, I've now created a contrib branch to start tracking changes for 
1.2.2, and have included this series:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next-1.2.2

The usual caveats apply - I can rebase this branch at any time, etc.

Scott

>
> The following changes since commit 73cdebf60df225ee10f2eb215935be3b61e1b831:
>
>    documentation/dev-manual/dev-manual-kernel-appendix.xml: Add note about conflict (2012-06-29 15:54:26 +0100)
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/poky-contrib kraj/denzil-fetcher-update
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=kraj/denzil-fetcher-update
>
> Richard Purdie (9):
>    bitbake/fetch: Spell out which fetcher backends support and recommend
>      checksums
>    bitbake: fetch2/__init__: Make it clearer when uri_replace doesn't
>      return a match
>    bitbake: fetch2: Fix error handling in uri_replace()
>    bitbake: fetch2: Only cache data if fn is set, its pointless caching
>      it against a None value
>    bitbake: fetch2: Ensure when downloading we are consistently in the
>      same directory
>    bitbake: fetch2: Split try_mirrors into two parts
>    bitbake: fetch2: Explicitly check for mirror tarballs in mirror
>      handling code
>    bitbake: fetch2: Improve mirror looping to consider more cases
>    bitbake: fetch2: Handle errors orruring when building mirror urls
>
>   bitbake/lib/bb/fetch2/__init__.py |  218 ++++++++++++++++++++++++-------------
>   bitbake/lib/bb/fetch2/git.py      |    3 +
>   bitbake/lib/bb/fetch2/ssh.py      |    3 +
>   bitbake/lib/bb/fetch2/wget.py     |    3 +
>   4 files changed, 149 insertions(+), 78 deletions(-)
>


-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center



