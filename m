Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFF3AE00C6A; Sun,  7 Jul 2019 19:17:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC30EE00C25
	for <poky@yoctoproject.org>; Sun,  7 Jul 2019 19:17:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x682FM0w032236
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 7 Jul 2019 19:15:33 -0700
Received: from [128.224.162.179] (128.224.162.179) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Sun, 7 Jul 2019 19:15:11 -0700
To: Adrian Bunk <bunk@stusta.de>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
	<20190706095328.GA1877@localhost>
	<03ef1986-14bd-43a7-79c8-99eebe90a25b@windriver.com>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <6595312b-3a95-658a-687b-1b770d6f49c5@windriver.com>
Date: Mon, 8 Jul 2019 10:13:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <03ef1986-14bd-43a7-79c8-99eebe90a25b@windriver.com>
Cc: poky@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [oe-core][PATCH 1/2] defaultsetup.conf: enable select init manager
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
X-List-Received-Date: Mon, 08 Jul 2019 02:17:02 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2019/7/8 上午10:01, Kang Kai wrote:
> On 2019/7/6 下午5:53, Adrian Bunk wrote:
>> On Thu, Jul 04, 2019 at 09:45:19PM +0800, kai.kang@windriver.com wrote:
>>> From: Kai Kang <kai.kang@windriver.com>
>>>
>>> Introduce a new variable INIT_MANAGER and create 3 init-manager-*.inc
>>> files to configure init manager settings. Available values of
>>> INIT_MANAGER are sysvinit, systemd and mdev-busybox. 'sysvinit' is set
>>> by default for compatibility.
>>> ...
>>> --- a/meta/conf/distro/defaultsetup.conf
>>> +++ b/meta/conf/distro/defaultsetup.conf
>>> @@ -23,3 +23,6 @@ PACKAGE_CLASSES ?= "package_ipk"
>>>   INHERIT_BLACKLIST = "blacklist"
>>>   INHERIT_DISTRO ?= "debian devshell sstate license remove-libtool"
>>>   INHERIT += "${PACKAGE_CLASSES} ${USER_CLASSES} ${INHERIT_DISTRO} 
>>> ${INHERIT_BLACKLIST}"
>>> +
>>> +INIT_MANAGER ??= "sysvinit"
>>> +require conf/distro/include/init-manager-${INIT_MANAGER}.inc
>>> ...
>>> --- /dev/null
>>> +++ b/meta/conf/distro/include/init-manager-sysvinit.inc
>>> @@ -0,0 +1,6 @@
>>> +# Use sysvinit for system initialization
>>> +DISTRO_FEATURES_append = " sysvinit"
>>> +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " systemd"
>>> +VIRTUAL-RUNTIME_init_manager = "sysvinit"
>>> +VIRTUAL-RUNTIME_initscripts = "initscripts"
>>> +VIRTUAL-RUNTIME_login_manager = "busybox"
>> I am not sure whether this can be fixed better, but this does break
>> existing configurations that use a non-default init system.
>>
>> I just ran into a build issue with
>>    VIRTUAL-RUNTIME_init_manager = "systemd"
>> since this now resulted in both sysvinit and systemd being attempted to
>> be installed to the image.
>
> It is a little weird. NO sysvinit in DISTRO_FEATURES. I'll check 
> what's wrong with it w/o the VIRTUAL-RUNTIME patch.


I misunderstood your config. It is a problem when user wants to set 
init_manager directly.  Thanks for your trying.

Regards,
Kai


>
> Regards,
> Kai
>
>
>>
>> This was fixable in my configuration with
>>    -VIRTUAL-RUNTIME_init_manager = "systemd"
>>    +INIT_MANAGER = "systemd"
>>
>> This at least needs to be properly documented as a breaking change.
>>
>> cu
>> Adrian
>>
>

-- 
Kai Kang


