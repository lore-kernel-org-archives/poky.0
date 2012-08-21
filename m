Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 011EFE0027E
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 10:12:05 -0700 (PDT)
Received: by eabd1 with SMTP id d1so15726eab.35
	for <poky@yoctoproject.org>; Tue, 21 Aug 2012 10:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=yDSuSjex+KKHE2B4Ot4iw50OBwxJ2zKqQntMOs1/gRc=;
	b=lVrNGiOgi9U/+LMs2EijXSIJHEFIpn97RFSzpNMf/YarvTriZS1ZmQDrr1KgtDMe5L
	sBnJvmeom7dQnZINuZ1Tua3H3GGVNXABh87eD8RWilJknXQvVcLlx7WRoou9D0iPzk/N
	rIgAxs/hx3gFTY//uNzeb+Iy0u44RumKEC9KpIU097KCV0OJfERZ1Q9s3cB6FdEecg+y
	ypuFwm9UYgiRyBiQU7mT/o+ZC735rbDeNeh9K4PPHP1XamsR59FByEYsyfhmoqIKEWiq
	6g3am0nq6wYu1Lk4arkqkfy/QoJ+0m+/BAkVU0kSNgIucoL0U82VFZ8NltdxUrfUveO+
	4rig==
Received: by 10.14.211.3 with SMTP id v3mr14328141eeo.43.1345569124414; Tue,
	21 Aug 2012 10:12:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Tue, 21 Aug 2012 10:11:34 -0700 (PDT)
In-Reply-To: <05d539a9494fad9e5a84891631abe046c16b3063.1345566425.git.dvhart@linux.intel.com>
References: <05d539a9494fad9e5a84891631abe046c16b3063.1345566425.git.dvhart@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 21 Aug 2012 10:11:34 -0700
Message-ID: <CAMKF1spA=W_i3jHGCM1nvp6kTXgLdSwkrHyvaUt8gD1icxJbUA@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Richard Purdie <richard.purdie@intel.com>, Poky <poky@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: [PATCH V3] README: Clarify where to send patches
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 21 Aug 2012 17:12:06 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 21, 2012 at 9:27 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> There is still a great deal of confusion over where patches for the
> various components of the poky repository should be sent. Attempt to
> mitigate this by including a blurb in the poky README similar to what
> other layers and repositories do.
>
> V2: Call out the special care required when dealing with the scripts
>     directory per Saul Wold's recommendation.
>
> V3: Recommend applying patches to oe-core prior to sending patches to
>     the oe-core mailing list.
>
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Richard Purdie <richard.purdie@intel.com>
> CC: Paul Gortmaker <paul.gortmaker@windriver.com>
> CC: Paul Eggleton <paul.eggleton@linux.intel.com>
> CC: Khem Raj <raj.khem@gmail.com>
> ---
>  README | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/README b/README
> index 06b1ea6..5084853 100644
> --- a/README
> +++ b/README
> @@ -27,3 +27,23 @@ DISTRO = "") and contains only emulated machine support.
>  For information about OpenEmbedded, see the OpenEmbedded website:
>      http://www.openembedded.org/
>
> +Where to Send Patches
> +=====================
> +
> +As Poky is an integration repository, patches against the various components
> +should be sent to their respective upstreams.
> +
> +bitbake:
> +    bitbake-devel@lists.openembedded.org
> +
> +meta-yocto:
> +    poky@yoctoproject.org
> +
> +Most everything else should be sent to the OpenEmbedded Core mailing list.  If
> +in doubt, check the oe-core git repository for the content you intend to modify.
> +Before sending, be sure the patches apply cleanly to the current oe-core git
> +repository.
> +    openembedded-core@lists.openembedded.org
> +
> +Note: The scripts directory should be treated with extra care as it is a mix
> +      of oe-core and poky-specific files.


Looks good.


> --
> 1.7.11.2
>

