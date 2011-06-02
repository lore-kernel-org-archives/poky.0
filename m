Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 51C5B4C800A1
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 09:22:51 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 0DD5716601E1; Thu,  2 Jun 2011 08:22:50 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id AD8C316601C8;
	Thu,  2 Jun 2011 08:22:47 -0600 (MDT)
Message-ID: <4DE79CB7.8070300@mlbassoc.com>
Date: Thu, 02 Jun 2011 08:22:47 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Chris Larson <clarson@kergoth.com>
References: <4DE79508.7010305@mlbassoc.com>
	<BANLkTikZXYszA=Z_amB+-m-TV+Bru4my0A@mail.gmail.com>
In-Reply-To: <BANLkTikZXYszA=Z_amB+-m-TV+Bru4my0A@mail.gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Duplicated error messages
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
X-List-Received-Date: Thu, 02 Jun 2011 14:22:53 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/02/2011 08:17 AM, Chris Larson wrote:
> On Thu, Jun 2, 2011 at 6:50 AM, Gary Thomas<gary@mlbassoc.com>  wrote:
>> I just ran 'bitbake core-image-minimal' on a new machine, running a fresh
>> install of
>> Fedora 15.  I got some errors at the start about missing pieces, but the
>> build carried on:
>>   ERROR:  Poky's config sanity checker detected a potential misconfiguration.
>>     Either fix the cause of this error or at your own risk disable the
>> checker (see sanity.conf).
>>     Following is the list of potential problems / advisories:
>>
>>     Please install following missing utilities: help2man,texi2html,hg,chrpath
>>
>> Fair enough, I'll install those.  As I said, the build carried on, but
>
> This is my fault -- at least, the continuing on is. As a part of
> working on improving the exception handling in bitbake, the behavior
> of exceptions in event handlers was changed.  We should likely change
> it back for the SystemExit case, or add a more explicit method for
> event handlers to communicate with bitbake proper. Sorry about that.

Thanks.  Even if this is not the desired behaviour (bitbake used to just quit
at the start when this happened), it is pointing out two other problems;
the duplicated error messages (I'd look for why this happens, but I really
wouldn't know where to start) and the less than helpful Python traceback.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

