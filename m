Return-Path: <gary@mlbassoc.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8BF194C8101B
	for <poky@lists.pokylinux.org>; Fri, 22 Oct 2010 12:55:53 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id 1386B12EC358; Fri, 22 Oct 2010 13:31:28 -0500 (CDT)
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by pug.o-hand.com (Postfix) with ESMTP id EE0A912EC27E
	for <poky@o-hand.com>; Fri, 22 Oct 2010 13:31:27 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 593EE1660357; Fri, 22 Oct 2010 11:55:51 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id D7F7416602EC;
	Fri, 22 Oct 2010 11:55:50 -0600 (MDT)
Message-ID: <4CC1D026.7050408@mlbassoc.com>
Date: Fri, 22 Oct 2010 11:55:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.9) Gecko/20100430 Fedora/3.0.4-2.fc11 Thunderbird/3.0.4
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CADD32A.9010908@mlbassoc.com>	 <1286462951.15840.6345.camel@rex>
	<4CADE06F.6040308@mlbassoc.com>	 <4CADFA77.3070305@mlbassoc.com>
	<1286475616.15840.6565.camel@rex>	 <4CAE54A1.1080803@mlbassoc.com>
	<1287755439.16386.736.camel@rex>	 <4CC199D1.3000309@mlbassoc.com>
	<1287757765.16386.771.camel@rex>
In-Reply-To: <1287757765.16386.771.camel@rex>
Cc: poky@o-hand.com
Subject: Re: SVN woes persist
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
X-List-Received-Date: Fri, 22 Oct 2010 17:55:53 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/2010 08:29 AM, Richard Purdie wrote:
> On Fri, 2010-10-22 at 08:04 -0600, Gary Thomas wrote:
>> Will do.
>>
>> Should this address the similar issue with GIT packages.  These seem
>> to be updating every time as well:
>>     git_github.com.wrpseudo.pseudo.git.tar.gz
>>     git_git.pokylinux.org.wr-kernel-tools.git.tar.gz
>>     git_git.pokylinux.org.prelink-cross.git.tar.gz
>
> There are changes in master which will stop everything except the
> linux-wrs recipe doing that. The linux-wrs recipe uses "fullclone" mode
> of the git fetcher and this has known issues which we will address soon.
>
> If anything other than linux-wrs is refreshing on master other than that
> recipe, let us know.

Looks good.  The one one that got updated today with a full build was pseudo
and that's because the pinned revision was changed since I last merged.

>> I'm still hoping for a way to have a static (no network needed) setup
>> soon.  I have to provide such in a training for some of my customers
>> in about a month :-)
>
> It is meant to work like that!

This part is working much better now, thanks.

Any progress on a way to hot-start things with the staged packages?
When last I tried it, it brought my system to its knees with no benefit
(see original message from 2010-10-07)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

