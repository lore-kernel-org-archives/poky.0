Return-Path: <saul.wold@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0F0E84C800A4
	for <poky@yoctoproject.org>; Mon, 28 Feb 2011 13:19:16 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 28 Feb 2011 11:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,242,1297065600"; d="scan'208";a="662260138"
Received: from unknown (HELO [10.255.12.96]) ([10.255.12.96])
	by fmsmga002.fm.intel.com with ESMTP; 28 Feb 2011 11:19:15 -0800
Message-ID: <4D6BF532.9010308@intel.com>
Date: Mon, 28 Feb 2011 11:19:14 -0800
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Xiaofeng Yan <xiaofeng.yan@windriver.com>
References: <cover.1298452018.git.jingdong.lu@windriver.com>	<393a65bacbb6f8fe010973192b6e37929ccdaea4.1298452018.git.jingdong.lu@windriver.com>
	<4D670332.2090308@intel.com> <4D6787F1.3010609@windriver.com>
	<4D698359.4030208@intel.com> <4D6B6146.20307@windriver.com>
In-Reply-To: <4D6B6146.20307@windriver.com>
Cc: Harry Ciao <qingtao.cao@windriver.com>,
	"poky >> \"poky@yoctoproject.org\"" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] task-poky-lsb: add necessary packages name
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
X-List-Received-Date: Mon, 28 Feb 2011 19:19:16 -0000
Content-Type: text/plain; charset=ISO-2022-JP
Content-Transfer-Encoding: 7bit

On 02/28/2011 12:48 AM, Xiaofeng Yan wrote:
<snip>
>>
> Hi Saul,
> 
> If bugs caused by libqtopengl4 arise When we test lsb-image on non-x86
> arch, then we will report this bugs on bugzilla and you because we don't
> ensure whether it is necessary on non-x86 arch. I found there aren't
> hardware lsb-image(arch x86, x86-64, ppc) in the latest nightly build
> image. In fact we should test lsb-image on hardware platform, which meet
> LSB criterion. BTW, If we add other packages like perl, we also use
> PACKAGE_NAME-modules instead of all packages without deleting
> unnecessary packages. Ok?
> 

I would like to confirm with you about what you are asking for here.  I
think you want lsb-sdk-live images for the core BSP platforms, is that
correct?

I am not following what you want for perl and -modules packaging, your
request is not clear. Can you please give me more information on what
you are asking for.

Thanks

Sau!

> Thanks
> Yan
> 


