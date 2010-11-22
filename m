Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8EE64C80052
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 16:12:14 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Nov 2010 14:12:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,238,1288594800"; d="scan'208";a="629316581"
Received: from unknown (HELO [10.255.13.171]) ([10.255.13.171])
	by fmsmga002.fm.intel.com with ESMTP; 22 Nov 2010 14:12:14 -0800
Message-ID: <4CEAEABD.8070402@intel.com>
Date: Mon, 22 Nov 2010 14:12:13 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290463270.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1290463270.git.tom.zanussi@intel.com>
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
X-List-Received-Date: Mon, 22 Nov 2010 22:12:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 02:01 PM, Tom Zanussi wrote:
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
>   meta/recipes-core/tasks/task-poky-tools.bb         |    3 +-
>   .../blktrace/blktrace/blktrace-makefile.patch      |   53 ++++++++++++++++++++
>   meta/recipes-kernel/blktrace/blktrace_git.bb       |   22 ++++++++
>   4 files changed, 78 insertions(+), 1 deletions(-)
>   create mode 100644 meta/recipes-kernel/blktrace/blktrace/blktrace-makefile.patch
>   create mode 100644 meta/recipes-kernel/blktrace/blktrace_git.bb
>
Tom,

A very quick review shows that the LICENSE metadata is too GENERIC, 
should specify the version also.

Additionally, you do not have any SCR_URI[md5] or SRC_URI[sha256] 
metadata which is now required. These are new requirements for 1.0.

Sau!

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


