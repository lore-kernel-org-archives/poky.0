Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 771534C803D6
	for <poky@yoctoproject.org>; Tue, 15 Mar 2011 12:24:34 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 15 Mar 2011 10:24:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,188,1299484800"; d="scan'208";a="667523171"
Received: from unknown (HELO [10.255.12.143]) ([10.255.12.143])
	by fmsmga002.fm.intel.com with ESMTP; 15 Mar 2011 10:24:31 -0700
Message-ID: <4D7FA0CE.8000306@linux.intel.com>
Date: Tue, 15 Mar 2011 10:24:30 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1300167046.git.kai.kang@windriver.com>
	<3497d99d8f4a865204e1c334dd797bff54511e7d.1300167046.git.kai.kang@windriver.com>
In-Reply-To: <3497d99d8f4a865204e1c334dd797bff54511e7d.1300167046.git.kai.kang@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] slang: export INST_LIB_DIR to fix compile problems
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
X-List-Received-Date: Tue, 15 Mar 2011 17:24:34 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Kang,

Sorry about this, one other things was noticed about your use of FILES 
below, please see that comment.

Sau!

On 03/14/2011 10:36 PM, Kang Kai wrote:
> From: Kang Kai<kai.kang@windriver.com>
>
> Export "INST_LIB_DIR" in do_install to slang/slsh to fix cross compile warnings
> Fix [YOCTO #812]
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
This should be:
FILES_${PN} += "${datadir}/slsh"

This change will ensure correct path names.

Sau!

