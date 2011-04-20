Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id B08D54C8016A
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 05:45:55 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3KAjrNL016329;
	Wed, 20 Apr 2011 11:45:53 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15991-07; Wed, 20 Apr 2011 11:45:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3KAjhOU016322
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 20 Apr 2011 11:45:44 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Yu, Ke" <ke.yu@intel.com>
In-Reply-To: <33AB447FBD802F4E932063B962385B355290F3F9@shsmsx501.ccr.corp.intel.com>
References: <33AB447FBD802F4E932063B962385B355290F3F9@shsmsx501.ccr.corp.intel.com>
Date: Wed, 20 Apr 2011 11:45:30 +0100
Message-ID: <1303296330.5518.308.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Wed, 20 Apr 2011 10:45:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-04-20 at 15:51 +0800, Yu, Ke wrote:
> I get the root cause of bug 972
> (http://bugzilla.pokylinux.org/show_bug.cgi?id=972) , and want to get
> your comments on how to fix the bug.
> 
> the culprit of this bug is commit
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=5920e85c561624e657c126df58f5c378a8950bbc :
> "
> bitbake/fetch2/git: Ensure unresolved branches are translated into
> revisions
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> 
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 6bcc4a4..f05a360 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -72,7 +72,8 @@ class Git(FetchMethod):
>          ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
>  
>          for name in ud.names:
> -            if not ud.revisions[name] or ud.revisions[name] == "master":
> +            # Ensure anything that doesn't look like a sha256 checksum/revision is translated into one
> +            if not ud.revisions[name] or len(ud.revisions[name]) != 40  or (False in [c in "abcdef0123456789" for c in ud.revisions[name]]):
>                  ud.revisions[name] = self.latest_revision(url, ud, d, name)
>  
>          ud.localfile = ud.clonedir
> "
> with this commit, tag is treated as invalid revision since it is not
> sha256 checksum, so tag become unusable. 
> 
> To fix it,  one option is to revert this commit, another option is to
> check if ud.revisions[name] is tag. I prefer the first option to
> revert this commit, because if user set incorrect revision, reporting
> error to user would be better.  In this case user have chance to fix
> it. the above commit actually hide the error from user which sound not
> good.
> 
> On the other hand, I don't remember the purpose of this commit, so
> want to get your comment to make sure not breaking other things.

The reason for the change was because there were problems being able to
detect if the checkout needed updating or not. To correctly detect that
we need a sha256 ID in the revisions field else need_update() doesn't
work correctly amongst other problems.

The real problem is that we're having a hard time figuring out if that
field refers to a tag or a branch, "master" is the latter for example.
The question is then whether we're happy to take the local value in any
local checkout or whether we want to check the upstream repository in
case its changed. Currently we play it safe and use ls-remote to figure
it out but that means network access.

I think what we need to do is if this is a name, we should, set
ud.branches[name] to be ud.revisions[name] (i.e. the tag) and treat it
like a branch name for the purposes of the ls-remote command. It won't
be perfect as it requires network access to resolve it but it should get
the tag parameter working again. So the code would become:

            if not ud.revisions[name] or len(ud.revisions[name]) != 40  or (False in [c in "abcdef0123456789" for c in ud.revisions[name]]):
                ud.branches[name] = ud.revisions[name]
                ud.revisions[name] = self.latest_revision(ud.url, ud, d,  name)

Cheers,

Richard



