Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 979EEE013AB
	for <poky@yoctoproject.org>; Fri, 16 Mar 2012 11:29:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 39239F81262; Fri, 16 Mar 2012 12:29:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8C744F8120D;
	Fri, 16 Mar 2012 12:29:37 -0600 (MDT)
Message-ID: <4F638691.6020803@mlbassoc.com>
Date: Fri, 16 Mar 2012 12:29:37 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <4F63546E.4000407@mlbassoc.com> <4F635D1A.2030304@mlbassoc.com>
In-Reply-To: <4F635D1A.2030304@mlbassoc.com>
Subject: Re: Can't build web-webkit
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
X-List-Received-Date: Fri, 16 Mar 2012 18:29:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-03-16 09:32, Gary Thomas wrote:
> On 2012-03-16 08:55, Gary Thomas wrote:
>> I'm getting an error fetching for meta/recipes-sato/web/web-webkit_git.bb
>> I tried running the clone by hand:
>>
>> $ git clone git://git.yoctoproject.org/web-webkit
>> Cloning into 'web-webkit'...
>> fatal: remote error: access denied or repository not exported: /web-webkit

Filed as bug #2135

>>
>> Query: I have a tar package of this (I built it yesterday! using only that)
>> Why is the fetcher trying to go to the network for it now?
>>
>> Note: if I populate ${BUILD}/downloads/git2/git.yoctoproject.org.web-webkit
>> from my tarball, the build succeeds without problems.
>
> It seems that something has changed in the fetcher (git) code
>
> I was previously using (which works with no network activity)
> commit 8f07bdc0a42dd7a7c3acf5d1b13220dbc98c8017
> Author: Richard Purdie <richard.purdie@linuxfoundation.org>
> Date: Wed Feb 29 16:27:21 2012 +0000
>
> Now I'm using (which fails)
> commit be0f9dd483af2a2f55b2ae8ef9ca172e7c90819c
> Author: Paul Eggleton <paul.eggleton@linux.intel.com>
> Date: Thu Mar 15 13:17:58 2012 +0000
>
> Any ideas where I should look?
>

I've bisected this to this commit:
   commit 87ef82dead665ea8805ccbab8ef871dc20008701
   Author: Richard Purdie <richard.purdie@linuxfoundation.org>
   Date:   Tue Dec 6 22:20:11 2011 +0000

     bitbake/fetch: Fix uri_replace

Richard - Any ideas what might have broken in your changes?  Whatever this
change does, it breaks the use of a pre-staged tarball for git trees (at least)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

