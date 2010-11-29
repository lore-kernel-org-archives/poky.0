Return-Path: <saul.wold@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8D2A04C810B1
	for <poky@yoctoproject.org>; Mon, 29 Nov 2010 16:46:52 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 29 Nov 2010 14:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,277,1288594800"; d="scan'208";a="682135776"
Received: from unknown (HELO [10.255.13.215]) ([10.255.13.215])
	by orsmga001.jf.intel.com with ESMTP; 29 Nov 2010 14:46:51 -0800
Message-ID: <4CF42D5B.9010000@intel.com>
Date: Mon, 29 Nov 2010 14:46:51 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290492217.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1290492217.git.tom.zanussi@intel.com>
Subject: Re: [PATCH 0/1] Add blktrace package
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
X-List-Received-Date: Mon, 29 Nov 2010 22:46:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 10:03 PM, Tom Zanussi wrote:
> Add blktrace, one of the tracing/profiling tools mentioned in the Yocto v1.0
> tracing/profiling tools list posted here:
>
> https://lists.yoctoproject.org/pipermail/yocto/2010-November/000281.html
>
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: tzanussi/traceprof
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tzanussi/traceprof
>
> Thanks,
>      Tom Zanussi<tom.zanussi@intel.com>
> ---
>
>
> Tom Zanussi (1):
>    blktrace: new package
>
>   .../conf/distro/include/poky-default-revisions.inc |    1 +
>   meta/recipes-core/tasks/task-poky-tools.bb         |    4 +-
>   .../blktrace/blktrace/blktrace-makefile.patch      |   53 ++++++++++++++++++++
>   meta/recipes-kernel/blktrace/blktrace_git.bb       |   25 +++++++++
>   4 files changed, 82 insertions(+), 1 deletions(-)
>   create mode 100644 meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
>   create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

Pulled into Master

Thanks
    Sau!

