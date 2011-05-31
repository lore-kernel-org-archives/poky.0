Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 775CD4C800C0
	for <poky@yoctoproject.org>; Tue, 31 May 2011 14:09:09 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4VJ98A4028556
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 31 May 2011 12:09:09 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 31 May 2011 12:09:08 -0700
Message-ID: <4DE53CD3.3090708@windriver.com>
Date: Tue, 31 May 2011 14:09:07 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1306865217.git.scott.a.garman@intel.com>
	<ea3163ab446883b772207bf0600f0198a3041a7a.1306865217.git.scott.a.garman@intel.com>
In-Reply-To: <ea3163ab446883b772207bf0600f0198a3041a7a.1306865217.git.scott.a.garman@intel.com>
Subject: Re: [PATCH 5/7] useradd-example: example recipe for using inherit useradd
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
X-List-Received-Date: Tue, 31 May 2011 19:09:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

A few suggestions below to expand the example a bit.

On 5/31/11 1:13 PM, Scott Garman wrote:
> An example recipe for demonstrating/documenting how user and
> group manipulation is done with 'inherit useradd'
> 
> Signed-off-by: Scott Garman <scott.a.garman@intel.com>
> ---
>  .../recipes-skeleton/useradd/useradd-example.bb    |   59 ++++++++++++++++++++
>  1 files changed, 59 insertions(+), 0 deletions(-)
>  create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
>  create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file1
>  create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file2
>  create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file3
>  create mode 100644 meta-skeleton/recipes-skeleton/useradd/useradd-example/file4
> 
> diff --git a/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb b/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
> new file mode 100644
> index 0000000..1e6ae87
> --- /dev/null
> +++ b/meta-skeleton/recipes-skeleton/useradd/useradd-example.bb
> @@ -0,0 +1,59 @@
> +SUMMARY = "Example recipe for using inherit useradd"
> +DESCRIPTION = "This recipe serves as an example for using features from useradd.bbclass"
> +SECTION = "examples"
> +PR = "r0"
> +LICENSE = "MIT"
> +LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
> +                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> +
> +SRC_URI = "file://file1 \
> +           file://file2 \
> +           file://file3 \
> +           file://file4"
> +
> +S = "${WORKDIR}"
> +

Move the package's up here to be clearer what we're doing:

PACKAGES =+ "${PN}-user3"

> +inherit useradd
> +
> +# Specify which package(s) should include the user/group code.
> +# Make sure that any packages which install files owned by custom
> +# users/groups are included here. The code which adds users and
> +# groups is idempotent.
> +USERADD_PACKAGES = "useradd-example"

List two packages above:

USERADD_PACKAGES = "useradd-example ${PN}-user3"

> +
> +# You *must* set USERADD_PARAM and/or GROUPADD_PARAM when
> +# you inherit useradd.
> +
> +# USERADD_PARAM specifies command line options to pass to the
> +# useradd command. Multiple users can be created by separating
> +# the commands with a semicolon. Here we'll create two users,
> +# user1 and user3:
> +USERADD_PARAM_useradd-example = "-u 1200 -d /home/user1 -r -s /bin/bash user1; -u 1201 -d /home/user3 -r -s /bin/bash user3"

Break the above apart into:

USERADD_PARAM_useradd-example = "-u 1200 -d /home/user1 -r -s /bin/bash user1;
-u 1201 -d /home/user2 -r -s /bin/bash user2"

USERADD_PARAM_${PN}-user3 = "-u 1202 -d /home/user3 -r -s /bin/bash user3"

> +
> +# GROUPADD_PARAM works the same way, which you set to the options
> +# you'd normally pass to the groupadd command. This will create
> +# groups group1, group2, and group3:
> +GROUPADD_PARAM_useradd-example = "-g 880 group1; -g 890 group2; -g 900 group3"

GROUPADD_PARAM_useradd-example = "-g 880 group1; -g 890 group2"

GROUPADD_PARAM_${PN}-user3 = "-g 900 group3"

> +
> +do_install () {
> +	install -d -m 755 ${D}/usr/share/user1
> +	install -d -m 755 ${D}/usr/share/user3
> +	install -p -m 644 file1 ${D}/usr/share/user1/
> +	install -p -m 644 file2 ${D}/usr/share/user1/
> +	install -p -m 644 file3 ${D}/usr/share/user3/
> +	install -p -m 644 file4 ${D}/usr/share/user3/
> +
> +	# The new users and groups are created before the do_install
> +	# step, so you are now free to make use of them:

To match the above split:

> +	chown -R user1 ${D}/usr/share/user1
> +	chown -R user3 ${D}/usr/share/user3
> +	chgrp group1 ${D}/usr/share/user1/file1
> +	chgrp group3 ${D}/usr/share/user1/file2
> +	chgrp group1 ${D}/usr/share/user3/file3
> +	chgrp group3 ${D}/usr/share/user3/file4

	chown -R user1 ${D}/usr/share/user1
	chown -R user3 ${D}/usr/share/user3
	chgrp group1 ${D}/usr/share/user1/file1
	chgrp group2 ${D}/usr/share/user1/file2
	chgrp group3 ${D}/usr/share/user3/file3
	chgrp group3 ${D}/usr/share/user3/file4

Since the user1 added groups 1 and 2..  while user3 only has group 3....

> +}
> +
> +PACKAGES =+ "${PN}-user3"

Moved the above line, so remove it here.

> +
> +FILES_${PN} = "/usr/share/user1/*"
> +FILES_${PN}-user3 = "/usr/share/user3/*"

This should now produce two split packages.  Each having different users and
groups being added.

> diff --git a/meta-skeleton/recipes-skeleton/useradd/useradd-example/file1 b/meta-skeleton/recipes-skeleton/useradd/useradd-example/file1
> new file mode 100644
> index 0000000..e69de29
> diff --git a/meta-skeleton/recipes-skeleton/useradd/useradd-example/file2 b/meta-skeleton/recipes-skeleton/useradd/useradd-example/file2
> new file mode 100644
> index 0000000..e69de29
> diff --git a/meta-skeleton/recipes-skeleton/useradd/useradd-example/file3 b/meta-skeleton/recipes-skeleton/useradd/useradd-example/file3
> new file mode 100644
> index 0000000..e69de29
> diff --git a/meta-skeleton/recipes-skeleton/useradd/useradd-example/file4 b/meta-skeleton/recipes-skeleton/useradd/useradd-example/file4
> new file mode 100644
> index 0000000..e69de29


