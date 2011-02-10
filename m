Return-Path: <eha@dev.doredevelopment.dk>
Received: from public.doredevelopment.dk (unknown [77.233.226.4])
	by mx1.pokylinux.org (Postfix) with ESMTP id 187064C800AB;
	Fri, 11 Feb 2011 03:59:06 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by public.doredevelopment.dk (Postfix) with ESMTP id E471140FF;
	Fri, 11 Feb 2011 10:59:05 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at dev.doredevelopment.dk
Received: from public.doredevelopment.dk ([127.0.0.1])
	by localhost (public.doredevelopment.dk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id JbNj9CmNT3yS; Fri, 11 Feb 2011 10:58:53 +0100 (CET)
Received: from [192.168.18.32] (eha.doredevelopment.dk [192.168.18.32])
	by public.doredevelopment.dk (Postfix) with ESMTP id 0E26390F;
	Fri, 11 Feb 2011 10:58:52 +0100 (CET)
From: Esben Haabendal <eha@dev.doredevelopment.dk>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <a80cd52437e3b3874ea0196d31127f14cf486f2f.1297232632.git.bruce.ashfield@windriver.com>
References: <cover.1297232632.git.bruce.ashfield@windriver.com>
	<a80cd52437e3b3874ea0196d31127f14cf486f2f.1297232632.git.bruce.ashfield@windriver.com>
Organization: =?ISO-8859-1?Q?Dor=E9Development?= ApS
Date: Thu, 10 Feb 2011 22:06:01 +0100
Message-ID: <1297371961.3911.1.camel@eha>
Mime-Version: 1.0
X-Mailer: Evolution 2.30.3 
Cc: yocto@yoctoproject.org, poky@yoctoproject.org, saul.wold@intel.com
Subject: Re: [PATCH 1/3] linux: factor dts/dtc/dtb handling into a specific include
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
X-List-Received-Date: Fri, 11 Feb 2011 09:59:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-02-09 at 01:27 -0500, Bruce Ashfield wrote:
> diff --git a/meta/recipes-kernel/linux/linux-dtb.inc b/meta/recipes-kernel/linux/linux-dtb.inc
> new file mode 100644
> index 0000000..0b27d18
> --- /dev/null
> +++ b/meta/recipes-kernel/linux/linux-dtb.inc
> @@ -0,0 +1,27 @@
> +# Support for device tree generation
> +FILES_kernel_devicetree = "/boot/devicetree*"

I guess that should be FILES_kernel-devicetree to actually match the
package name.

> +KERNEL_DEVICETREE_FLAGS = "-R 8 -p 0x3000"
> +
> +python __anonymous () {
> +    import bb
> +
> +    devicetree = bb.data.getVar("KERNEL_DEVICETREE", d, 1) or ''
> +    if devicetree:
> +	depends = bb.data.getVar("DEPENDS", d, 1)
> +	bb.data.setVar("DEPENDS", "%s dtc-native" % depends, d)
> +	packages = bb.data.getVar("PACKAGES", d, 1)
> +	bb.data.setVar("PACKAGES", "%s kernel-devicetree" % packages, d)
> +}
> +
> +do_install_append() {
> +    if test -n "${KERNEL_DEVICETREE}"; then
> +	dtc -I dts -O dtb ${KERNEL_DEVICETREE_FLAGS} -o devicetree ${KERNEL_DEVICETREE}
> +	install -m 0644 devicetree ${D}/boot/devicetree-${KERNEL_VERSION}
> +	install -d ${DEPLOY_DIR_IMAGE}
> +	install -m 0644 devicetree ${DEPLOY_DIR_IMAGE}/${KERNEL_IMAGE_BASE_NAME}.dtb
> +	cd ${DEPLOY_DIR_IMAGE}
> +	rm -f ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
> +	ln -sf ${KERNEL_IMAGE_BASE_NAME}.dtb ${KERNEL_IMAGE_SYMLINK_NAME}.dtb
> +    fi
> +}
> +



