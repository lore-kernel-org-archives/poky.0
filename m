Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id BB5884C800B3
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 15:42:36 -0500 (CDT)
Received: from mail-pw0-f52.google.com ([209.85.160.52])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 13 Jun 2011 13:42:35 -0700
Received: by pwi4 with SMTP id 4so2210606pwi.25
	for <poky@yoctoproject.org>; Mon, 13 Jun 2011 13:42:35 -0700 (PDT)
Received: by 10.142.125.3 with SMTP id x3mr1217099wfc.19.1307997747569;
	Mon, 13 Jun 2011 13:42:27 -0700 (PDT)
Received: from [10.6.18.227] (c-71-193-189-117.hsd1.wa.comcast.net
	[71.193.189.117])
	by mx.google.com with ESMTPS id z32sm4318784wfl.11.2011.06.13.13.42.25
	(version=SSLv3 cipher=OTHER); Mon, 13 Jun 2011 13:42:27 -0700 (PDT)
Message-ID: <4DF67631.9000702@intel.com>
Date: Mon, 13 Jun 2011 13:42:25 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4DF668B1.1060500@ll.mit.edu> <4DF6715D.3050703@linux.intel.com>
In-Reply-To: <4DF6715D.3050703@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: Git/perl build problems
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
X-List-Received-Date: Mon, 13 Jun 2011 20:42:37 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/13/2011 01:21 PM, Darren Hart wrote:
> On 06/13/2011 12:44 PM, Jeff Mitchell wrote:
>> Hello,
>>
>> Late last week I did a full rebuild of packages from poky master branch
>> (beagleboard target). Today, if I update my clone's master branch to
>> current upstream, I'm unable to build git (extra whitespace added for
>> clarity)
>>
>> NOTE: Running task 210 of 4247 (ID: 324,
>> virtual:native:/home/jmitchell/yocto/poky/meta/recipes-devtools/git/git_1.7.5.1.bb,
>> do_configure)
>>
>> NOTE: package git-native-1.7.5.1-r1: task do_configure: Started
>>
>> ERROR: Logfile of failure stored in:
>> /home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/log.do_configure.12679
>>
>> Log data follows:
>>
>> |
>> /home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/run.do_configure.12679:
>> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/automake:
>> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad
>> interpreter: No such file or directory
>
>
> This is a known issue with a change in the perlnative bits - I hit this
> late last week. I thought this had been fixed. Saul?
>
Understood, but not fixed yet!

The workaround at this point is to

"bitbake -c cleansstate autoconf-native automake-native"

Thanks should resolve this issue.

Sau!

> --
> Darren
>
>> |
>> /home/jmitchell/yocto/build/tmp/work/i686-linux/git-native-1.7.5.1-r1/temp/run.do_configure.12679:
>> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/automake:
>> /home/jmitchell/yocto/build/tmp/sysroots/i686-linux/usr/bin/perl: bad
>> interpreter: No such file or directory
>>
>> My guess is that it's related to 4c790efa, but reverting that patch in a
>> private branch did not really help. I've tried cleaning and rebuilding
>> perl, perl-native, and git, with no success.
>>
>> Did I simply miss some updating step...?
>>
>> Thanks,
>> Jeff
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>


