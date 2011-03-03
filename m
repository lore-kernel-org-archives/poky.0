Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 166704C800A4
	for <poky@yoctoproject.org>; Thu,  3 Mar 2011 10:50:42 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id ACA42166052D; Thu,  3 Mar 2011 09:50:41 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8EE7A1660353;
	Thu,  3 Mar 2011 09:50:40 -0700 (MST)
Message-ID: <4D6FC6E0.3070303@mlbassoc.com>
Date: Thu, 03 Mar 2011 09:50:40 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <b9dded$i440ij@orsmga002.jf.intel.com>
In-Reply-To: <b9dded$i440ij@orsmga002.jf.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/2] module: build and clean hostprogs for each module
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
X-List-Received-Date: Thu, 03 Mar 2011 16:50:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/02/2011 11:00 AM, Darren Hart wrote:
> From: Darren Hart<dvhart@linux.intel.com>
>
> This fixes [BUGID #241]
>
> The kernel hostprogs are built for the host architecture. They should not
> be deployed with to the target, and they should not be included in an sstate
> package which might get reused on a host of a different architecture.
>
> As we don't build many out-of-tree modules, this patch takes the approach
> of building the hostprogs as part of the module compile process with a
> do_compile_prepend() routine in module.bbclass. To ensure the hostprogs
> don't contaminate the build, they are removed in do_install_append().
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Gary Thomas<gary@mlbassoc.com>

Sadly, this doesn't seem to work for me.  I don't see any indication in
run.do_compile that the extra steps were added at all.

Will it matter if my recipe overrides the do_compile() method?

> ---
>   meta/classes/module.bbclass |   21 ++++++++++++++++++++-
>   1 files changed, 20 insertions(+), 1 deletions(-)
>
> diff --git a/meta/classes/module.bbclass b/meta/classes/module.bbclass
> index d16d462..78f9b0a 100644
> --- a/meta/classes/module.bbclass
> +++ b/meta/classes/module.bbclass
> @@ -3,6 +3,15 @@ DEPENDS += "virtual/kernel"
>
>   inherit module-base
>
> +# Ensure the hostprogs are available for module compilation
> +module_do_compile_prepend() {
> +	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
> +	oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
> +	           -C ${STAGING_KERNEL_DIR} clean SUBDIRS=scripts
> +	oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
> +	           -C ${STAGING_KERNEL_DIR} scripts
> +}
> +
>   module_do_compile() {
>   	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
>   	oe_runmake KERNEL_PATH=${STAGING_KERNEL_DIR}   \
> @@ -15,7 +24,17 @@ module_do_compile() {
>
>   module_do_install() {
>   	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
> -	oe_runmake DEPMOD=echo INSTALL_MOD_PATH="${D}" CC="${KERNEL_CC}" LD="${KERNEL_LD}" modules_install
> +	oe_runmake DEPMOD=echo INSTALL_MOD_PATH="${D}" \
> +	           KERNEL_SRC=${STAGING_KERNEL_DIR} \
> +	           CC="${KERNEL_CC}" LD="${KERNEL_LD}" \
> +	           modules_install
> +}
> +
> +# Remove the hostprogs from the STAGING_KERNEL_DIR
> +module_do_install_append() {
> +	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS
> +	oe_runmake CC="${KERNEL_CC}" LD="${KERNEL_LD}" AR="${KERNEL_AR}" \
> +	           -C ${STAGING_KERNEL_DIR} clean SUBDIRS=scripts
>   }
>
>   pkg_postinst_append () {

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

