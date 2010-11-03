Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 550014C80287
	for <poky@lists.pokylinux.org>; Wed,  3 Nov 2010 10:45:34 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0FA1916601E3; Wed,  3 Nov 2010 09:45:34 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 70ED516601C4;
	Wed,  3 Nov 2010 09:45:33 -0600 (MDT)
Message-ID: <4CD1839D.7070606@mlbassoc.com>
Date: Wed, 03 Nov 2010 09:45:33 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Saul Wold <saul.wold@intel.com>
References: <4CD16A8E.7090100@mlbassoc.com> <4CD1815D.8050105@intel.com>
In-Reply-To: <4CD1815D.8050105@intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Inconsistent timestamp use
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 15:45:35 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/03/2010 09:35 AM, Saul Wold wrote:
> On 11/03/2010 06:58 AM, Gary Thomas wrote:
>> The Poky root file system (init scripts) has a mechanism for
>> supporting systems without a working hardware [time of day] clock.
>> It seems that this has suffered some rot recently and is now
>> quite inconsistent:
>> * rootfs_update_timestamp() uses a different format for the time stamp
>> * the init scripts look for /etc/timestamp2, not /etc/timestamp which
>> is created with the image
>>
>> The attached patch makes this consistent and the system clock now works
>> much better (about as good as a machine without a hardware clock can!)
>>
>
> Hi Gary,
>
> This is a good change for the smaller images that use the busybox date
> function, but will break images that use the real date command.
> Unfortunately, they happen to use different formats for setting the time
> and date.
>
> It may be that we need 2 timestamp files, one for a busybox system and a
> second for the standard date command and then extend the check in the
> init scripts to figure out which date we are using currently.

Fair enough.  I was just trying to make what's there work consistently.

Perhaps it's good enough to remove the "-s" option from the setting
function and change back to the old format (+%m%d%H%M%Y).  I'm pretty
sure that the full-on date program will handle that, as does busybox.

Note: I think the change 41d02d40ed83c791e7a4c1d57d829d706af42e74 was
actually incorrect.  The proper change would have been to fix the
timestamp generation to be consistent.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

