Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id C125F4C80053
	for <poky@lists.pokylinux.org>; Fri, 11 Feb 2011 16:26:11 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 93FEB16602D2; Fri, 11 Feb 2011 15:26:10 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D05C41660260;
	Fri, 11 Feb 2011 15:26:09 -0700 (MST)
Message-ID: <4D55B781.5040004@mlbassoc.com>
Date: Fri, 11 Feb 2011 15:26:09 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <4D55A061.8040901@mlbassoc.com> <1297461009.3188.4.camel@elmorro>
In-Reply-To: <1297461009.3188.4.camel@elmorro>
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
X-List-Received-Date: Fri, 11 Feb 2011 22:26:12 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2011 02:50 PM, Tom Zanussi wrote:
> On Fri, 2011-02-11 at 12:47 -0800, Gary Thomas wrote:
>> ... at least out of the box.
>>
>> It seems that syslog is configured to store its messages in
>> a buffer (memory only?) by default:
>>
>> $ cat meta/recipes-core/busybox/files/syslog.conf
>> DESTINATION="buffer"            # log destinations (buffer file remote)
>>     ...
>>
>> This doesn't seem very useful to me.  I know I can override this
>> in my platform recipes, but I was just wondering what's the
>> rationale?  Would it not make more sense to chose DESTINATION="file"?
>> Otherwise, where do the messages go?  How can I see them?
>>
>
> I think 'logread' is hooked up to read from the buffer, but it seems to
> be broken at the moment...

Thanks for pointing this out.  It does seem to work (minimal
test), but I still prefer a file, especially since the buffer
mode seems to use a circular buffer that could get overwritten.

At least I have an easy way to define my own config file.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

