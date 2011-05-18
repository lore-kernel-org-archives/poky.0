Return-Path: <ke.yu@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9207F4C800FB
	for <poky@yoctoproject.org>; Tue, 17 May 2011 20:55:33 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 17 May 2011 18:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,228,1304319600"; d="scan'208";a="437959451"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by azsmga001.ch.intel.com with ESMTP; 17 May 2011 18:55:29 -0700
Message-ID: <4DD3270F.3030006@intel.com>
Date: Wed, 18 May 2011 09:55:27 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <cover.1305528202.git.ke.yu@intel.com> <4DD2FFC6.9080500@intel.com>
In-Reply-To: <4DD2FFC6.9080500@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] patch upstream status update
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
X-List-Received-Date: Wed, 18 May 2011 01:55:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-5-18 7:07, Saul Wold wrote:
>> Yu Ke (2):
>> xserver-kdrive: upgrade from 1.7.99.2 to 1.10.1
>
> Ke,
>
> This patch was not taken per Richard's email about checking the Touch
> Screen Calibration.

That is fine. I will rewrite the calibration patch base on the latest 
xserver per the discussion, and resend this upgrade patches after it is 
done. This may need some time though.

Regards
Ke

