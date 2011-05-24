Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 366024C800E5
	for <poky@yoctoproject.org>; Tue, 24 May 2011 12:18:21 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi16 with SMTP id 16so4454628pwi.35
	for <poky@yoctoproject.org>; Tue, 24 May 2011 10:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:user-agent;
	bh=KAPEuIPAmH1GCbAep/XqdwXGFcRqWuEP1Ho3EujTu5c=;
	b=eWUWHbKnA9eucUN7Ux0r+ZAA8htwUZj8drX+jAk+emm9+CHDOKovkVt9WGAIud3C28
	xTf9Y4Aju8XYC+OapboigBAl2WfiW47YLl7MN0+pvjTZ55VjUW2P3wSmbXXXPs7fj47+
	Bo/0cRnT1hd753KfWQmgtRP0lDBrgq6OFTF44=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	b=E0jgHVJrzDW9C9qHjuctoIz9NlFDMAUqvRbQzEdKEP3zML82FCjXRPL/WsfzbOOGLa
	AGuZidpngACDDpXEElMx5JifIlvr6jswykXZfElNIXwdpWB0IBAPjf6Ej4nEgCFCFEbB
	KFvYplTjonoT2Uc2yZAibcPLFMny3CX55hbFY=
Received: by 10.68.20.71 with SMTP id l7mr2883991pbe.293.1306257500697;
	Tue, 24 May 2011 10:18:20 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-141-118.lightspeed.sntcca.sbcglobal.net [99.57.141.118])
	by mx.google.com with ESMTPS id b4sm5110291pbo.80.2011.05.24.10.18.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 24 May 2011 10:18:19 -0700 (PDT)
Date: Tue, 24 May 2011 10:17:02 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Yu Ke <ke.yu@intel.com>
Message-ID: <20110524171702.GB18086@sakrah.homelinux.org>
Mail-Followup-To: Yu Ke <ke.yu@intel.com>, poky@yoctoproject.org
References: <cover.1306220205.git.ke.yu@intel.com>
	<e2bf7f2c627346574195eba57b665f4de4757c8a.1306220205.git.ke.yu@intel.com>
MIME-Version: 1.0
In-Reply-To: <e2bf7f2c627346574195eba57b665f4de4757c8a.1306220205.git.ke.yu@intel.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] fetcher2/git: add document for git fetcher supported options
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
X-List-Received-Date: Tue, 24 May 2011 17:18:21 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (24/05/11 14:58), Yu Ke wrote:
> CC: Khem Raj <raj.khem@gmail.com>
> CC: Darren Hart <dvhart@linux.intel.com>
> 
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  bitbake/lib/bb/fetch2/git.py |   37 ++++++++++++++++++++++++++++++++++---
>  1 files changed, 34 insertions(+), 3 deletions(-)
> 
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 82721c6..b07298d 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -3,6 +3,40 @@
>  """
>  BitBake 'Fetch' git implementation
>  
> +git fetcher support the SRC_URI with format of:
> +SRC_URI = "git://some.host/somepath;OptionA=xxx;OptionB=xxx;..."
> +
> +Supported SRC_URI options are:
> +
> +- branch
> +   The git branch to retrieve from. The default is "master"
> +
> +   this option also support multiple branches fetching, branches
> +   are seperated by comma. in multiple branches case, the name option
> +   must have the same number of names to match the branches, which is
> +   used to specify the SRC_REV for the branch
> +   e.g:
> +   SRC_URI="git://some.host/somepath;branch=branchX,branchY;name=nameX,nameY"
> +   SRCREV_nameX = "xxxxxxxxxxxxxxxxxxxx"
> +   SRCREV_nameY = "YYYYYYYYYYYYYYYYYYYY"
> +
> +- tag
> +    The git tag to retrieve. The default is "master"
> +
> +- protocol
> +   The method to use to access the repository. Common options are "git",
> +   "http", "file" and "rsync". The default is "rsync"
> +
> +- rebaseable
> +   rebaseable indicates that the upstream git repo may rebase in the future,
> +   and current revision may disappear from upstream repo. This option will
> +   reminder fetcher to preserve local cache carefully for future use.
> +   The default value is "0", set rebaseable=1 for rebaseable git repo

for consistency why not make rebaseable=true/false as well ?

> +
> +- nocheckout
> +   Don't checkout source code when unpacking. set this option for the recipe
> +   who has its own routine to checkout code. The default is false
                                                                ^^^^
may be it should be in '' or quotes



> +
>  """
>  
>  #Copyright (C) 2005 Richard Purdie
> @@ -57,9 +91,6 @@ class Git(FetchMethod):
>          if 'nocheckout' in ud.parm:
>              ud.nocheckout = True
>  
> -        # rebaseable means the upstream git repo may rebase in the future,
> -        # and current revision may disappear from upstream repo
> -        # rebaseable is false by default. set rebaseable=1 in SRC_URI if rebaseable.
>          ud.rebaseable = ud.parm.get("rebaseable","0") == "1"
>  
>          branches = ud.parm.get("branch", "master").split(',')
> -- 
> 1.7.0.4
> 
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
-Khem

