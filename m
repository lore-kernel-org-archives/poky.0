Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 572124C80053
	for <poky@lists.pokylinux.org>; Thu, 10 Feb 2011 08:51:19 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 1AD5F16601B4; Thu, 10 Feb 2011 07:51:19 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D878A1660189;
	Thu, 10 Feb 2011 07:51:16 -0700 (MST)
Message-ID: <4D53FB64.501@mlbassoc.com>
Date: Thu, 10 Feb 2011 07:51:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D529954.4000505@mlbassoc.com> <1297346602.20543.4738.camel@rex>
In-Reply-To: <1297346602.20543.4738.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Fetch problems with PREMIRRORS
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
X-List-Received-Date: Thu, 10 Feb 2011 14:51:19 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/10/2011 07:03 AM, Richard Purdie wrote:
> On Wed, 2011-02-09 at 06:40 -0700, Gary Thomas wrote:
>> Per Richard's suggestion, I have added this to my DISTRO.conf:
>>
>> # Provide pre-staged sources
>> PREMIRRORS = "\
>> http://.*/.*   file:///work/misc/Poky/sources/ \n \
>> https://.*/.*   file:///work/misc/Poky/sources/ \n \
>> ftp://.*/.*   file:///work/misc/Poky/sources/ \n \
>> bzr://.*/.*   file:///work/misc/Poky/sources/ \n \
>> cvs://.*/.*   file:///work/misc/Poky/sources/ \n \
>> git://.*/.*   file:///work/misc/Poky/sources/ \n \
>> hg://.*/.*    file:///work/misc/Poky/sources/ \n \
>> osc://.*/.*   file:///work/misc/Poky/sources/ \n \
>> p4://.*/.*    file:///work/misc/Poky/sources/ \n \
>> svk://.*/.*   file:///work/misc/Poky/sources/ \n \
>> svn://.*/.*   file:///work/misc/Poky/sources/ \n"
>>
>> The tree '/work/misc/Poky/sources' is a fully populated source
>> cache.
>>
>> This all works great as long as the needed sources are in
>> the cache.  However, there seems to be no fallback if they
>> are not present.  I get errors like this:
>> | NOTE: fetch http://pokylinux.org/sources/git2_github.com.wrpseudo.pseudo.git.tar.gz
>> | NOTE: fetch http://autobuilder.pokylinux.org/sources/git2_github.com.wrpseudo.pseudo.git.tar.gz
>> | ERROR: Function 'Fetcher failure for URL: 'git://github.com/wrpseudo/pseudo.git;protocol=git'. Unable to fetch URL git://github.com/wrpseudo/pseudo.git;protocol=git from any
>> source.' failed
>> NOTE: package pseudo-native-0.0+git1+5434325fc887817ebb2bad36313d8277992cef1d-r18: task Fetcher failure for URL: 'git://github.com/wrpseudo/pseudo.git;protocol=git'. Unable to
>> fetch URL git://github.com/wrpseudo/pseudo.git;protocol=git from any source.: Failed
>>
>> In order to actually fetch, I have to remove the PREMIRRORS
>> from my conf.
>>
>> Is there some way to get it to use the source cache but
>> still fetch when needed?
>>
>> Thanks
>>
>> Note: I also normally have BB_NO_NETWORK="1", but that is not
>> applicable here (no message about it) and setting it false does
>> not change the behaviour.
>
> It is applicable.
>
> Try not setting that variable at all, not setting it false. I suspect
> there are two issues here:
>
> a) BB_NO_NETWORK is having an effect but the log messages are being
>     swallowed...
> b) "false" handling for the variable might not be working properly so
>     leave it unset.
>
> We can fix those things but I'd like to confirm these are the problems
> first.

Correct, it does seem to be the case.  When BB_NO_NETWORK="0",
the fetcher works properly.  When set to "1", it fails, but
no explicit error about why is generated, neither on the console
nor in the log.do_fetch file.

I made this small change to check it out:
diff --git a/bitbake/lib/bb/fetch2/__init__.py b/bitbake/lib/bb/fetch2/__init__.py
index ef9d75f..57c4f20 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -395,6 +395,7 @@ def check_network_access(d, info = ""):
      log remote network access, and error if BB_NO_NETWORK is set
      """
      if bb.data.getVar("BB_NO_NETWORK", d, True) == "1":
+        bb.error("BB_NO_NETWORK is set, but the fetcher code attempted network access with the command %s" % info)
          raise FetchError("BB_NO_NETWORK is set, but the fetcher code attempted network access with the command %s" % inf
      else:
          logger.debug(1, "Fetcher accessed the network with the command %s" % info)

This shows that this _is_ the error case, with the messages making it to
the console and log file.  I can see that this exception is being thrown
on line 886, but the reason is lost in the exception data & I'm unclear
how to retrieve it and present it to the user.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

