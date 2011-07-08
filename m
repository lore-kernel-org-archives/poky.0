Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 173EE4C804D4
	for <poky@pokylinux.org>; Fri,  8 Jul 2011 15:44:44 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QfHuk-00068F-H4
	for poky@pokylinux.org; Fri, 08 Jul 2011 22:44:42 +0200
Received: from 178.128.117.245.dsl.dyn.forthnet.gr ([178.128.117.245])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 08 Jul 2011 22:44:42 +0200
Received: from gmane by 178.128.117.245.dsl.dyn.forthnet.gr with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 08 Jul 2011 22:44:42 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 08 Jul 2011 23:44:26 +0300
Organization: Reliable Embedded Systems
Message-ID: <iv7q7b$sqj$1@dough.gmane.org>
References: <4E14A686.5020104@linux.intel.com> <1310035173.20015.820.camel@rex>
	<4E15F6FD.6020809@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: 178.128.117.245.dsl.dyn.forthnet.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Thunderbird/3.1.10
In-Reply-To: <4E15F6FD.6020809@linux.intel.com>
Subject: Re: build performance: bb-matrix on 4-core (BB_NUMBER_THREADS and PARALLEL_MAKE optimization)
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Jul 2011 20:44:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Darren/Richard,

Maybe we could instead of hacking hard coded default values (or nothing)
into the config file default to something like this:

somehow get the number of CPUs:

CPUS=$(grep ^processor /proc/cpuinfo | wc -l)
echo CPUS=${CPUS}

or

CPUS=`getconf _NPROCESSORS_ONLN`
echo CPUS_UBUNTU=${CPUS_UBUNTU}

(don't know if the second one will also work with other distros than Ubuntu)

Do some calculation which magic number for BB_NUMBER_THREADS and
PARALLEL_MAKE to use:

e.g. what was suggested: BB=2*NR_CORES PM=1.5*NR_CORES

Regards,

Robert
...For every complex problem there is a solution which is simple, neat
and wrong. -- H.L. Mencken

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



