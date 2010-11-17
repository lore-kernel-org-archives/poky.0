Return-Path: <scott.a.garman@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id E4DF34C803A5
	for <poky@yoctoproject.org>; Wed, 17 Nov 2010 17:17:44 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 Nov 2010 15:17:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,213,1288594800"; d="scan'208";a="350124968"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 17 Nov 2010 15:17:44 -0800
Received: from [10.7.199.73] (10.7.199.73) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 17 Nov 2010 16:17:43 -0700
Message-ID: <4CE46244.40404@intel.com>
Date: Wed, 17 Nov 2010 15:16:20 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc14
	Lightning/1.0b3pre Thunderbird/3.1.6
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1289983189.git.qing.he@intel.com>
	<368bc202ae4626cbae23c63f1e1daf0514c29a63.1289983189.git.qing.he@intel.com>
In-Reply-To: <368bc202ae4626cbae23c63f1e1daf0514c29a63.1289983189.git.qing.he@intel.com>
Subject: Re: [PATCH 4/9] busybox: upgrade to version 1.17.3
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
X-List-Received-Date: Wed, 17 Nov 2010 23:17:45 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/2010 06:51 PM, Qing He wrote:
> from 1.16.2
> update license info: add checksum and change gplv2+ to gplv2

This upgrade makes my previous make 3.82 pull request obsolete, as this
version of busybox builds fine on my Fedora 14 system.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

