Return-Path: <saul.wold@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id BA78E4C80578
	for <poky@yoctoproject.org>; Mon,  9 May 2011 16:49:51 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 May 2011 14:49:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,342,1301900400"; 
   d="scan'208";a="23885"
Received: from unknown (HELO [10.255.12.75]) ([10.255.12.75])
	by fmsmga001.fm.intel.com with ESMTP; 09 May 2011 14:49:50 -0700
Message-ID: <4DC8617E.3010209@intel.com>
Date: Mon, 09 May 2011 14:49:50 -0700
From: Saul Wold <saul.wold@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <cover.1304496956.git.xiaofeng.yan@windriver.com>	<14d94988bd1dd3fc1707828dac9c738f0325175c.1304496956.git.xiaofeng.yan@windriver.com>
	<4DC1AF3E.20602@mentor.com>
In-Reply-To: <4DC1AF3E.20602@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] qt4: Enable qt4 opengl for ppc
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
X-List-Received-Date: Mon, 09 May 2011 21:49:52 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/04/2011 12:55 PM, Tom Rini wrote:
> On 05/04/2011 04:00 AM, Xiaofeng Yan wrote:
>> From: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>>
>> Fix [# 1020]
>>
>> Signed-off-by: Xiaofeng Yan<xiaofeng.yan@windriver.com>
>> ---
>>   meta/recipes-qt/qt4/qt4-x11-free.inc |    1 +
>>   1 files changed, 1 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta/recipes-qt/qt4/qt4-x11-free.inc b/meta/recipes-qt/qt4/qt4-x11-free.inc
>> index ba08dc8..a711288 100644
>> --- a/meta/recipes-qt/qt4/qt4-x11-free.inc
>> +++ b/meta/recipes-qt/qt4/qt4-x11-free.inc
>> @@ -13,6 +13,7 @@ QT_GLFLAGS_qemux86 = "-opengl"
>>   QT_GLFLAGS_emenlow = "-opengl"
>>   QT_GLFLAGS_atom-pc = "-opengl"
>>   QT_GLFLAGS_qemuppc = "-opengl"
>> +QT_GLFLAGS_mpc8315e-rdb = "-opengl"
>>   QT_CONFIG_FLAGS += "-no-xinerama -no-xkb ${QT_GLFLAGS}"
>>   QT_BASE_NAME ?= "qt4"
>>   QT_BASE_LIB  ?= "libqt"
>
> Can we use more generic overrides here?  Otherwise we'll just fail on
> the next powerpc board.
>
Xiaofeng,

Now that we have re-factored and these changes will meta-yocto or in BSP 
.bbappend files.  Can you make a more appropriate change that also take 
the above comment into account.

Thanks
	Sau!


