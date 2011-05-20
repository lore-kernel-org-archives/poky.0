Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 141CF4C80052
	for <poky@yoctoproject.org>; Fri, 20 May 2011 11:30:49 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so2547740pzk.35
	for <poky@yoctoproject.org>; Fri, 20 May 2011 09:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=Z8Jl3873w/mDlWkO9LgC8Zekn94XkKvNI/JhOdPLCas=;
	b=Wt8WnGy+oj7BPhINhnoz/7NzmYp4yK69/bOk3p7OhDUG5PUjGs/+LDFM4fjFDYCauD
	KLfNAcwQRtQ+tg/PoZxx+23K0GPcW9qK/KROSHbId5nJdZguWajMu1Vly2Gqh6PekwGu
	T+n8+6no5u71KTGKWkBudBMFM5yPf3wtxnVI0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=fRUV/RtpdxnqJpx/qEB5S7eWdn3TxTIMOS7xiNrjjB83MtAh7+HnUX2SmYggNi/QYM
	ensfscDp/XaMWmi36o/6dM6vPBTHnMavzezM2PazvWhXtEBeQqDwLLW6pWhv/tQfxNM+
	edsoDt8VPHx7ROeBO1dryaPC9C/+oP6wFBdqA=
Received: by 10.142.126.18 with SMTP id y18mr2737347wfc.361.1305909048544;
	Fri, 20 May 2011 09:30:48 -0700 (PDT)
Received: from [192.168.1.82] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id k7sm3367156wfa.14.2011.05.20.09.30.45
	(version=SSLv3 cipher=OTHER); Fri, 20 May 2011 09:30:47 -0700 (PDT)
Message-ID: <4DD6973B.4020708@gmail.com>
Date: Fri, 20 May 2011 09:30:51 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1305508488.git.ke.yu@intel.com>
	<95d6b08eb7982baacb334d6d774a204670b1ca1c.1305508488.git.ke.yu@intel.com>
In-Reply-To: <95d6b08eb7982baacb334d6d774a204670b1ca1c.1305508488.git.ke.yu@intel.com>
Subject: Re: [PATCH 1/1] git fetcher: add support for rebaseable git repo
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
X-List-Received-Date: Fri, 20 May 2011 16:30:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 5/15/2011 6:16 PM, Yu Ke wrote:
> From: Yu Ke<ke.yu@intel.com>
>
> Some upstream git repo may rebase in the future, which means current
> revision may disappear from the upstream repo after the rebase.
>
> current git fetcher can not handle this case, because the git mirror
> tar ball is per repo, and may also change in the rebase and lost the
> current revision info.
>
> To fix this issue, this patch
> - add rebaseable tag in the SRC_URI
> - for rebaseable repo, make git mirror tar ball per revision, in this
>    case, even upstream rebase, the git mirror still has the current
>    revision info.
> - for rebaseable repo, generate mirror tar ball by default, since the
>    repo may change in the future.

Do we have the options to SRC_URI documented somewhere ?
if yes then this should be added there too.

>
> Signed-off-by: Yu Ke<ke.yu@intel.com>
> ---
>   bitbake/lib/bb/fetch2/git.py |   28 ++++++++++++++++++++--------
>   1 files changed, 20 insertions(+), 8 deletions(-)
>
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 811acbf..82721c6 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -57,6 +57,11 @@ class Git(FetchMethod):
>           if 'nocheckout' in ud.parm:
>               ud.nocheckout = True
>
> +        # rebaseable means the upstream git repo may rebase in the future,
> +        # and current revision may disappear from upstream repo
> +        # rebaseable is false by default. set rebaseable=1 in SRC_URI if rebaseable.
> +        ud.rebaseable = ud.parm.get("rebaseable","0") == "1"
> +
>           branches = ud.parm.get("branch", "master").split(',')
>           if len(branches) != len(ud.names):
>               raise bb.fetch2.ParameterError("The number of name and branch parameters is not balanced", ud.url)
> @@ -65,16 +70,9 @@ class Git(FetchMethod):
>               branch = branches[ud.names.index(name)]
>               ud.branches[name] = branch
>
> -        gitsrcname = '%s%s' % (ud.host, ud.path.replace('/', '.'))
> -        ud.mirrortarball = 'git2_%s.tar.gz' % (gitsrcname)
> -        ud.fullmirror = os.path.join(data.getVar("DL_DIR", d, True), ud.mirrortarball)
> -        ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
> -
>           ud.basecmd = data.getVar("FETCHCMD_git", d, True) or "git"
>
> -        ud.write_tarballs = (data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True) or "0") != "0"
> -
> -        ud.localfile = ud.clonedir
> +        ud.write_tarballs = ((data.getVar("BB_GENERATE_MIRROR_TARBALLS", d, True) or "0") != "0") or ud.rebaseable
>
>           ud.setup_revisons(d)
>
> @@ -84,6 +82,20 @@ class Git(FetchMethod):
>                   ud.branches[name] = ud.revisions[name]
>                   ud.revisions[name] = self.latest_revision(ud.url, ud, d, name)
>
> +        gitsrcname = '%s%s' % (ud.host, ud.path.replace('/', '.'))
> +        # for rebaseable git repo, it is necessary to keep mirror tar ball
> +        # per revision, so that even the revision disappears from the
> +        # upstream repo in the future, the mirror will remain intact and still
> +        # contains the revision
> +        if ud.rebaseable:
> +            for name in ud.names:
> +                gitsrcname = gitsrcname + '_' + ud.revisions[name]
> +        ud.mirrortarball = 'git2_%s.tar.gz' % (gitsrcname)
> +        ud.fullmirror = os.path.join(data.getVar("DL_DIR", d, True), ud.mirrortarball)
> +        ud.clonedir = os.path.join(data.expand('${GITDIR}', d), gitsrcname)
> +
> +        ud.localfile = ud.clonedir
> +
>       def localpath(self, url, ud, d):
>           return ud.clonedir
>


