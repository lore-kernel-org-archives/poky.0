Return-Path: <scott.a.garman@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0B194C80A74
	for <poky@yoctoproject.org>; Fri,  3 Dec 2010 22:58:26 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Dec 2010 20:58:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,297,1288594800"; d="scan'208";a="580459381"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga002.jf.intel.com with ESMTP; 03 Dec 2010 20:58:26 -0800
Received: from [10.255.13.202] (10.255.13.202) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Fri, 3 Dec 2010 21:58:26 -0700
Message-ID: <4CF9CA70.9060107@intel.com>
Date: Fri, 3 Dec 2010 20:58:24 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1291035335.git.rpurdie@linux.intel.com>
	<a3ec07a2417519432c4dc9d64f6f1b0df1169fa4.1291035335.git.rpurdie@linux.intel.com>
In-Reply-To: <a3ec07a2417519432c4dc9d64f6f1b0df1169fa4.1291035335.git.rpurdie@linux.intel.com>
Subject: Re: [PATCH 1/3] imagetest-qemu: Allow the task to run after any	rootfs is created and also standalone
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
X-List-Received-Date: Sat, 04 Dec 2010 04:58:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/2010 06:45 AM, Richard Purdie wrote:
> One bitbake invocation can cause multiple images to be generated. We should test
> each one and we cna do this by running after the rootfs task. Running the tests
> standlone is also still possible with a new separate standlone task.
>
> Signed-off-by: Richard Purdie<rpurdie@linux.intel.com>

Acked-by: Scott Garman <scott.a.garman@intel.com>

(with Jiajun's modification)

> ---
>   meta/classes/imagetest-qemu.bbclass |   19 ++++++++++++++-----
>   1 files changed, 14 insertions(+), 5 deletions(-)
>
> diff --git a/meta/classes/imagetest-qemu.bbclass b/meta/classes/imagetest-qemu.bbclass
> index 07bdf01..3c1586e 100644
> --- a/meta/classes/imagetest-qemu.bbclass
> +++ b/meta/classes/imagetest-qemu.bbclass
> @@ -1,8 +1,3 @@
> -addtask qemuimagetest before do_build
> -# after do_rootfs
> -do_qemuimagetest[nostamp] = "1"
> -do_qemuimagetest[depends] += "qemu-native:do_populate_sysroot"
> -
>   # Test related variables
>   # By default, TEST_DIR is created under WORKDIR
>   TEST_DIR ?= "${WORKDIR}/qemuimagetest"
> @@ -12,6 +7,20 @@ TEST_TMP ?= "${TEST_DIR}/tmp"
>   TEST_SCEN ?= "sanity"
>
>   python do_qemuimagetest() {
> +    qemuimagetest_main(d)
> +}
> +addtask qemuimagetest before do_build after do_rootfs
> +do_qemuimagetest[nostamp] = "1"
> +do_qemuimagetest[depends] += "qemu-native:do_populate_sysroot"
> +
> +python do_qemuimagetest_standalone() {
> +    qemuimagetest_main(d)
> +}
> +addtask qemuimagetest_standalone
> +do_qemuimagetest_standalone[nostamp] = "1"
> +do_qemuimagetest_standalone[depends] += "qemu-native:do_populate_sysroot"
> +
> +python qemuimagetest_main(d) {
>       import sys
>       import re
>       import os


-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

