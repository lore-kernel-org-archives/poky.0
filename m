Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0B3624C803A5
	for <poky@yoctoproject.org>; Wed,  1 Dec 2010 17:56:27 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 01 Dec 2010 15:56:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,285,1288594800"; d="scan'208";a="632197824"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 01 Dec 2010 15:56:27 -0800
Received: from [10.7.199.73] (10.7.199.73) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 1 Dec 2010 16:56:26 -0700
Message-ID: <4CF6E040.9050206@intel.com>
Date: Wed, 1 Dec 2010 15:54:40 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc14
	Lightning/1.0b3pre Thunderbird/3.1.6
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <4CF53E28.6020708@intel.com> <4CF6B708.2030002@intel.com>
In-Reply-To: <4CF6B708.2030002@intel.com>
Subject: Re: Current Autobuilder nightly failures for build #133
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
X-List-Received-Date: Wed, 01 Dec 2010 23:56:28 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/01/2010 12:58 PM, Elizabeth Flanagan wrote:
> -------------------
>
> Package Name:
> libatomics-ops_1.2
>
> Targets Failing:
> both SDKMACHINE values: qemumips meta-toolchain-sdk do_compile
>
> Note:
> In file included from atomic_ops_stack.h:32:0,
>                    from atomic_ops_malloc.c:20:
> atomic_ops.h:260:4: error: #error Cannot implement
> AO_compare_and_swap_full on this architecture.

This is a recipe I was recently assigned and I am in the process of 
fixing it.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

