Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 351064C80594
	for <poky@yoctoproject.org>; Wed, 26 Jan 2011 15:25:29 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0QLRON2026453; Wed, 26 Jan 2011 21:27:25 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id neF5Kd8wFx25; Wed, 26 Jan 2011 21:27:24 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0QLRIEE026441
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Wed, 26 Jan 2011 21:27:20 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "dongxiao.xu" <dongxiao.xu@intel.com>
In-Reply-To: <4da3cd3c9adebd3279b376a1f7aa2a0353484ecd.1296023140.git.dongxiao.xu@intel.com>
References: <cover.1296023140.git.dongxiao.xu@intel.com>
	<4da3cd3c9adebd3279b376a1f7aa2a0353484ecd.1296023140.git.dongxiao.xu@intel.com>
Date: Wed, 26 Jan 2011 21:24:57 +0000
Message-ID: <1296077097.27814.4523.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] rm_work.bbclass: reserve 'image' folder when remove WORKDIR
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
X-List-Received-Date: Wed, 26 Jan 2011 21:25:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-01-26 at 14:30 +0800, poky-bounces@yoctoproject.org wrote:
> From: Dongxiao Xu <dongxiao.xu@intel.com>
> 
> After the implementation of per machine sysroot, do_populate_sysroot
> and do_package need to be re-run if we build two machines of one
> architecture (in case that sstate prebuilt result could not be reused
> for certain recipes). But if removing all the WORKDIR contents after
> the first macine build, the second machine's do_populate_sysroot and
> do_package will fail due to the missing of "image" directory.
> 
> Thus reserve 'image' folder when doing rm_work.

Whilst I understand the intent, this is just putting wallpaper over
cracks, sooner or later the crack will reappear, possibly worse than
before.

For example if you run "bitbake xxx -c install -f" for a target xxx
which has had rm_work run against it, the result will be a nasty error
in Poky.

OE's rm_work.bbclass is a little cleverer than ours and has this:

addhandler rmwork_stampfixing_eventhandler
python rmwork_stampfixing_eventhandler() {
    if bb.event.getName(e) == "StampUpdate":
        for (fn, task) in e.targets:
            if task == 'rm_work_all':
                continue
            stamp = "%s.do_rm_work" % e.stampPrefix[fn]
            if os.path.exists(stamp):
                dir = "%s.*" % e.stampPrefix[fn]
                bb.note("Removing stamps: " + dir)
                os.system('rm -f '+ dir)
}

which is intended to fix my specific example above. It won't fix the new
corner cases we've introduced with machine specific sysroots though. So
what do we do to fix this?

I'm actually tempted to tie together rm_work, sstate and the scenequeue.
When rm_work wipes out the workdir, it also migrates the stamps into
_setscene stamps as if the package had been installed by sstate. We'd
then remove the unpack, fetch, patch and so on stamps just leaving the
setscene varients. This would mean the above wouldn't be needed and most
things should "just work".

So to be specific, we'd take stamps like:

xxx-1.4.7-r3.do_compile
xxx-1.4.7-r3.do_configure
xxx-1.4.7-r3.do_fetch
xxx-1.4.7-r3.do_generate_toolchain_file
xxx-1.4.7-r3.do_install
xxx-1.4.7-r3.do_package.emenlow
xxx-1.4.7-r3.do_package_write
xxx-1.4.7-r3.do_package_write_ipk
xxx-1.4.7-r3.do_package_write_rpm
xxx-1.4.7-r3.do_patch
xxx-1.4.7-r3.do_populate_sysroot.emenlow
xxx-1.4.7-r3.do_setscene
xxx-1.4.7-r3.do_unpack

and end up with:

xxx-1.4.7-r3.do_package_setscene.emenlow
xxx-1.4.7-r3.do_package_write_ipk_setscene
xxx-1.4.7-r3.do_package_write_rpm_setscene
xxx-1.4.7-r3.do_populate_sysroot_setscene.emenlow

Does that sound reasonable?

Then both codepaths use the same underlying code and everything should
be fine apart from some hardcoded assumptions about stamp filenames
which we'll probably just have to live with for now. The function will
need to handle stamps including the taskhash too, e.g.:

xxx-1.4.7-r3.do_unpack.HASHHERE

Cheers,

Richard


