Return-Path: <kpa_info@yahoo.fr>
Received: from nm10-vm0.bullet.mail.ird.yahoo.com
	(nm10-vm0.bullet.mail.ird.yahoo.com [77.238.189.90])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 4B2ADE0140C
	for <poky@yoctoproject.org>; Tue, 12 Jun 2012 07:35:33 -0700 (PDT)
Received: from [77.238.189.233] by nm10.bullet.mail.ird.yahoo.com with NNFMP;
	12 Jun 2012 14:35:32 -0000
Received: from [217.146.188.173] by tm14.bullet.mail.ird.yahoo.com with NNFMP;
	12 Jun 2012 14:35:32 -0000
Received: from [127.0.0.1] by smtp141.mail.ird.yahoo.com with NNFMP;
	12 Jun 2012 14:35:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1339511732; bh=C7jq4/swGSH2/aafHwaq29MrRjg4UnvRT5HE0k83Ky8=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type:Content-Transfer-Encoding;
	b=mmlwub+ufl8TMWHFBiaoJ3TLXgJj6GH9EYOrbpVIBN3BGgBBkoN28zlPa8jN26tLYWq1f8BT/vj+NDNXNqeomBJPPlSACFH8mRYFMVjna7nBBkPczCx9IPOVdCOwhPg7MKcWtvzezz06aG7flu/8qzSTNYN9vxCVAO7iW+YsjyE=
X-Yahoo-Newman-Id: 193419.26099.bm@smtp141.mail.ird.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: B5GuSSQVM1nTLlbhxS9JGN_fm.ULM22ZMen8.ZD3hXoamP3
	d5YIZw.wv_yP7w2Cca_k4HkOn3T.WIaPV24BwZ7dJdCS2DZbDbB6BOdGwXQh
	O_TJayVieiqNGcjB_8GANTI3HHmZCeMOywSkmFwZcinegUixU6ihGTYFyMGg
	Qitn7CHcEtjHeHXtp34MTno3RDug9JPz4TtWlmFgGHIoPHg2CReRors8yIrO
	N.dpefy7S21L_YAUSquMB_w8SFIazDuW.qSLwmVdqQcp1ZUntYxdoEjC2c3P
	EdialKF8dX0uFxITg._GrxlMiqOelVlmplluW30N87sJPQn9idleGokZaOCl
	InLkjWshLIFhIJbFZjj7vglAPrkUFp0Oq.OlNc8LH16cCYWRDenwlZsuMcg- -
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.59] (kpa_info@213.193.97.58 with plain)
	by smtp141.mail.ird.yahoo.com with SMTP; 12 Jun 2012 07:35:31 -0700 PDT
Message-ID: <4FD753B2.9060705@yahoo.fr>
Date: Tue, 12 Jun 2012 16:35:30 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Running script after installation (postinst)
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
X-List-Received-Date: Tue, 12 Jun 2012 14:35:33 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Dear all,

In one of our recipes we need to execute a small script after the 
installation of the package. Following yocto dev manual point 4.3.6 we 
have added a pkg_postinst function.

This doesn’t work properly as the script is executed at first start-up 
and not after installation. Below are an example of this recipe.

Do you have any idea why this script is started as first boot time and 
not after installation ?

Thanks in advance for any help !

Patrick


DESCRIPTION = "System modifications needed for System"
LICENSE = "MIT"
LIC_FILES_CHKSUM = 
"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
PACKAGE_ARCH = "${MACHINE_ARCH}"
ALLOW_EMPTY = "1"

PR = "r5"

RDEPENDS = "\
     rpm \
     "

pkg_postinst_task-system-tweaks () {
   #!/bin/sh -e

   #Mount tmprecovery at startup
   mkdir -p /tmprecovery
   mkdir -p /data
   echo "/dev/mtdblock6        /tmprecovery        yaffs2      0 0" >> 
/etc/fstab
   echo "/dev/mtdblock7        /data               yaffs2   noauto  0 0" 
 >> /etc/fstab
}


