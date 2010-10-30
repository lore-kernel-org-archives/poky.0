Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E49D44C80287
	for <poky@pokylinux.org>; Sat, 30 Oct 2010 03:17:57 -0500 (CDT)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id o9U8Hutg003414
	for <poky@pokylinux.org>; Sat, 30 Oct 2010 01:17:57 -0700 (PDT)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 30 Oct 2010 01:17:56 -0700
Received: from Macintosh-5.local ([147.11.233.6]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Sat, 30 Oct 2010 01:17:56 -0700
Message-ID: <4CCBD4B3.1090300@windriver.com>
Date: Sat, 30 Oct 2010 09:17:55 +0100
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.11) Gecko/20101013 Thunderbird/3.1.5
MIME-Version: 1.0
To: poky@pokylinux.org
References: <AANLkTikxFm-z7tUAJV8zMvxOqQ3u3A9GbaSdJy0yuJjr@mail.gmail.com>
In-Reply-To: <AANLkTikxFm-z7tUAJV8zMvxOqQ3u3A9GbaSdJy0yuJjr@mail.gmail.com>
X-OriginalArrivalTime: 30 Oct 2010 08:17:57.0126 (UTC)
	FILETIME=[F5562260:01CB780A]
Subject: Re: do_rootfs() RPM error message
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Sat, 30 Oct 2010 08:17:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Please file a bug in the bugzilla.yoctoproject.org and attach the patch.  I'll 
get it generated as soon as I get back to the states from CELF.

--Mark

On 10/29/10 8:48 PM, Rob Woolley wrote:
> Hi,
>
> I ran into a minor build system glitch and wanted to share the
> workaround I used.
>
> I was following the steps in the Poky quick start guide.  When the
> build got to the do_rootfs() task, the rpm command complained on all
> packages with:
>
>   	installing package<PKG>  needs 125MB on the /boot filesystem
>
> My /boot partition is only 100MB which is what triggered the problem.
>
> However, since the disk space on the host filesystem is irrelevant for
> assembling the rootfs for the target, I added --ignoresize to the rpm
> line that triggered the problem.
>
> I suspect that it's related to the fact that rpm -U was used with
> --justdb and without --root.  It may be needed on similar rpm calls as
> well.
>
> Once I made the change my build completed successfully.
>
> Cheers,
> Rob
>
> diff --git a/meta/classes/rootfs_rpm.bbclass b/meta/classes/rootfs_rpm.bbclass
> index 6e9cbba..ceab7c9 100644
> --- a/meta/classes/rootfs_rpm.bbclass
> +++ b/meta/classes/rootfs_rpm.bbclass
> @@ -80,7 +80,7 @@ fakeroot rootfs_rpm_do_rootfs () {
>          # an actual package install!
>          ${RPM} -D "_dbpath ${IMAGE_ROOTFS}/install" -D "`cat
> ${DEPLOY_DIR_RPM}/solvedb.macro`" \
>                  -D "__dbi_cdb create mp_mmapsize=128Mb mp_size=1Mb nofsync" \
> -               -U --justdb --noscripts --notriggers --noparentdirs
> --nolinktos \
> +               -U --justdb --noscripts --notriggers --noparentdirs
> --nolinktos --ignoresize \
>                  ${IMAGE_ROOTFS}/install/install.manifest
>
>          if [ ! -z "${PACKAGE_INSTALL_ATTEMPTONLY}" ]; then
> _______________________________________________
> poky mailing list
> poky@pokylinux.org
> https://lists.pokylinux.org/listinfo/poky


