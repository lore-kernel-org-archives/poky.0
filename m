Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5243E015D0
	for <poky@yoctoproject.org>; Fri, 11 Oct 2013 04:23:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 839EDF81207; Fri, 11 Oct 2013 05:23:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DD274F81206;
	Fri, 11 Oct 2013 05:23:39 -0600 (MDT)
Message-ID: <5257DFBE.3050300@mlbassoc.com>
Date: Fri, 11 Oct 2013 05:23:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <7BDD69127112414F90CF3FED4711BF150D15A47EB5@IAD2MBX05.mex02.mlsrvr.com>
In-Reply-To: <7BDD69127112414F90CF3FED4711BF150D15A47EB5@IAD2MBX05.mex02.mlsrvr.com>
Subject: Re: Add single user
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
X-List-Received-Date: Fri, 11 Oct 2013 11:23:45 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2013-10-10 16:06, Michael Davis wrote:
> I am attempting to add a single user to my poky build.  I am trying to follow the useradd-example.bb layout but I cannot get bitbake to like it.  My bb file looks like so:
>
> SUMMARY = "Add a user"
>
> DESCRIPTION = "This recipe will add a new user"
>
> PR = "r0"
>
> LICENSE = "MIT"
>
> LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
>
> S = "${WORKDIR}"
>
> inherit useradd
>
> USERADD_PACKAGES = "${PN}"
>
> USERADD_PARAM_${PN} = "--disabled-password hal"
>
> do_install () {
>
>             chown -R hal ${D}${datadir}/hal
>
> }
>
> FILES_${PN} = "${datadir}/hal/*"
>
> I have the useradd package specified as a dependency for a package group which I am installing for my image.  When I bake, it attempts do_rootfs but fails and spits out a huge log
> after which it simple states that it couldn’t satisfy dependencies for my package group and and points the the useradd package.  Is there any obvious reason why such a simple
> recipe like this would not work?  Thanks

Your package is empty since the install step is not quite correct.
Try adding this line before 'chown'
   install -d ${D}${datadir}/hal

Also, I think you may need this:
   FILES_${PN} = "${datadir}/hal /home/hal"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

