Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E0064C800A2
	for <poky@yoctoproject.org>; Sat,  2 Apr 2011 12:04:30 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id C331716603F0; Sat,  2 Apr 2011 11:04:29 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D707816603E4;
	Sat,  2 Apr 2011 11:04:28 -0600 (MDT)
Message-ID: <4D97571C.8090701@mlbassoc.com>
Date: Sat, 02 Apr 2011 11:04:28 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <4D971BF9.7050707@intel.com>
	<4D971D4C.60109@mlbassoc.com>	<4D972642.80400@intel.com>
	<1301763560.2398.14.camel@scimitar>
In-Reply-To: <1301763560.2398.14.camel@scimitar>
Cc: poky@yoctoproject.org
Subject: Re: How to append inc file
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
X-List-Received-Date: Sat, 02 Apr 2011 17:04:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/02/2011 10:59 AM, Joshua Lock wrote:
> On Sat, 2011-04-02 at 21:36 +0800, Yu Ke wrote:
>> on 2011-4-2 20:57, Gary Thomas wrote:
>>> On 04/02/2011 06:52 AM, Yu Ke wrote:
>>>> Hi,
>>>>
>>>> bbappend file can be used to append content to bb file, and it is very
>>>> useful in BSP meta data. Today I just find the *.inc file is also need
>>>> to be appended, so I wonder if there
>>>> is similar incappend file that can append content to inc file?
>>>>
>>>> I meet this requirement when trying to fix bug 896
>>>> (http://bugzilla.yoctoproject.org/show_bug.cgi?id=896). To make
>>>> poky-image-clutter build pass in n450, the clutter.inc need to be
>>>> appended to change the COMPATIBLE_MACHINE.
>>>
>>> Why can't you just put the change in the .bbappend file (since it's
>>> already recipe/target specific)?
>>>
>>
>> currently there is clutter 1.4 and clutter 1.6 which both use the
>> clutter.inc. and yes, It is also fine to use duplicate bbappend to
>> append clutter 1.4 and clutter 1.6 respectively. But if clutter.inc can
>> be appended, then it will reduce the duplicate code. Also inc file
>> append has another benefit, when clutter 1.8 is out in the future, the
>> BSP append code don't need any change.
>
> IIRC the common way to handle this now is to have shared code across
> versions in clutter.inc then have inc files for the major releases that
> require them (clutter-1.4.inc, clutter-1.6.inc, etc) and then have the
> version inc file include the core inc file.
> The recipes would then include the appropriate inc file for the major
> version (1.6, etc) which they build.

How does that solve the problem that the .inc file needs to have BSP
specific changes (which I find pretty abhorrent BTW)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

