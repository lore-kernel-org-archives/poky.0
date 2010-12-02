Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 519BC4C80052
	for <poky@yoctoproject.org>; Thu,  2 Dec 2010 08:41:23 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 064EC166083C; Thu,  2 Dec 2010 07:41:23 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 60C3D166083F;
	Thu,  2 Dec 2010 07:41:21 -0700 (MST)
Message-ID: <4CF7B011.20902@mlbassoc.com>
Date: Thu, 02 Dec 2010 07:41:21 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1291135878.git.paul.eggleton@linux.intel.com>	<201012021413.15532.paul.eggleton@linux.intel.com>	<4CF7AA43.2070503@mlbassoc.com>
	<201012021436.16462.paul.eggleton@linux.intel.com>
In-Reply-To: <201012021436.16462.paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] sanity.bbclass: add check for creation of long filenames
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
X-List-Received-Date: Thu, 02 Dec 2010 14:41:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/02/2010 07:36 AM, Paul Eggleton wrote:
> On Thursday 02 December 2010 14:16:35 Gary Thomas wrote:
>> On 12/02/2010 07:13 AM, Paul Eggleton wrote:
>>> On Thursday 02 December 2010 12:21:06 Gary Thomas wrote:
>>>> Is this information cached?  It's seems quite the burden
>>>> to have to create/remove ~400 files each time on startup.
>>>
>>> I'm not sure what you mean - this check (well, all sanity checks) should only occur once per invocation of bitbake.
>>
>> Precisely what I mean.  The computed max length won't change
>> unless you move the tmp or sstate-cache directories, so recomputing
>> it every time you run bitbake is a horrible overhead.
>
> It would also change if the filesystem where TMPDIR or SSTATE_DIR is stored changes, which could occur without the path itself changing, e.g. someone switches over their home directory to be encrypted. It would be possible to cache this check based on the filesystem and path, but is it really worth it given that we would have to read the disk to check if these had changed anyway? I do understand we have to be careful about items we add to the sanity checks, but in this instance we're talking about writing one file - something that should take a matter of milliseconds.

It looks like I misunderstood your code - it's only creating
one file per directory, so that's OK.

Sorry for the bother

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

