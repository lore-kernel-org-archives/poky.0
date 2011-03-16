Return-Path: <scott.a.garman@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B07044C8009A
	for <poky@yoctoproject.org>; Wed, 16 Mar 2011 03:35:37 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Mar 2011 01:35:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,193,1299484800"; d="scan'208";a="667800864"
Received: from unknown (HELO [10.255.12.153]) ([10.255.12.153])
	by fmsmga002.fm.intel.com with ESMTP; 16 Mar 2011 01:35:37 -0700
Message-ID: <4D807658.5070600@intel.com>
Date: Wed, 16 Mar 2011 01:35:36 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <cover.1300230459.git.scott.a.garman@intel.com>
	<945a0bac5f7174fdb27b518b061cb8eabf640a78.1300230459.git.scott.a.garman@intel.com>
	<5B279E08-1255-421A-82AE-F3795325744B@dominion.thruhere.net>
In-Reply-To: <5B279E08-1255-421A-82AE-F3795325744B@dominion.thruhere.net>
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 2/7] task-poky-ssh-dropbear: new task recipe for dropbear ssh
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
X-List-Received-Date: Wed, 16 Mar 2011 08:35:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2011 01:13 AM, Koen Kooi wrote:
>
> Op 16 mrt 2011, om 00:12 heeft Scott Garman het volgende geschreven:
>
>> From: Scott Garman<scott.a.garman@intel.com>
>>
>> This task can be used when IMAGE_FEATURES is set to
>> ssh-server-dropbear.
>>
>> Signed-off-by: Scott Garman<scott.a.garman@intel.com>
>> ---
>> meta/recipes-core/tasks/task-poky-ssh-dropbear.bb |   17 +++++++++++++++++
>> 1 files changed, 17 insertions(+), 0 deletions(-)
>> create mode 100644 meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
>>
>> diff --git a/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
>> new file mode 100644
>> index 0000000..870d2d9
>> --- /dev/null
>> +++ b/meta/recipes-core/tasks/task-poky-ssh-dropbear.bb
>> @@ -0,0 +1,17 @@
>> +DESCRIPTION = "Dropbear SSH task for Poky"
>> +LICENSE = "MIT"
>> +LIC_FILES_CHKSUM = "file://${POKYBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>> +                    file://${POKYBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
>> +PR = "r0"
>> +
>> +PACKAGES = "\
>> +    task-poky-ssh-dropbear \
>> +    task-poky-ssh-dropbear-dbg \
>> +    task-poky-ssh-dropbear-dev \
>> +    "
>> +
>> +ALLOW_EMPTY = "1"
>> +
>> +RDEPENDS_task-poky-ssh-dropbear = "dropbear"
>> +RDEPENDS_task-poky-ssh-dropbear-dbg = "dropbear-dbg"
>> +RDEPENDS_task-poky-ssh-dropbear-dev = "dropbear-dev"
>
> looks like a good candidate for 'inherit task'

Thanks for the suggestion, Koen.

Richard - a quick browse through Poky's tasks shows only one of them 
uses inherit task (task-base.bb). Is there any reason to avoid this that 
I'm not aware of? Otherwise, I'm happy to do a respin with inherit task.

Thanks,

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

