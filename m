Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 950B3E00349; Thu,  3 Dec 2015 13:56:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DEF9E002F9
	for <poky@yoctoproject.org>; Thu,  3 Dec 2015 13:56:24 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Dec 2015 13:56:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,378,1444719600"; d="scan'208";a="833826541"
Received: from cquah-mobl5.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.135.68])
	by orsmga001.jf.intel.com with ESMTP; 03 Dec 2015 13:56:22 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: poky@yoctoproject.org, Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Date: Fri, 04 Dec 2015 10:56:18 +1300
Message-ID: <10353510.SMoQjafh4x@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.2.6-301.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <1447702637-1614-1-git-send-email-dagenaisj@sonatest.com>
References: <1447702637-1614-1-git-send-email-dagenaisj@sonatest.com>
MIME-Version: 1.0
Subject: Re: [PATCH 1/2] toolchain-shar-relocate: don't assume last state of env_setup_script is good
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
X-List-Received-Date: Thu, 03 Dec 2015 21:56:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 16 Nov 2015 14:37:16 Jean-Francois Dagenais wrote:
> From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
> 
> In the case where many environment-setup-* files exist, the incorrect
> filename might be lastly set in env_setup_script, which leads to
> incorrect behaviour for the initialization of native_sysroot.
> 
> The scenario I had was that our custom meta-toolchain-*.bb, which
> inherits populate_sdk, defined another environment-setup-* file to dump
> variable information for qt-creator. The file is named like so in order
> for the sdk shell script to pick it up and fix the SDK paths in the
> file. Since it (coincidentally) alphabetically comes after ...-core2, it
> was last set in env_setup_script and the grep OECORE_NATIVE_SYSROOT
> would simply be blank. The apparent symptom was "...relocate_sdk.py:
> Argument list too long" since the find command would not be searching in
> the right path.
> ---
>  meta/files/toolchain-shar-relocate.sh | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/meta/files/toolchain-shar-relocate.sh
> b/meta/files/toolchain-shar-relocate.sh index dfb8e16..bfcf52e 100644
> --- a/meta/files/toolchain-shar-relocate.sh
> +++ b/meta/files/toolchain-shar-relocate.sh
> @@ -1,3 +1,5 @@
> +#reset the env_setup_script value to the proper value
> +env_setup_script=$target_sdk_dir/environment-setup-@REAL_MULTIMACH_TARGET_S
> YS@ # fix dynamic loader paths in all ELF SDK binaries
>  native_sysroot=$($SUDO_EXEC cat $env_setup_script |grep
> 'OECORE_NATIVE_SYSROOT='|cut -d'=' -f2|tr -d '"') dl_path=$($SUDO_EXEC find
> $native_sysroot/lib -name "ld-linux*")

This patch was merged to master and has unfortunately broken 
buildtools-tarball which does not use the same environment setup script name.

(Additionally this patch was missing Signed-off-by and was sent to the wrong 
list - it should have gone to the openembedded-core@lists.openembedded.org 
list instead.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

