Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4CDFF4C80BD8
	for <poky@yoctoproject.org>; Fri,  1 Apr 2011 05:15:49 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id E9CCE1660352; Fri,  1 Apr 2011 04:15:48 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2D0C0166033E;
	Fri,  1 Apr 2011 04:15:48 -0600 (MDT)
Message-ID: <4D95A5D4.3030208@mlbassoc.com>
Date: Fri, 01 Apr 2011 04:15:48 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: "Tian, Kevin" <kevin.tian@intel.com>
References: <4D936804.8030204@mlbassoc.com>
	<625BA99ED14B2D499DC4E29D8138F15059F629DBAD@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F15059F629DBAD@shsmsx502.ccr.corp.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Autotools problem
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
X-List-Received-Date: Fri, 01 Apr 2011 10:15:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/31/2011 10:35 PM, Tian, Kevin wrote:
>> From: Gary Thomas
>> Sent: Thursday, March 31, 2011 1:28 AM
>>
>> I'm trying to build a recipe I imported from OE (tcpdump_4.1.1.bb)
>> This used to build on Poky, but now fails.  I fixed the issue with
>> the LIC_CHKSUM_FILES, but now I have a problem with the automatic
>> [re]generation of the config files.
>>
>> Rebuilding in a fresh tree from today's master
>> (6f4fbfe272f5d85cee95660a9278f3031533aec4),
>> I'm getting this error
>> | Perl lib version (5.12.2) doesn't match executable version (v5.10.1) at
>> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/perl/5.12.2/Config.pm
>> line 50.
>> | Compilation failed in require at
>> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/perl/5.12.2/File/Copy.p
>> m line 14.
>> | BEGIN failed--compilation aborted at
>> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/lib/perl/5.12.2/File/Copy.p
>> m line 14.
>> | Compilation failed in require at
>> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/share/autoconf/Autom4te/
>> FileUtils.pm line 166.
>> | BEGIN failed--compilation aborted at
>> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/share/autoconf/Autom4te/
>> FileUtils.pm line 166.
>> | Compilation failed in require at
>> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/bin/autom4te line 41.
>> | BEGIN failed--compilation aborted at
>> /home/local/p60_poky/tmp/sysroots/i686-linux/usr/bin/autom4te line 41.
>>
>> This leads to a cascade of other problems because the configure script is out of
>> date :-(
>
> could you post other problems too? Though above does be an issue, it may cause
> real problem...

The autotools problem has been filed as bug #941

My other problem with this recipe was actually the fact that configure sanity
errors are now treated as fatal (they used to just be warnings).  This particular
configure script was trying to access some non-existent [Solaris only] libraries
with absolute paths.  That set off the sanity checker, but was fairly easy to
identify and remove.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

