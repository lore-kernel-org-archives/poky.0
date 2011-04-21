Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 00D0D4C80A73
	for <poky@yoctoproject.org>; Thu, 21 Apr 2011 18:52:52 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Apr 2011 16:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,252,1301900400"; d="scan'208";a="682198688"
Received: from unknown (HELO [10.255.13.83]) ([10.255.13.83])
	by fmsmga002.fm.intel.com with ESMTP; 21 Apr 2011 16:52:52 -0700
Message-ID: <4DB0C35E.8060004@linux.intel.com>
Date: Thu, 21 Apr 2011 16:53:02 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Lightning/1.0b2 Thunderbird/3.1.8
MIME-Version: 1.0
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Logging: mechanisms and best practices
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
X-List-Received-Date: Thu, 21 Apr 2011 23:52:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

In trying to add some checkpoint logging to the kernel recipes, I wanted
to understand the proper mechanisms and best practices for logging with
bitbake recipes.

From what I could gather, the preferred method is to use the various
loglevel functions from bb. ie:

bb.fatal()	A fatal error, the recipe will set the error code and
		abort.
bb.error()	A non-fatal error. The error code is set, the build
		will be marked as red in the autobuilder.
bb.warn()	A non-fatal condition that could affect how things
		progress.
bb.debug() 	One of several debug levels.
bb.note()	A condition the user should be made aware of
bb.plain()	typically the output of a tool, such as listtasks

note and plain will go to the console and should be used extremely
sparingly. debug will only go to the console with the -D[D[D]] bitbake
arguments, but should always go to the logs.

For annotating your recipe's task's logs, debug should typically be
used. warn() should be used whenever possible over error() so as to not
set the error code.

The above only covers the python functions in recipes. Unfortunately,
many functions are bash. Most of these recipes use "echo", although
there exist wrappers to echo in base.bbclass:

oenote
oewarn
oedebug
oefatal

As these only wrap echo, none of them go to the console without -D[D[D]]
flags. Note the absence of oeplain and oeerror. oeplain wouldn't work
the same as bb.plain() as it doesn't go the console, the existing oenote
has a similar problem. I've added oeerror() to my local build. oedebug()
uses "clever" bash tests to check the OEDEBUG loglevel, unfortunately
this causes the function to exit with a failure code when the condition
is not met. I've addressed this as well. There are zero users of the oe*
logging calls in "meta" but I did find several users in oe.

The oe* calls depend on OEDEBUG which is not included in the environment
whitelists and is not set by the -D[D[D]] arguments. Even adding it to
the whitelist and my environent it wasn't accessible from the bash
function. I was unable to to use oedebug() as I couldn't get the OEDEBUG
value set without hardcoding it into base.bbclass.

A similar variable "BBDEBUG" exists. It can be set in local.conf (the
sample suggests "yes" as a value). This has zero effect from what I can
tell. Setting BBDEBUG in the environment is used in the same way as
-D[D[D]], and if set to "yes" will cause bitbake to error out trying to
case "yes" to an integer.

So... before I start breaking things, I wanted to make sure I fully
understand how these mechanisms are intended to be used. Also, I would
very much like to see a consistent interface between bash and python
fragments that have the same semantics. There are also at least two more
logging mechanisms I stumbled across withing the bitbake source. One is
marked deprecated, and I'm not sure how the other is meant to be used.
The two I mentioned above seem to be the right ones for recipes to use.

Would people consider the following to be appropriate:

o Remove BBDEBUG from local.conf.sample as it appears not be used.
o Modify oedebug to always echo the message as all echos only go to the
  logs anyway. A future change may enhance the oe* calls to print to the
  console for oenote, a new oeplain, and oedebug based on -D[D[D]] and
  BBDEBUG.
o Remove OEDEBUG as it doesn't seem to fit with the current BBDEBUG,
  -D[D[D]] mechanisms nor with the expectation that all debug statements
  get sent to the logs.

Thoughts?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

