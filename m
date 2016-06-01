Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 167E1E00EFC; Wed,  1 Jun 2016 04:37:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D88D2E00E12
	for <poky@yoctoproject.org>; Wed,  1 Jun 2016 04:37:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 01 Jun 2016 04:37:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,400,1459839600"; d="scan'208";a="992949329"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 01 Jun 2016 04:37:00 -0700
To: Arno <star@gmx.li>
References: <trinity-200ddab3-0fb2-41ea-8c38-37f5f1195f5e-1464356891340@3capp-gmx-bs01>
	<574852BD.3050200@linux.intel.com>
	<trinity-4d59831f-223e-4a32-badc-e2e4566521f2-1464598154576@3capp-gmx-bs79>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <574EC8D8.1050201@linux.intel.com>
Date: Wed, 1 Jun 2016 14:36:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <trinity-4d59831f-223e-4a32-badc-e2e4566521f2-1464598154576@3capp-gmx-bs79>
Cc: poky@yoctoproject.org
Subject: Re: Workaround for fetching files
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 01 Jun 2016 11:37:05 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/30/2016 11:49 AM, Arno wrote:

> Its not the proxy, we don't have this. But we have some kind of
> firewall which seems to work also for https as man in the middle.
> With our company certificates installed in browser it works.
>
> If I do manually a git (via https) with  "export GIT_SSL_NO_VERIFY=1"
> this helps, but even if I do this before calling bitbake it will not
> help. Can this set global for the project?
>
> Doesn't the download files stored in a common folder, but there is
> also some hash, which I can't create manually.

You have what they call a 'transparent proxy'. When https is in use by 
git, you can probably add those rogue man-in-the-middle certificates to 
/etc/ssl/certs, but for native git protocol this isn't going to work, as 
your firewall simply blocks those connections out (the 'no route to 
host' thing).  [1]

You need to explain to your management that to do your job properly, you 
need a real internet connection, or a SOCKS proxy (for the git 
protocol). But then they wouldn't be able to spy on you.

[1] https://git-scm.com/book/no-nb/v1/Git-on-the-Server-The-Protocols


Alex

