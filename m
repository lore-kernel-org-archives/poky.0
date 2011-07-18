Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 936234C800B2
	for <poky@yoctoproject.org>; Mon, 18 Jul 2011 09:34:01 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 325C1166033B; Mon, 18 Jul 2011 08:34:01 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 225011660162;
	Mon, 18 Jul 2011 08:34:00 -0600 (MDT)
Message-ID: <4E244458.8040406@mlbassoc.com>
Date: Mon, 18 Jul 2011 08:34:00 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4E243A67.3090400@mlbassoc.com>	
	<CABcZANmcWYoF4wb6Nx=w9LDhaRdzSdhc9XOHD7n8w_NfskGThA@mail.gmail.com>	
	<4E243DA5.4090207@mlbassoc.com>	
	<CABcZANnQ9J9DDdVMgjbF2nKwcwOBcMp9XyHyBDwRyiHAYvu=iA@mail.gmail.com>
	<1310999306.20015.1267.camel@rex>
In-Reply-To: <1310999306.20015.1267.camel@rex>
Cc: Chris Larson <clarson@kergoth.com>, Poky Project <poky@yoctoproject.org>
Subject: Re: Order of .conf processing?
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
X-List-Received-Date: Mon, 18 Jul 2011 14:34:01 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/18/2011 08:28 AM, Richard Purdie wrote:
> On Mon, 2011-07-18 at 07:12 -0700, Chris Larson wrote:
>> On Mon, Jul 18, 2011 at 7:05 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>>> On 07/18/2011 07:59 AM, Chris Larson wrote:
>>>>
>>>> On Mon, Jul 18, 2011 at 6:51 AM, Gary Thomas<gary@mlbassoc.com>   wrote:
>>>>>
>>>>> What's the order of processing of the various .conf files?
>>>>>
>>>>> It seems to me that bitbake.conf must be first as it seems
>>>>> impossible to override settings in that file using a soft
>>>>> assignment.  In particular, local.conf often has soft settings
>>>>> but these dont' seem to change what's in bitbake.conf
>>>>
>>>> BitBake only parses one global configuration file, bitbake.conf. It's
>>>> bitbake.conf that includes/requires all the other configuration files.
>>>> You can see the order by reading those inclusions in bitbake.conf.
>>>> Historically, the intention was for the configuration file load order
>>>> to be relatively parallel to the overrides order -- two different
>>>> mechanisms for implementing what is essentially a layered architecture
>>>> for the metadata, allowing, generally, more specific information to
>>>> override more general information. The configuration file order
>>>> differs slightly from that, however, as it's not possible to load the
>>>> distro or machine config files after local.conf, as local.conf is
>>>> generally where DISTRO and MACHINE are defined.
>>>
>>> In that case, isn't using ?= assignments in bitbake.conf a bit misleading?
>>
>> First, there is one place variables can come from before the
>> configuration files, and that's the process environment, for variables
>> which aren't filtered out. Second, it could use ?= sanely after the
>> configuration files are included, as well.
>
> It does this second part pretty clearly:
>
> [...]
> require conf/xxx.conf
> require conf/yyy.conf
>
> TUNE_ARCH ?= "INVALID"
> TUNE_FEATURES ?= "${TUNE_FEATURES_tune-${TUNENAME}}"
>
> ##################################################################
> # Weak variables (usually to retain backwards compatibility)
> ##################################################################
>
> DL_DIR ?= "${TOPDIR}/downloads"
> [...]
>
> so most of the ?= variables are after the includes.
>
> Looking at the file, there are some good candidates for either = or ??=
> though, including I suspect the console ones which are likely what
> prompted this?

Yes, I tried to override TERMCMD using ?= in local.conf and that didn't
work.  Using = fixed it though.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

