Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3D09E4C80AAC
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 20:17:15 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Mar 2011 18:17:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,319,1297065600"; d="scan'208";a="720160745"
Received: from unknown (HELO [10.255.12.143]) ([10.255.12.143])
	by orsmga001.jf.intel.com with ESMTP; 14 Mar 2011 18:17:14 -0700
Message-ID: <4D7EBE19.6080603@linux.intel.com>
Date: Mon, 14 Mar 2011 18:17:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1300083112.git.kai.kang@windriver.com>
	<c5b7a3123701d8cee64c1606643a8ad8709ccbd2.1300083112.git.kai.kang@windriver.com>
In-Reply-To: <c5b7a3123701d8cee64c1606643a8ad8709ccbd2.1300083112.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] PATCH: fix Bug 812 about slang
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
X-List-Received-Date: Tue, 15 Mar 2011 01:17:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Kang,

The proper first line of a commit (commit subject line) should contain 
the package name followed by what you have done in this commit.

Also, the bug # should not be in the first line, it should be in the 
Body of the commit message in the [YOCTO #XXX] format.

So your commit message should read something like:

slang: Export INST_LIB_DIR in do_install to fix compile problems

Export "INST_LIB_DIR" to slang/slsh to fix cross compile warnings
Fixes [YOCTO #812]

Signed-off-by: Kang Kai<kai.kang@windriver.com>


Sau!


On 03/13/2011 11:29 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Export "INST_LIB_DIR" to slang/slsh to fix cross compile warnings
>
> Add necessary files to run slsh.
>
> Signed-off-by: Kang Kai<kai.kang@windriver.com>
> ---
>   meta/recipes-extended/slang/slang_2.2.2.bb |    8 +++++++-
>   1 files changed, 7 insertions(+), 1 deletions(-)
>
> diff --git a/meta/recipes-extended/slang/slang_2.2.2.bb b/meta/recipes-extended/slang/slang_2.2.2.bb
> index 7fe76af..8459e24 100644
> --- a/meta/recipes-extended/slang/slang_2.2.2.bb
> +++ b/meta/recipes-extended/slang/slang_2.2.2.bb
> @@ -10,7 +10,7 @@ to recode S-Lang procedures in C if you need to."
>   SECTION = "libs"
>   PRIORITY = "optional"
>   DEPENDS = "pcre"
> -PR = "r0"
> +PR = "r1"
>
>   LICENSE = "GPL Artistic"
>   LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
> @@ -23,3 +23,9 @@ inherit autotools
>
>   SRC_URI[md5sum] = "974437602a781cfe92ab61433dd16d03"
>   SRC_URI[sha256sum] = "cfaf8551fa3855f9b0043309bb553ef6d457f931b404df5a6ba6a5a69371fc42"
> +
> +do_install() {
> +	oe_runmake install DESTDIR=${D} -e 'INST_LIB_DIR=${STAGING_DIR_HOST}/usr/lib'
> +}
> +
> +FILES_${PN} += "/usr/share/slsh/"

