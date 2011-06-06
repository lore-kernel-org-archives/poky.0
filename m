Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A211C4C801BF
	for <poky@yoctoproject.org>; Mon,  6 Jun 2011 10:53:06 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4D4D316601F0; Mon,  6 Jun 2011 09:53:06 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 974CE16601A6;
	Mon,  6 Jun 2011 09:53:05 -0600 (MDT)
Message-ID: <4DECF7E1.3020509@mlbassoc.com>
Date: Mon, 06 Jun 2011 09:53:05 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <4DECE9B8.9020107@mlbassoc.com> <4DECF124.3040004@linux.intel.com>
In-Reply-To: <4DECF124.3040004@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: opkg problem
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
X-List-Received-Date: Mon, 06 Jun 2011 15:53:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/06/2011 09:24 AM, Saul Wold wrote:
> On 06/06/2011 07:52 AM, Gary Thomas wrote:
>> Something has changed recently in my images:
>> # opkg update
>> Collected errors:
>> * opkg_conf_load: Could not create lock file /var/lib/opkg/lock: No such
>> file or directory.
>> Actually, it seems that the whole of /var/lib/opkg (databases, etc) have
>> gone missing. Shouldn't this get populated as the rootfs image is created?
>>
>> In any case, any ideas where /var/lib/opkg might have vanished to?
>>
> Gary,
>
> Depending on what image you are building, you may need to add "package-managment" into your IMAGE_FEATURES list. This is due the to the change from Phil B.
> (87780fc09b066525e47d0f50ee5497db54d304cd).

Yes, it does fix my problem.  I think that change is a bit incomplete
though, as it has deleted the databases used by opkg, but opkg still
remains.  One gets the same error as above when just booting in this case.
It would seem to me that if package-management is turned off (and hence
the databases removed), then the tool(s) should be removed as well.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

