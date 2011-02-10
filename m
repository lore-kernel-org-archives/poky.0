Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 493EB4C800AB
	for <poky@lists.pokylinux.org>; Thu, 10 Feb 2011 08:46:13 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id EDE181660264; Thu, 10 Feb 2011 07:46:12 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4EF0816601A3;
	Thu, 10 Feb 2011 07:46:12 -0700 (MST)
Message-ID: <4D53FA34.4000105@mlbassoc.com>
Date: Thu, 10 Feb 2011 07:46:12 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4D533BCA.9000902@mlbassoc.com> <1297301826.20543.1722.camel@rex>
In-Reply-To: <1297301826.20543.1722.camel@rex>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: git tarballs gone?
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
X-List-Received-Date: Thu, 10 Feb 2011 14:46:13 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2011 06:37 PM, Richard Purdie wrote:
> On Wed, 2011-02-09 at 18:13 -0700, Gary Thomas wrote:
>> I just noticed that with the new fetcher, git tarballs are
>> no longer being created.
>>     * Is this expected?
>>     * Can it be [re]enabled?  This is a great help to me so I
>>       can distribute pre-staged sources to my customers. Tarballs
>>       are much more convenient than .git repositories.
>
> Its expected, just set BB_GENERATE_MIRROR_TARBALLS = "1" in local.conf
> to generate them if you need them.
>
> As standard the average user doesn't need/use/want them and the fetcher
> no longer needs them so we don't generate them by default any more.

What would I need to do to get them generated?  Here's what I
tried (which did not work):

* I noticed that my build used git.pokylinux.org.matchbox-terminal, so

... set BB_GENERATE_MIRROR_TARBALLS in local.conf
% bitbake matchbox-terminal -c clean
% rm -f sstate-cache/*matchbox-terminal*
% bitbake matchbox-terminal

It seemed happy to use the stored GIT in downloads/git2/git.pokylinux.org.matchbox-terminal,
but did not generate a tarball during the process.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

