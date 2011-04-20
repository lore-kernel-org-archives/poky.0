Return-Path: <ke.yu@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 61C614C80581
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 10:21:48 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Apr 2011 08:21:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,247,1301900400"; d="scan'208";a="681561284"
Received: from kyu3-desk.ccr.corp.intel.com (HELO [10.238.154.142])
	([10.238.154.142])
	by fmsmga002.fm.intel.com with ESMTP; 20 Apr 2011 08:21:47 -0700
Message-ID: <4DAEFA0A.9020701@intel.com>
Date: Wed, 20 Apr 2011 23:21:46 +0800
From: Yu Ke <ke.yu@intel.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <33AB447FBD802F4E932063B962385B355290F3F9@shsmsx501.ccr.corp.intel.com>
	<1303296330.5518.308.camel@rex>
In-Reply-To: <1303296330.5518.308.camel@rex>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: On Bug 972 - tag does not work in git fetcher
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
X-List-Received-Date: Wed, 20 Apr 2011 15:21:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

on 2011-4-20 18:45, Richard Purdie wrote:
> On Wed, 2011-04-20 at 15:51 +0800, Yu, Ke wrote:
>> I get the root cause of bug 972
>> (http://bugzilla.pokylinux.org/show_bug.cgi?id=972) , and want to get
>> your comments on how to fix the bug.
>>
>> the culprit of this bug is commit
>> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=5920e85c561624e657c126df58f5c378a8950bbc :
>> "
>> bitbake/fetch2/git: Ensure unresolved branches are translated into
>> revisions
>>
>> Signed-off-by: Richard Purdie<richard.purdie@linuxfoundation.org>
>>
>> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
>> index 6bcc4a4..f05a360 100644
>> --- a/bitbake/lib/bb/fetch2/git.py
>> +++ b/bitbake/lib/bb/fetch2/git.py
>> @@ -72,7 +72,8 @@ class Git(FetchMethod):
>>           ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
>>
>>           for name in ud.names:
>> -            if not ud.revisions[name] or ud.revisions[name] == "master":
>> +            # Ensure anything that doesn't look like a sha256 checksum/revision is translated into one
>> +            if not ud.revisions[name] or len(ud.revisions[name]) != 40  or (False in [c in "abcdef0123456789" for c in ud.revisions[name]]):
>>                   ud.revisions[name] = self.latest_revision(url, ud, d, name)
>>
>>           ud.localfile = ud.clonedir
>> "
>> with this commit, tag is treated as invalid revision since it is not
>> sha256 checksum, so tag become unusable.
>>
>> To fix it,  one option is to revert this commit, another option is to
>> check if ud.revisions[name] is tag. I prefer the first option to
>> revert this commit, because if user set incorrect revision, reporting
>> error to user would be better.  In this case user have chance to fix
>> it. the above commit actually hide the error from user which sound not
>> good.
>>
>> On the other hand, I don't remember the purpose of this commit, so
>> want to get your comment to make sure not breaking other things.
>
> The reason for the change was because there were problems being able to
> detect if the checkout needed updating or not. To correctly detect that
> we need a sha256 ID in the revisions field else need_update() doesn't
> work correctly amongst other problems.

Could you elaborate more on the problem that the non sha256 ID may 
cause?  I am curious in which case need_update() will not work correctly.

Regards
Ke

>
> The real problem is that we're having a hard time figuring out if that
> field refers to a tag or a branch, "master" is the latter for example.
> The question is then whether we're happy to take the local value in any
> local checkout or whether we want to check the upstream repository in
> case its changed. Currently we play it safe and use ls-remote to figure
> it out but that means network access.
>
> I think what we need to do is if this is a name, we should, set
> ud.branches[name] to be ud.revisions[name] (i.e. the tag) and treat it
> like a branch name for the purposes of the ls-remote command. It won't
> be perfect as it requires network access to resolve it but it should get
> the tag parameter working again. So the code would become:
>
>              if not ud.revisions[name] or len(ud.revisions[name]) != 40  or (False in [c in "abcdef0123456789" for c in ud.revisions[name]]):
>                  ud.branches[name] = ud.revisions[name]
>                  ud.revisions[name] = self.latest_revision(ud.url, ud, d,  name)
>
> Cheers,
>
> Richard
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>


