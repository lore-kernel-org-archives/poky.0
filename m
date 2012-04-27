Return-Path: <kpa_info@yahoo.fr>
Received: from nm2.bullet.mail.ird.yahoo.com (nm2.bullet.mail.ird.yahoo.com
	[77.238.189.59])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 93BCEE006C7
	for <poky@yoctoproject.org>; Fri, 27 Apr 2012 07:59:07 -0700 (PDT)
Received: from [77.238.189.48] by nm2.bullet.mail.ird.yahoo.com with NNFMP;
	27 Apr 2012 14:59:06 -0000
Received: from [217.146.188.161] by tm1.bullet.mail.ird.yahoo.com with NNFMP;
	27 Apr 2012 14:59:06 -0000
Received: from [127.0.0.1] by smtp129.mail.ird.yahoo.com with NNFMP;
	27 Apr 2012 14:59:06 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1335538746; bh=3/N6zGmcSMT5PSJijTp6kPBz8jZUZpjBQY5vTh9k58A=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=N/l5MxV/6rIiq1CvNJDllLWtGw8liQg3CdyUJba77IGc7h+gmqKAKT/Oa9DBclPcgAWBBeZSMEyz6NRDNhRaQQGe8hxy8KUWUHpRXOBPCbbYQVtYsMFbtOkfOKbsI04ybyb+ii+TfeD5RBXyLdBffJmMwTwLmu7v6rbVbFeX8tM=
X-Yahoo-Newman-Id: 360032.31246.bm@smtp129.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: eq2YjJoVM1mbo76qAei0iuNuupunfZy0f5F1iXQuATUqkhF
	A4Gbj5SuusMmx4C.SaieafQankY3c2wUC1LDyWK_ebsxeWcK8FS.WpcV9Yur
	Gry.FDGM8Zejx15rkNDlvvsm5DY4rFaH4WXGFF_IOtgOAB6TPHoMcIpPumR5
	r2u8.xZNiPWfMML15GdAa7eCJruo_vCIe7GCJ5FdlW36Vz43WCma2qjuzw8J
	LTIk7JmAEqhphmWkMLEUNg_e3HIPwK_hLcZ8XmpZONxOILIWFC_dZG0wg5B0
	EoN.t.1y2xg1atmSrratCpFHQtZPz946Pkq2Bij9PKNAfb8L58hScUFLyh80
	S4zL1jeHCw0RwT3NicBtEWwarFTp01ry4F2YADENs7GdF1euDG5efvBlpGin
	X5nr0n465LkuvlgAOTR9rrIGJufDYAJmK9PaTSRTsOpTpfoFsav541Q0699F
	.EBBCFOg1W2z34XbCkxXDBI604t_zHDncRUhPvA--
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [192.168.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp129.mail.ird.yahoo.com with SMTP; 27 Apr 2012 07:59:06 -0700 PDT
Message-ID: <4F9AB437.1040404@yahoo.fr>
Date: Fri, 27 Apr 2012 16:59:03 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120412 Thunderbird/11.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Compiling sp-rtrace
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
X-List-Received-Date: Fri, 27 Apr 2012 14:59:08 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear mailing-list,

I am trying to include the sp-rtrace tool 
(http://maemo.gitorious.org/maemo-tools/sp-rtrace) in my Poky image.
I have made the beginning of a receipe but I am facing some problems.

Does any one have already tried to build this tool ?

Below is the receipes that I have made. He is not working and 
compilation crash with a strange conflict when linking.
This tool need the demangle.h file that is not included in this project. 
I have found that gdb have a similar file, this is why I have made the 
dirty hack of the last line...

Thanks in advance for your help

Patrick

--------------------------------------------

DESCRIPTION = "sp-rtrace provides function tracing for different 
resource types and the traced data post-processing and visualization 
tools. "
HOMEPAGE = "http://maemo.gitorious.org/maemo-tools/sp-rtrace"
LICENSE = "GPLv2 & GPLv2+"
LIC_FILES_CHKSUM = 
"file://COPYING.GPL;md5=4325afd396febcb659c36b49533135d4 \
                     
file://COPYING.LGPL;md5=3214f080875748938ba060314b4f727d"

PR = "r0"
DEPENDS = "binutils gdb"

SRC_URI = "git://gitorious.org/maemo-tools/sp-rtrace.git"
SRCREV = "4d2870b43a9ae45b47be8701622b9baf7a534d6e"

S = "${WORKDIR}/git"

inherit autotools gettext

EXTRA_OECONF = "--build=arm"
CFLAGS_prepend = "-fPIC -I../../../gdb-7.3a-r4.0/gdb-7.3/include/"




