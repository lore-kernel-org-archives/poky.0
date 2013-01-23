Return-Path: <radu.moisan@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CBE6E0148A
	for <poky@yoctoproject.org>; Wed, 23 Jan 2013 00:05:44 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jan 2013 00:04:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,520,1355126400"; d="scan'208";a="275524371"
Received: from dell-desktop (HELO [10.237.105.59]) ([10.237.105.59])
	by orsmga002.jf.intel.com with ESMTP; 23 Jan 2013 00:05:40 -0800
Message-ID: <50FF9B6C.4030301@intel.com>
Date: Wed, 23 Jan 2013 10:12:28 +0200
From: Radu Moisan <radu.moisan@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <1358868589-2359-1-git-send-email-radu.moisan@intel.com>
	<1358874090.6356.10.camel@ted> <50FF1B49.5020205@linux.intel.com>
In-Reply-To: <50FF1B49.5020205@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] local.conf.sample: Add DISTRO_FEATURES_INITMAN
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
X-List-Received-Date: Wed, 23 Jan 2013 08:05:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


On 01/23/2013 01:05 AM, Darren Hart wrote:
>
> On 01/22/2013 09:01 AM, Richard Purdie wrote:
>> On Tue, 2013-01-22 at 17:29 +0200, Radu Moisan wrote:
>>> Default option is sysvinit
>>>
>>> Signed-off-by: Radu Moisan <radu.moisan@intel.com>
>>> ---
>>>   meta-yocto/conf/local.conf.sample |    3 +++
>>>   1 file changed, 3 insertions(+)
>>>
>>> diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
>>> index 200b4af..273e0eb 100644
>>> --- a/meta-yocto/conf/local.conf.sample
>>> +++ b/meta-yocto/conf/local.conf.sample
>>> @@ -243,3 +243,6 @@ BB_DISKMON_DIRS = "\
>>>   # track the version of this file when it was generated. This can safely be ignored if
>>>   # this doesn't mean anything to you.
>>>   CONF_VERSION = "1"
>>> +
>>> +# set default init manager: sysvinit or systemd
>>> +DISTRO_FEATURES_INITMAN ?= "sysvinit"
> Is tiny-init also an appropriate value here?

No it is not. We could consider it though.

>
> How does this differ from VIRTUAL_RUNTIME_init_manager?
>

It's just a naming style issue, I used VIRTUAL_RUNTIME_init_manager when 
I started and eventually Richard suggested the new variant.

Radu


