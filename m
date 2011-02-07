Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 156B74C800B7
	for <poky@lists.pokylinux.org>; Mon,  7 Feb 2011 07:08:19 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 779551660270; Mon,  7 Feb 2011 06:08:18 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 33EA8166025E;
	Mon,  7 Feb 2011 06:08:17 -0700 (MST)
Message-ID: <4D4FEEC1.5080403@mlbassoc.com>
Date: Mon, 07 Feb 2011 06:08:17 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4D4EDF23.1010508@mlbassoc.com> <4D4F98A1.9030408@linux.intel.com>
In-Reply-To: <4D4F98A1.9030408@linux.intel.com>
Cc: Poky <poky@lists.pokylinux.org>
Subject: Re: Can't build mtd-utils-native
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
X-List-Received-Date: Mon, 07 Feb 2011 13:08:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/07/2011 12:00 AM, Darren Hart wrote:
> On 02/06/2011 09:49 AM, Gary Thomas wrote:
>> Using latest master 50387575ecdb05712958ea3c5caf023d6eb753ba
>> The recipe for mtd-utils-native fails to build, log attached.
>>
>> Any ideas how to fix this?
>>
>
> I hit this earlier... let me dig up the logs...
>
> Feb 03 14:25:35<dvhart>	RP__, I'll see if I can resolve this, but mtd_utils do_unpack fails with the new fetcher patch - I reverted it and was able to move past it
> Feb 03 14:25:44<dvhart>	git read-tree v1.4.1 failed with signal 128, output:
> Feb 03 14:25:44<dvhart>	| fatal: Not a valid object name v1.4.1
> Feb 03 14:30:38<RP__>	dvhart: Hmm, which patch did you revert to get past it?
> Feb 03 14:30:52<dvhart>	dfc5faf717ac1f917af398097d5295128548a55d
> Feb 03 14:31:00<dvhart>	which looking at - doesn't make a lot of sense
> Feb 03 14:31:00<--	juliefl has quit (Quit: Leaving.)
> Feb 03 14:31:22<RP__>	dvhart: no :/
> Feb 03 14:32:55<dvhart>	but the do_unpack log now reports success and the do_patch followed and completed
> Feb 03 14:33:11 *	dvhart kills, cleans, and rebuilds mtd_utils
> ...
> Feb 03 15:01:28<dvhart>	RP__, appears to have been a false alarm :/ sorry about that, can't explain it, but I'm not able to reproduce
>
> So, two things to try.
>
> 1) do a _full_ clean and try again
> $ bitbake -c cleanall mtd-utils-native
> $ rm -rf downloads/*mtd-utils* downloads/git/*mtd-utils* sstate-cache/*mtd-utils
> $ bitbake mtd-utils-native
>
> If you are still able to produce it,
>
> 2) try reverting the commit above
> $ git revert dfc5faf717ac1f917af398097d5295128548a55d
> followed by all the commands in step 1) above.
>
> Please let us know how it goes, if we have an elusive fetcher bug, we need all
> the details on it we can get.

Still fails.  Log attached.

Note: you can see that this GIT tree has been in my source
cache for a long time (since late 2009) and only now does
it cause problems.

  $ ls -l /work/misc/Poky/sources/git/git.infradead.org.mtd-utils.git/.git
total 92
-rw-r--r--  1 gthomas gthomas   735 Dec 24 07:06 FETCH_HEAD
-rw-r--r--  1 gthomas gthomas    23 Jan  7  2009 HEAD
drwxr-xr-x+ 2 gthomas gthomas  4096 Jan  7  2009 branches
-rw-r--r--  1 gthomas gthomas   262 Jan  7  2009 config
-rw-r--r--  1 gthomas gthomas    58 Jan  7  2009 description
drwxr-xr-x+ 2 gthomas gthomas  4096 Nov  1  2009 hooks
-rw-rw-rw-  1 gthomas gthomas 23387 Dec 24 07:06 index
drwxr-xr-x+ 2 gthomas gthomas  4096 Nov  1  2009 info
drwxr-xr-x+ 3 gthomas gthomas  4096 Nov  1  2009 logs
drwxr-xr-x+ 7 gthomas gthomas  4096 Dec 24 07:06 objects
-rw-r--r--  1 gthomas gthomas   401 Jan  7  2009 packed-refs
drwxr-xr-x+ 5 gthomas gthomas  4096 Nov  1  2009 refs

Also, the tag in question is there.

When I removed it from my source cache, the fetch/unpack worked fine.
Interestingly, what is being cached seems to have changed (but I don't
think the recipe has).  Perhaps this has something to do with the error
I was seeing.

$ ls -ltr /work/misc/Poky/sources/*mtd*
-rw-r--r-- 1 gthomas gthomas  339413 Aug 23  2008 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_b995f89a81589be8d8a41c374a6df109d0ee12b3.tar.gz
-rw-r--r-- 1 gthomas gthomas      32 Oct 12  2009 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_9845d92440bd87739c89edd000fd6e0c47fab185.tar.gz.md5
-rw-r--r-- 1 gthomas gthomas  283980 Oct 12  2009 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_9845d92440bd87739c89edd000fd6e0c47fab185.tar.gz
-rw-rw-r-- 1 gthomas gthomas  409433 Oct 13  2009 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_ea429635388f7bb53f62c41ec3d5ccf5fa207370.tar.gz
-rw-r--r-- 1 gthomas gthomas      32 Jan  5  2010 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_ea429635388f7bb53f62c41ec3d5ccf5fa207370.tar.gz.md5
-rw-r--r-- 1 gthomas gthomas      32 Jun 29  2010 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_b995f89a81589be8d8a41c374a6df109d0ee12b3.tar.gz.md5
-rw-r--r-- 1 gthomas gthomas  424036 Sep 28 18:42 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_v1.3.1.tar.gz
-rw-rw-rw- 1 gthomas gthomas  422807 Dec 24 07:06 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_v1.4.1.tar.gz
-rw-r--r-- 1 gthomas gthomas      32 Jan 17 08:04 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_v1.3.1.tar.gz.md5
-rw-rw-rw- 1 gthomas gthomas      32 Feb  2 11:03 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git_v1.4.1.tar.gz.md5
-rw-rw-rw- 1 gthomas gthomas      32 Feb  7 05:49 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git.tar.gz.md5
-rw-rw-rw- 1 gthomas gthomas 1371209 Feb  7 05:49 /work/misc/Poky/sources/git_git.infradead.org.mtd-utils.git.tar.gz

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

