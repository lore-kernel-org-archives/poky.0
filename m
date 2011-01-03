Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 46D064C8109B
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 13:05:26 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p03J6vt5001403; Mon, 3 Jan 2011 19:06:57 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id tStHS5jc-ThM; Mon,  3 Jan 2011 19:06:57 +0000 (GMT)
Received: from [192.168.1.42] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p03J6nCF001370
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 3 Jan 2011 19:06:52 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
References: <cover.1294076797.git.dvhart@linux.intel.com>
	<208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
Date: Mon, 03 Jan 2011 19:04:55 +0000
Message-ID: <1294081495.17519.20236.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/4] kernelshark: add ftrace gui viewer
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
X-List-Received-Date: Mon, 03 Jan 2011 19:05:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2010-12-28 at 17:10 -0800, Darren Hart wrote:
> trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> new file mode 100644
> index 0000000..781f983
> --- /dev/null
> +++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> @@ -0,0 +1,22 @@
> +DESCRIPTION = "Graphical trace viewer for Ftrace"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
> +                    file://kernelshark.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"
> +
> +PR = r0
> +PV = "1.0.4+git${SRCPV}"
> +
> +DEPENDS = "gtk+"
> +RDEPENDS = "trace-cmd"

This should be RDEPENDS_${PN} I suspect. We need to be clear about which
package has the runtime dependency.

> +inherit pkgconfig
> +
> +SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/trace-cmd.git;protocol=git"
> +SRCREV = "${SRCREV_pn-trace-cmd}"

I'd suggest declaring that alongside the trace-cmd SRCREV definition,
something like:

TRACECMDREV ?= "xxx"
SRCREV_pn-trace-cmd ?= "${TRACECMDREV}"
SRCREV_pn-kernelshark ?= "${TRACECMDREV}"

> +S = "${WORKDIR}/git"
> +
> +EXTRA_OEMAKE = "'CC=${CC}' 'AR=${AR}' 'prefix=${prefix}' gui"
> +
> +do_install() {
> +	oe_runmake CC="${CC}" AR="${AR}" prefix="${prefix}" DESTDIR="${D}" install_gui
> +}

Cheers,

Richard



