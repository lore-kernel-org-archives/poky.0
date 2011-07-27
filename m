Return-Path: <holger@freyther.de>
Received: from gandharva.secretlabs.de (gandharva.secretlabs.de
	[78.46.147.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id BE2424C800A1
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 08:08:18 -0500 (CDT)
Received: from [192.168.0.101] (91-64-80-26-dynip.superkabel.de [91.64.80.26])
	by gandharva.secretlabs.de (Postfix) with ESMTPSA id D2AA41B10C0D
	for <poky@yoctoproject.org>; Wed, 27 Jul 2011 13:18:12 +0000 (UTC)
Message-ID: <4E300DC0.9080507@freyther.de>
Date: Wed, 27 Jul 2011 15:08:16 +0200
From: Holger Hans Peter Freyther <holger@freyther.de>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.18) Gecko/20110617 Lightning/1.0b2 Thunderbird/3.1.11
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4E3008DA.8090401@freyther.de>
	<CA073376-0D42-400B-95A7-1A8D420353C1@dominion.thruhere.net>
	<4E300B32.5000808@freyther.de>
	<201107271401.47256.paul.eggleton@linux.intel.com>
In-Reply-To: <201107271401.47256.paul.eggleton@linux.intel.com>
X-Enigmail-Version: 1.1.1
Subject: Re: Another story of a non upstream user of poky
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
X-List-Received-Date: Wed, 27 Jul 2011 13:08:19 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/27/2011 03:01 PM, Paul Eggleton wrote:
> On Wednesday 27 July 2011 13:57:22 Holger Hans Peter Freyther wrote:
>> thanks, the problem is with meta-yocto in this case, there is
>> netbase_4.45.bbappend in there, so THISDIR is not what I think it is when
>> using it, or such.
> 
> THISDIR should be correct at parse time; if not, something's wrong. After 
> that, it won't of course. (Hence my use of := in my example; I suspect your 
> use of =. is why your example didn't work).

For koen I just wanted to day that I know that my bbappend was parsed (PRINC
and bogus stuff has effect on parsing)

THISDIR is set by the netbase_4.45.bbappend of meta-yocto, I assume that this
should not be done and one should use the form you proposed throughout the layers?


