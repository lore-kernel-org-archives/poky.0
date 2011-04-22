Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0BA124C80A7B
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 23:23:44 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 21 Apr 2011 21:23:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,253,1301900400"; d="scan'208";a="423683497"
Received: from unknown (HELO [10.255.13.83]) ([10.255.13.83])
	by azsmga001.ch.intel.com with ESMTP; 21 Apr 2011 21:23:44 -0700
Message-ID: <4DB102DA.5070205@linux.intel.com>
Date: Thu, 21 Apr 2011 21:23:54 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4DB0C35E.8060004@linux.intel.com>
	<BANLkTikyEPp_4LA5_bZSjFXoBqrbYic8xg@mail.gmail.com>
In-Reply-To: <BANLkTikyEPp_4LA5_bZSjFXoBqrbYic8xg@mail.gmail.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Logging: mechanisms and best practices
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
X-List-Received-Date: Fri, 22 Apr 2011 04:23:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 04/21/2011 05:09 PM, Chris Larson wrote:
> On Thu, Apr 21, 2011 at 4:53 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>>
>> From what I could gather, the preferred method is to use the various
>> loglevel functions from bb. ie:
>>
>> bb.fatal()      A fatal error, the recipe will set the error code and
>>                abort.
>> bb.error()      A non-fatal error. The error code is set, the build
>>                will be marked as red in the autobuilder.
>> bb.warn()       A non-fatal condition that could affect how things
>>                progress.
>> bb.debug()      One of several debug levels.
>> bb.note()       A condition the user should be made aware of
>> bb.plain()      typically the output of a tool, such as listtasks
>>
>> note and plain will go to the console and should be used extremely
>> sparingly. debug will only go to the console with the -D[D[D]] bitbake
>> arguments, but should always go to the logs.
> 
> As far as I know, notes from tasks are no longer displayed with
> knotty.  They certainly aren't in master.


Gah, right. I knew that, got lost in maelstrom.


> 
>> For annotating your recipe's task's logs, debug should typically be
>> used. warn() should be used whenever possible over error() so as to not
>> set the error code.
> 
> Correct.
> 
>> The above only covers the python functions in recipes. Unfortunately,
>> many functions are bash. Most of these recipes use "echo", although
>> there exist wrappers to echo in base.bbclass:
>>
>> oenote
>> oewarn
>> oedebug
>> oefatal
>>
>> As these only wrap echo, none of them go to the console without -D[D[D]]
>> flags. Note the absence of oeplain and oeerror. oeplain wouldn't work
>> the same as bb.plain() as it doesn't go the console, the existing oenote
>> has a similar problem. I've added oeerror() to my local build. oedebug()
>> uses "clever" bash tests to check the OEDEBUG loglevel, unfortunately
>> this causes the function to exit with a failure code when the condition
>> is not met. I've addressed this as well. There are zero users of the oe*
>> logging calls in "meta" but I did find several users in oe.
>>
>> The oe* calls depend on OEDEBUG which is not included in the environment
>> whitelists and is not set by the -D[D[D]] arguments. Even adding it to
>> the whitelist and my environent it wasn't accessible from the bash
>> function. I was unable to to use oedebug() as I couldn't get the OEDEBUG
>> value set without hardcoding it into base.bbclass.
> 
> These are largely remnants.  I'm not opposed to having the shell
> functions that output useful things, but at the very least we can use
> a python snippet to check the current bitbake logging level rather
> than relying on an old env var.  There's currently no way for shell to
> output things to the bitbake UI's display.  In the long term, we
> should be able to provide small command-line scripts which communicate
> with the current running bitbake server the same way the current
> running UI does.


If they are remnants, would anyone object to my replacing them with:

bbplain()
bbnote()
bbwarn()
bbdebug()
bberror()
bbfatal()

?

My hope is to get something working now, even if it is just to the logs,
that we can extend the functionality of by integrating it with bitbake
logging later - without changing the interface.


> 
>> So... before I start breaking things, I wanted to make sure I fully
>> understand how these mechanisms are intended to be used. Also, I would
>> very much like to see a consistent interface between bash and python
>> fragments that have the same semantics. There are also at least two more
>> logging mechanisms I stumbled across withing the bitbake source. One is
>> marked deprecated, and I'm not sure how the other is meant to be used.
>> The two I mentioned above seem to be the right ones for recipes to use.
> 
> This is correct.  Internal bitbake code should be using the python
> logging framework at this time.  For now, the api functions
> bb.{error,warn,...} are correct for the metadata.


"For now"... Do you expect to see a change here? I don't want to go off
canonicalizing my recipes if the recipes logging API is likely to change
significantly from what I use.


> 
>> Would people consider the following to be appropriate:
>>
>> o Remove BBDEBUG from local.conf.sample as it appears not be used.
> 
> Agreed.
> 
>> o Modify oedebug to always echo the message as all echos only go to the
>>  logs anyway. A future change may enhance the oe* calls to print to the
>>  console for oenote, a new oeplain, and oedebug based on -D[D[D]] and
>>  BBDEBUG.
> 
> This would lose us functionality unnecessarily.


Well... right now it doesn't work at all ;-)


> We can
> programmatically check the bitbake debugging level from ${@}.  E.g.:
> 
> if ${@['false', 'true'][bb.msg.debug_level['default']]}; then
>   echo "DEBUG: " "$@"
> fi


The problem I have with this approach is that it limits what gets sent
to the logs. As I understand it, the -D[D[D]] mechanism is meant to
limit what gets sent to the console, but all debug output should go to
the logs.

So until we integrate this with the bitbake logger, I think it makes the
most sense to just print it all to the logs.

Am I off in the weeds here?


> 
>> o Remove OEDEBUG as it doesn't seem to fit with the current BBDEBUG,
>>  -D[D[D]] mechanisms nor with the expectation that all debug statements
>>  get sent to the logs.
> 
> Agreed.

Thanks for the review and insight Chris!

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

