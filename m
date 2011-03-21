Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DE814C80050
	for <poky@yoctoproject.org>; Mon, 21 Mar 2011 12:04:47 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 38EDD16600ED; Mon, 21 Mar 2011 11:04:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	NORMAL_HTTP_TO_IP autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A9E0D166007C;
	Mon, 21 Mar 2011 11:04:44 -0600 (MDT)
Message-ID: <4D87852C.30903@mlbassoc.com>
Date: Mon, 21 Mar 2011 11:04:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D876DD3.5070106@mlbassoc.com>
	<1300722848.30423.3751.camel@rex>	<4D877E6B.9000007@mlbassoc.com>
	<4D87843C.8030600@windriver.com>
In-Reply-To: <4D87843C.8030600@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: Using RPM with Poky
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
X-List-Received-Date: Mon, 21 Mar 2011 17:04:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/21/2011 11:00 AM, Mark Hatle wrote:
> On 3/21/11 11:35 AM, Gary Thomas wrote:
>> On 03/21/2011 09:54 AM, Richard Purdie wrote:
>>> On Mon, 2011-03-21 at 09:25 -0600, Gary Thomas wrote:
>>>> I'm trying to do some testing with Poky on an atom-PC.  I thought
>>>> I'd try with a minimal system and then add pieces I need.  Sadly,
>>>> I've run aground doing this.  I've built a couple of images with
>>>> varying results:
>>>>      poky-image-minimal-live - boots on my box
>>>>      poky-image-sato-live - boots, but fails to find X display, then hangs (*)
>>>>
>>>> There seem to be no RPM tools on the minimal image.  Did I miss something?
>>>> On my old, ipk based system, I'd build up a minimal image then use opkg
>>>> to install additional packages.
>>>
>>> Minimal images were never meant to ship with the package manager and now
>>> don't. You can obviously change the image definitions easily enough as
>>> needed.
>>>
>>>>     How do I do that with the RPM based images?
>>>
>>> The same switch turns on/off the package manager data for rpm and opkg.
>>
>> I tried adding this to local.conf, but nothing changed when I build minimal image:
>>     IMAGE_FEATURES += " package-management ssh-server-dropbear "
>
> I'm really not sure if this is the right fix for the problem.. (Actually I'm
> guessing you found an issue, both documentation and functional that it's
> difficult to enable this by itself.)
>
> I believe if you add "task-poky-rpm" to the packages to be installed that will
> do it.. the problem I'm seeing is I'm not sure how or where you would add that.
>
> The task-poky-rpm is constructed from the task-poky-basic... (I've been building
> poky-image-basic recently because it's a step up from "minimal", but yet it
> doesn't have the full size of the system like sato.)
>
>> BTW, where is this documented?  Not in the Poky handbook from what I can tell.
>
> We really need to start to document these combinations, magic values, etc...
>
>> Also, is there documentation on how to use zypper, how to set up repositories, etc?
>
> There is no documentation yet on how to use Zypper.  Below is how I've been
> using it to test things:
>
> On the host:
>
> 1) Build the environment -- full set of rpm packages you want available
>
> 2) Build "createrepo-native"
>
> 3) Copy tmp/deploy/rpm and contents of somewhere it can be accessed via HTTP,
> such as /var/www/html.
>
> 4) Create the repository database:
>
> <poky directory>/scripts/poky-setup-rpmrepo /var/www/html/rpm
>
> On the target:
>
> (assuming qemu)
>
> 1) zypper addrepo http://192.167.7.1/rpm main
>
> 2) zypper refresh
>
> 3) zypper install<package>
>
>
>
> Some other useful commands:
>
> zypper info<package>
>
> This will give you basic info on a package, and tell you if it's already
> installed (@System repository) or which remote repository it's stored in.
>
> zypper remove<package>
>
> This will remove a package, and clean up any other packages that are dependent
> upon it.
>
>
> Note, there are a couple of flaws in the current zypper implementation in
> regards to Poky.
>
> The first is that there is a problem on ARM targets.  For some reason it can't
> process packages for ARM targets properly.  We're still investigating.
>
> The second is Zypper does not understand RPM dependency hinting at this point.
> There is a concept in RPM5 called weak and strong dependencies.  A strong
> dependency says that this thing MUST be installed, or its a failure.  A weak
> dependency is this thing can be installed, but if it's not we don't fail.
> Zypper treats all dependencies equally at this point and assumes they are strong.

Thanks, this should get me started (I certainly would have had a hard time guessing
all these details!)

Perhaps I should file a bug (or 2) about the missing/incomplete documentation?

>>>
>>>>    I've checked the documentation and there's basically nothing
>>>> about this, unless I looked in the wrong place.
>>>>
>>>> Any ideas or pointers gladly accepted.  Thanks
>>>>
>>>> (*) I had success with this in the past when I booted with MACHINE=emenlow
>>>> but that hardware isn't in the primary list.
>>>
>>> I'm not sure why this isn't working or what the problem might be...
>>
>> It complains it can't find /dev/fb0.  See the boot log at http://www.mlbassoc.com/poky/boot_2011-03-21.log
>>
>>>
>>> You didn't mention which branch this is with btw.
>>
>> master aeaa356a5ee77b4596c479451a9db289381a4d16
>>
>> Thanks again
>>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

