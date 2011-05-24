Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 65A4B4C80579
	for <poky@yoctoproject.org>; Tue, 24 May 2011 02:55:16 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 24 May 2011 00:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,260,1304319600"; 
   d="scan'208";a="7673674"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by fmsmga001.fm.intel.com with ESMTP; 24 May 2011 00:54:15 -0700
Message-ID: <4DDB6426.8020602@intel.com>
Date: Tue, 24 May 2011 15:54:14 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1306220205.git.ke.yu@intel.com>	<e2bf7f2c627346574195eba57b665f4de4757c8a.1306220205.git.ke.yu@intel.com>
	<80400B78-E961-4061-A19A-2E99CB6889C6@dominion.thruhere.net>
In-Reply-To: <80400B78-E961-4061-A19A-2E99CB6889C6@dominion.thruhere.net>
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
X-List-Received-Date: Tue, 24 May 2011 07:55:16 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-5-24 15:43, Koen Kooi wrote:
> In this day and age shouldn't we change the default to 'git'?

Yup, it make sense. let me work out another patch to change the default 
protocol to git.

Regards
Ke

