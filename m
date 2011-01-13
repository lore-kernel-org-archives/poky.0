Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E45D24C80050
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 14:02:39 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so2141923iyb.35
	for <poky@yoctoproject.org>; Thu, 13 Jan 2011 12:02:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=4XtiUlUzYdPTGiXBOdP+doOE8C0SU9fENiYJj+Ddf20=;
	b=IRCqSls3sFf0tUZvFAI7ynJP5bxS60Q71NA8dzor9xbK8sVE2Ki7Qci/k6TYTI5QeL
	6W8gb5Qa4efDJhx5iC1ajrQ+iR+YF2qV+wxJZPZ2mn6MzMZhvS4C7IcbiqCOyKRsfvCs
	3C/SpQmsAlWzLWtBLcVGNoj4seEPayaJvqIjU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=nkHd5bmE+BvVOSvQE2QS/jRJEQCLnauOItoJo3OBKqZ4ND99HYqmesGMh2y0WMhHe8
	MwlWHvcj53BmEazYUadYKnOG8sTjxHccMYDytfZ64RuQIbirlZMH0sHHFWzjlh+gCwFK
	SqMs90QoqhDl9EKV8mrllBRShLk3Sx5JHcriQ=
MIME-Version: 1.0
Received: by 10.231.32.76 with SMTP id b12mr2767584ibd.162.1294948956474; Thu,
	13 Jan 2011 12:02:36 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Thu, 13 Jan 2011 12:02:36 -0800 (PST)
In-Reply-To: <1294948532.22249.16.camel@elmorro>
References: <1294948532.22249.16.camel@elmorro>
Date: Thu, 13 Jan 2011 15:02:36 -0500
Message-ID: <AANLkTi=KsZ1L1O4VwNG+D8S9KtDVwMVz1KG46-AS9RRC@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [2.6.37 PATCH] wrs_meta: add systemtap feature for linux-yocto
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
X-List-Received-Date: Thu, 13 Jan 2011 20:02:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 13, 2011 at 2:55 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> Add a 'systemtap feature' that turns on the kernel options required
> for systemtap, a system-wide tracing tool.

Looks good. I'll merge this and the .37 one and push them out
tomorrow.

Cheers,

Bruce

>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
> =A0.../kernel-cache/features/systemtap/systemtap.cfg =A0| =A0 =A07 ++++++=
+
> =A0.../kernel-cache/features/systemtap/systemtap.scc =A0| =A0 =A01 +
> =A0meta/cfg/kernel-cache/ktypes/standard/standard.scc | =A0 =A03 +++
> =A03 files changed, 11 insertions(+), 0 deletions(-)
> =A0create mode 100644 meta/cfg/kernel-cache/features/systemtap/systemtap.=
cfg
> =A0create mode 100644 meta/cfg/kernel-cache/features/systemtap/systemtap.=
scc
>
> diff --git a/meta/cfg/kernel-cache/features/systemtap/systemtap.cfg b/met=
a/cfg/kernel-cache/features/systemtap/systemtap.cfg
> new file mode 100644
> index 0000000..26a5fc3
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/systemtap/systemtap.cfg
> @@ -0,0 +1,7 @@
> +CONFIG_KPROBES=3Dy
> +CONFIG_RELAY=3Dy
> +CONFIG_DEBUG_INFO=3Dy
> +CONFIG_DEBUG_FS=3Dy
> +CONFIG_MODULES=3Dy
> +CONFIG_MODULE_UNLOAD=3Dy
> +
> diff --git a/meta/cfg/kernel-cache/features/systemtap/systemtap.scc b/met=
a/cfg/kernel-cache/features/systemtap/systemtap.scc
> new file mode 100644
> index 0000000..9b8bd87
> --- /dev/null
> +++ b/meta/cfg/kernel-cache/features/systemtap/systemtap.scc
> @@ -0,0 +1 @@
> +kconf non-hardware systemtap.cfg
> diff --git a/meta/cfg/kernel-cache/ktypes/standard/standard.scc b/meta/cf=
g/kernel-cache/ktypes/standard/standard.scc
> index 8212465..f675bb6 100644
> --- a/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> +++ b/meta/cfg/kernel-cache/ktypes/standard/standard.scc
> @@ -16,6 +16,9 @@ tag kgdb
> =A0# include features/lttng/lttng.scc
> =A0# tag lttng
>
> +include features/systemtap/systemtap.scc
> +tag systemtap
> +
> =A0# include features/ocd/ocd.scc
> =A0# tag ocd
>
> --
> 1.7.0.4
>
>
>
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

