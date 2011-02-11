Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id BDC974C80053
	for <poky@lists.pokylinux.org>; Fri, 11 Feb 2011 16:33:51 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 9B6FD166031F; Fri, 11 Feb 2011 15:33:51 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id AD8581660319;
	Fri, 11 Feb 2011 15:33:50 -0700 (MST)
Message-ID: <4D55B94E.9070700@mlbassoc.com>
Date: Fri, 11 Feb 2011 15:33:50 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4D55A061.8040901@mlbassoc.com> <1297461009.3188.4.camel@elmorro>
	<AANLkTinBo5qKwAPcCP2+MbgZ-CzCoDuO_HT-KB3+AwtK@mail.gmail.com>
In-Reply-To: <AANLkTinBo5qKwAPcCP2+MbgZ-CzCoDuO_HT-KB3+AwtK@mail.gmail.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Useless syslogd
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
X-List-Received-Date: Fri, 11 Feb 2011 22:33:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2011 03:27 PM, Chris Larson wrote:
> On Fri, Feb 11, 2011 at 2:50 PM, Tom Zanussi<tom.zanussi@intel.com>  wrote:
>> On Fri, 2011-02-11 at 12:47 -0800, Gary Thomas wrote:
>>> ... at least out of the box.
>>>
>>> It seems that syslog is configured to store its messages in
>>> a buffer (memory only?) by default:
>>>
>>> $ cat meta/recipes-core/busybox/files/syslog.conf
>>> DESTINATION="buffer"            # log destinations (buffer file remote)
>>>     ...
>>>
>>> This doesn't seem very useful to me.  I know I can override this
>>> in my platform recipes, but I was just wondering what's the
>>> rationale?  Would it not make more sense to chose DESTINATION="file"?
>>> Otherwise, where do the messages go?  How can I see them?
>>>
>>
>> I think 'logread' is hooked up to read from the buffer, but it seems to
>> be broken at the moment...
>
> logread is indeed the way to access the circular buffer, though it
> does seem like operating against a file would be more consistent -- I
> think the original logic was that most of the targeted devices didn't
> have a writable area to put the logs, other than flash, if that, but
> using tmpfs seems just as good a solution and the logs can be read in
> a more traditional fashion..

Indeed. I hacked it before(*) so that /var/log could be ramdisk
and then rotate the logs to FLASH periodically.  Sadly, this
isn't supported out of the box (at least busybox's logrotate
insists on keeping the rotated files in /var/log), but I think
it's the best of both worlds.

(*) using an ad-hoc logrotate that could have the rotated files
end up in a directory other than /var/log

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

