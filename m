Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0EACE006B1
	for <poky@yoctoproject.org>; Thu,  5 Jul 2012 08:38:40 -0700 (PDT)
Received: from mail-gh0-f180.google.com ([209.85.160.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 05 Jul 2012 08:38:40 -0700
Received: by ghbz12 with SMTP id z12so7138408ghb.25
	for <poky@yoctoproject.org>; Thu, 05 Jul 2012 08:38:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=Unmr7jmXSNdHrUiBxria+WO+rolSmr4VjMlEscJt+es=;
	b=f2l1HeSHiQszq8agIXIRHdl93+CP9vfIAJbD2Nc9BMdOxl+x3CWj6z9mQ/GpPc7cnu
	1ZX7O4Vr9ZmgC+mIt3RoN8XHDJyter/YdaZOKU+/SbIjDPOm/Y9f4TuU2fQV/awx8uwX
	bVzZaZUwU88GOfXQ7R02WlosqVGog/9d/iuflTIhHDm9WRLttnhU3oUQ5VuA8L+Zss1M
	LXgvmZcAfwtjdQ9cov0hJK+yspagn/K1WZ7O96h9w7kh/e1IaMO5GDfhWaQvxBtrVEJW
	fonyvqpP6twcXs+FaejK6tdrjMqZ5Sb0N5Ep1tXtzJGcNpyzqhEDeO5BAsyo5q6Nk5+M
	e60A==
Received: by 10.66.76.134 with SMTP id k6mr37978161paw.58.1341502718542;
	Thu, 05 Jul 2012 08:38:38 -0700 (PDT)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id ru10sm9609345pbc.50.2012.07.05.08.38.35
	(version=SSLv3 cipher=OTHER); Thu, 05 Jul 2012 08:38:37 -0700 (PDT)
Message-ID: <4FF5B4EA.5000302@intel.com>
Date: Thu, 05 Jul 2012 08:38:18 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1341354357.git.raj.khem@gmail.com>
In-Reply-To: <cover.1341354357.git.raj.khem@gmail.com>
X-Gm-Message-State: ALoCoQn2KDiETA8BDh7aW+JnTHNYHsQVtuT+4cDF/QV/mEBqhgYq/KcKDDcf4KOTy0mA8YdeFn1+
Cc: "Purdie, Richard" <richard.purdie@intel.com>
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
X-List-Received-Date: Thu, 05 Jul 2012 15:38:40 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/03/2012 03:31 PM, Khem Raj wrote:
> On denzil bitbake was still trying to go out to internet for git repos
> when BB_NO_NETWORK was set. This set of backports fix that issue
> and now BB_NO_NETWORK works as expected

Hi Khem,

Denzil 1.2.1 is already in release candidate phase and going through QA. 
I'm not sure if we can take this for 1.2.1, it may have to wait for 
1.2.2. Richard should probably weigh in here.

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



