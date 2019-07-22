Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52C34E00D8B; Sun, 21 Jul 2019 18:39:31 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2EBEE00994
	for <poky@yoctoproject.org>; Sun, 21 Jul 2019 18:39:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6M1cGEd017152
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 21 Jul 2019 18:38:26 -0700
Received: from [128.224.162.179] (128.224.162.179) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Sun, 21 Jul 2019 18:38:05 -0700
To: <richard.purdie@linuxfoundation.org>, "Burton, Ross"
	<ross.burton@intel.com>
References: <20190704134520.16320-1-kai.kang@windriver.com>
	<20190704134520.16320-2-kai.kang@windriver.com>
	<CAJTo0LbmYp-70L=Z_T0jE4xS1mR_vLXKQE18O_EpeEwD6wdroA@mail.gmail.com>
	<a3ee2977ee2d63f1908f110d9273352815ba7d35.camel@linuxfoundation.org>
From: Kang Kai <Kai.Kang@windriver.com>
Message-ID: <8d6b156e-7d68-e4b8-8688-2c897ebf228a@windriver.com>
Date: Mon, 22 Jul 2019 09:37:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <a3ee2977ee2d63f1908f110d9273352815ba7d35.camel@linuxfoundation.org>
Cc: Poky Project <poky@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
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
X-List-Received-Date: Mon, 22 Jul 2019 01:39:31 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2019/7/20 上午6:28, richard.purdie@linuxfoundation.org wrote:
> On Fri, 2019-07-19 at 22:35 +0100, Burton, Ross wrote:
>> On Thu, 4 Jul 2019 at 15:40, <kai.kang@windriver.com> wrote:
>>> +++ b/meta/conf/distro/include/init-manager-systemd.inc
>>> @@ -0,0 +1,6 @@
>>> +# Use systemd for system initialization
>>> +DISTRO_FEATURES_append = " systemd"
>>> +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " sysvinit"
>>> +VIRTUAL-RUNTIME_init_manager = "systemd"
>>> +VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>>> +VIRTUAL-RUNTIME_login_manager = "shadow-base"
>>> diff --git a/meta/conf/distro/include/init-manager-sysvinit.inc
>>> b/meta/conf/distro/include/init-manager-sysvinit.inc
>>> new file mode 100644
>>> index 0000000000..7725b30e1e
>>> --- /dev/null
>>> +++ b/meta/conf/distro/include/init-manager-sysvinit.inc
>>> @@ -0,0 +1,6 @@
>>> +# Use sysvinit for system initialization
>>> +DISTRO_FEATURES_append = " sysvinit"
>>> +DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " systemd"
>>> +VIRTUAL-RUNTIME_init_manager = "sysvinit"
>>> +VIRTUAL-RUNTIME_initscripts = "initscripts"
>>> +VIRTUAL-RUNTIME_login_manager = "busybox"
>> Back when I integrated systemd into oe-core one of the use cases was
>> a single distro that builds a main image using systemd, and a
>> rescue/update image using sysv/busybox.  How is this possible with
>> this system?


Hi Richard,

> We're still missing one or two init system setup variants,

What kind of missing variants do you mean?


> I was
> planning to add those and convert our autobuilder tests over to use
> them rather than the fragements that are currently coded into
> autobuilder-helper.


I just run oe-selftest -a with this patch after you updated the patch in 
oe-core. But I met some (>15) errors

ERROR: Unable to start bitbake server (None)

But I think it should not be related with init manager changes and will 
change a build machine to test.
Do you have test it again in autobuilder and any failure found? Thanks.

Regards,
Kai


>
>> Personally, I'd prefer to see the DISTRO_FEATURE wrangling left out
>> of those files, and let the user ensure the right features are set.
>> After all, systemd will refuse to build unless the systemd feature is
>> enabled.
> With the addition of the "none" default, users aren't being forced to
> use them so that can do something custom or use a precanned default
> which I think gives the best of both worlds?
>
> Cheers,
>
> Richard
>
>

-- 
Kai Kang


