Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 39AA44C8085F
	for <poky@lists.pokylinux.org>; Mon, 24 Jan 2011 17:05:48 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id ADE7C166014A; Mon, 24 Jan 2011 16:05:47 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id B22F7166029B;
	Mon, 24 Jan 2011 16:05:46 -0700 (MST)
Message-ID: <4D3E05CA.8080002@mlbassoc.com>
Date: Mon, 24 Jan 2011 16:05:46 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4D3DF0F8.50704@mlbassoc.com> <1295905978.10128.65.camel@elmorro>
In-Reply-To: <1295905978.10128.65.camel@elmorro>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Build failure
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
X-List-Received-Date: Mon, 24 Jan 2011 23:05:48 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/24/2011 02:52 PM, Tom Zanussi wrote:
> On Mon, 2011-01-24 at 13:36 -0800, Gary Thomas wrote:
>> Trying to build poky-image-sato-live:
>>     OE Build Configuration:
>>     BB_VERSION        = "1.11.0"
>>     METADATA_BRANCH   = "master"
>>     METADATA_REVISION = "74783fec56d6ced1a793b36410233472e7daf445"
>>     TARGET_ARCH       = "i586"
>>     TARGET_OS         = "linux"
>>     MACHINE           = "qemux86"
>>     DISTRO            = "poky"
>>     DISTRO_VERSION    = "0.9+snapshot-20110124"
>>     TARGET_FPU        = ""
>>
>> ERROR: Function 'build_boot_bin' failed (see /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954 for further information)
>> ERROR: '/tmp/poky-amltd2/meta/recipes-sato/images/poky-image-sato-live.bb' failed
>> ERROR: Logfile of failure stored in: /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954
>> Log data follows:
>> | install: cannot stat `/home/local/pc_poky/tmp/sysroots/qemux86-poky-linux/kernel/bzImage': No such file or directory
>> | Function 'build_boot_bin' failed (see /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954 for further information)
>> | ERROR: Function 'build_boot_bin' failed (see /home/local/pc_poky/tmp/work/i586-poky-linux/poky-image-sato-live-1.0-r0/temp/log.do_bootimg.10954 for further information)
>> NOTE: package poky-image-sato-live-1.0-r0: task build_boot_bin: Failed
>> ERROR: Task 9 (/tmp/poky-amltd2/meta/recipes-sato/images/poky-image-sato-live.bb, do_bootimg) failed with exit code '1'
>>
>> n.b. I tried to access BugZilla to report this, but that
>> failed as well :-(
>>
>
> The problem is this commit:
>
> commit bc9d2fbfd4eaad0df5647dd5d07dfb9fcff80ff3
> Author: Dongxiao Xu<dongxiao.xu@intel.com>
> Date:   Tue Jan 18 16:17:58 2011 +0800
>
>      staging: Use relative path in sysroot-destdir for target recipes
>
> Dongxiao is aware of the problem and working on a fix.  In the meantime,
> you could try the fix below from Dongxiao, cut and pasted from IRC, or
> back up to the commit before that...
>
> Hope that helps,
>
> Tom
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 9d3b2bb..d1b5398 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -512,3 +512,5 @@ EXPORT_FUNCTIONS do_deploy
> PACKAGES =+ "perf"
> FILES_perf = "${bindir}/* \
> ${libexecdir}"
> +
> +do_populate_sysroot[sstate-outputdirs] = "${STAGING_DIR}/${MACHINE}${HOST_VENDOR}-${HOST_OS}/"

Yes, this helped, but I did have to run 'bitbake virtual/kernel -c clean'
before it made any difference.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

