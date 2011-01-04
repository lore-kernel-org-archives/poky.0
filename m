Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4A1494C80FAD
	for <poky@yoctoproject.org>; Tue,  4 Jan 2011 07:43:56 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id AD967166025F; Tue,  4 Jan 2011 06:43:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id ACAF71660265;
	Tue,  4 Jan 2011 06:43:53 -0700 (MST)
Message-ID: <4D232419.1080005@mlbassoc.com>
Date: Tue, 04 Jan 2011 06:43:53 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Koen Kooi <koen@dominion.thruhere.net>
References: <1294079767-5931-1-git-send-email-koen@openembedded.org>
In-Reply-To: <1294079767-5931-1-git-send-email-koen@openembedded.org>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] sstate.bbclass: fix multimachine builds when	PACKAGE_ARCH = MACHINE_ARCH
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
X-List-Received-Date: Tue, 04 Jan 2011 13:43:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/03/2011 11:36 AM, Koen Kooi wrote:
> From: Koen Kooi<koen@dominion.thruhere.net>
>
> previously you could only build one set of packages for multiple machines:
>
> MACHINE=foo bitbake task-base
> MACHINE=bar bitbake task-base
>
> would only create task-base packages for foo, but not for both foo and bar.
> Doing MACHINE=bar bitbake task-base -c cleanall would remove the packages for foo.
>
> The solution is to use MULTIMACH_ARCH as suggested by Richard Purdie.
>
> Signed-off-by: Koen Kooi<koen@dominion.thruhere.net>

Acked by: Gary Thomas <gary@mlbassoc.com>

> ---
>   meta/classes/sstate.bbclass |    2 +-
>   1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta/classes/sstate.bbclass b/meta/classes/sstate.bbclass
> index 0ba130c..b6e6c92 100644
> --- a/meta/classes/sstate.bbclass
> +++ b/meta/classes/sstate.bbclass
> @@ -5,7 +5,7 @@ SSTATE_MANFILEBASE = "${SSTATE_MANIFESTS}/manifest-${SSTATE_PKGARCH}-"
>   SSTATE_MANFILEPREFIX = "${SSTATE_MANFILEBASE}${PN}"
>
>
> -SSTATE_PKGARCH    = "${BASE_PACKAGE_ARCH}"
> +SSTATE_PKGARCH    = "${MULTIMACH_ARCH}"
>   SSTATE_PKGSPEC    = "sstate-${PN}-${MULTIMACH_ARCH}${TARGET_VENDOR}-${TARGET_OS}-${PV}-${PR}-${SSTATE_PKGARCH}-${SSTATE_VERSION}-"
>   SSTATE_PKGNAME    = "${SSTATE_PKGSPEC}${BB_TASKHASH}"
>   SSTATE_PKG        = "${SSTATE_DIR}/${SSTATE_PKGNAME}"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

